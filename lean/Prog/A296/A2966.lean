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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

/-!
# A296601: L.g.f.: -log(Product_{k>=1} (1 - k*x^k)^k) = Sum_{n>=1} a(n)*x^n/n.

The programs for A296601, the canonical program `A296601.P17544975070527074905` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296601 has offset 1).

The definition of A296601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 623 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296601.P17544975070527074905

`∑{d}[n+1, ((n+1)/#)^(#+2)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296601

/-- `∑{d}[n+1, ((n+1)/#)^(#+2)]` -/
def P17544975070527074905.Spec : Prop :=
  ∀ n, P17544975070527074905.a n = (A296601 (n + 1) : ℚ)

end A296601

/-! ## A296601.P7500150417802468998

`A308502(∑[n+3]+1)`
-/

namespace A296601.P7500150417802468998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296601.P7500150417802468998

namespace A296601

/-- `A308502(∑[n+3]+1)` -/
def P7500150417802468998.Spec : Prop :=
  ∀ n, P7500150417802468998.a n = A296601 (n + 1)

end A296601

/-! ## A296601.P1482632716446948215

`or(A000007(n), A308502(A034856(n+2)))`
-/

namespace A296601.P1482632716446948215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A308502 (A034856 (n + 2)).toNat)

end

end A296601.P1482632716446948215

namespace A296601

/-- `or(A000007(n), A308502(A034856(n+2)))` -/
def P1482632716446948215.Spec : Prop :=
  ∀ n, P1482632716446948215.a n = A296601 (n + 1)

end A296601

/-! ## A296601.P1025173693716755166

`abs(A308502(A034856(n+2))-A000038(n))`
-/

namespace A296601.P1025173693716755166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308502 (A034856 (n + 2)).toNat - A000038 n|

end

end A296601.P1025173693716755166

namespace A296601

/-- `abs(A308502(A034856(n+2))-A000038(n))` -/
def P1025173693716755166.Spec : Prop :=
  ∀ n, P1025173693716755166.a n = A296601 (n + 1)

end A296601

/-! ## A296601.P2303285029274305488

`A018252(gcd(n, n+1))*A308502(A034856(n+2))`
-/

namespace A296601.P2303285029274305488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A308502 (A034856 (n + 2)).toNat

end

end A296601.P2303285029274305488

namespace A296601

/-- `A018252(gcd(n, n+1))*A308502(A034856(n+2))` -/
def P2303285029274305488.Spec : Prop :=
  ∀ n, P2303285029274305488.a n = A296601 (n + 1)

end A296601

/-! ## A296601.P18248283404617580163

`A308502(A034856(n+2))+A055672(A055672(n))`
-/

namespace A296601.P18248283404617580163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (A034856 (n + 2)).toNat + A055672 (A055672 n).toNat

end

end A296601.P18248283404617580163

namespace A296601

/-- `A308502(A034856(n+2))+A055672(A055672(n))` -/
def P18248283404617580163.Spec : Prop :=
  ∀ n, P18248283404617580163.a n = A296601 (n + 1)

end A296601

/-! ## A296601.P2961281089582054113

`A014963(A000217(n+6))*A308502(A034856(n+2))`
-/

namespace A296601.P2961281089582054113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A308502 (A034856 (n + 2)).toNat

end

end A296601.P2961281089582054113

namespace A296601

/-- `A014963(A000217(n+6))*A308502(A034856(n+2))` -/
def P2961281089582054113.Spec : Prop :=
  ∀ n, P2961281089582054113.a n = A296601 (n + 1)

end A296601

/-! ## A296601.P13178463340922485981

`A308502(A034856(n+2))+A008683(8*A316620(n+1))`
-/

namespace A296601.P13178463340922485981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (A034856 (n + 2)).toNat + A008683 (8 * A316620 (n + 1)).toNat

end

end A296601.P13178463340922485981

namespace A296601

/-- `A308502(A034856(n+2))+A008683(8*A316620(n+1))` -/
def P13178463340922485981.Spec : Prop :=
  ∀ n, P13178463340922485981.a n = A296601 (n + 1)

end A296601

/-!
# A296602: Values of F for which there is a unique convex polyhedron with F faces that are all regular polygons.

The programs for A296602, there is no canonical definition to state claims against.
-/

/-! ## A296602.P9394654821475680705

`eq[1, A180916(n+1)]+1`
-/

namespace A296602.P9394654821475680705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A296602.P9394654821475680705

/-!
# A296603: Number of faces a Johnson solid can have.

The programs for A296603, there is no canonical definition to state claims against.
-/

/-! ## A296603.P7441288179050658117

`comp[comp[A242731(n+1)]-1]+1`
-/

namespace A296603.P7441288179050658117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242731 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A296603.P7441288179050658117

/-! ## A296603.P5797444140796149036

`A181708(A348553(n+1))`
-/

namespace A296603.P5797444140796149036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181708 (A348553 (n + 1)).toNat

end

end A296603.P5797444140796149036

/-! ## A296603.P17520062821134656109

`A181708(lt[A213268(n), n])`
-/

namespace A296603.P17520062821134656109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213268 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181708 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A296603.P17520062821134656109

/-! ## A296603.P15369415108038231268

`A181708(comp[A293881(3*n)])`
-/

namespace A296603.P15369415108038231268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181708 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A296603.P15369415108038231268

/-! ## A296603.P5531650750484612227

`A181708(lt[A118349(n), n²])`
-/

namespace A296603.P5531650750484612227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118349 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181708 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A296603.P5531650750484612227

/-!
# A296605: Rectangle read by rows: T(n,k) is the number of n X n diagonalizable matrices over GF(3) that have exactly k distinct eigenvalues, n >= 0, 0 <= k <= 3.

The programs for A296605, there is no canonical definition to state claims against.
-/

/-! ## A296605.P1023075676605058523

`A000217(and(A193774(n), A308093(n+1)))`
-/

namespace A296605.P1023075676605058523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.land (A193774 n) (A308093 (n + 1))).toNat

end

end A296605.P1023075676605058523

/-! ## A296605.P13707925623568597579

`A000217(and(A209563(n+3), A216598(n)))`
-/

namespace A296605.P13707925623568597579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.land (A209563 (n + 3)) (A216598 n)).toNat

end

end A296605.P13707925623568597579

/-! ## A296605.P1013936544586677752

`xor(A001221(n+1), A384810(A208059(n)))`
-/

namespace A296605.P1013936544586677752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (n + 1)) (A384810 (A208059 n).toNat)

end

end A296605.P1013936544586677752

/-! ## A296605.P1937844242021200879

`xor(A123951(A306860(n)), A168324(n+1))`
-/

namespace A296605.P1937844242021200879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123951 (A306860 n).toNat) (A168324 (n + 1))

end

end A296605.P1937844242021200879

/-!
# A296606: Numbers k such that d*k does not contain the digit d for any d in {1,2,3,4,5,6,7,8,9}.

The programs for A296606, there is no canonical definition to state claims against.
-/

/-! ## A296606.P6659184509400606532

`lt[9, A241146(n+1)]+1`
-/

namespace A296606.P6659184509400606532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A296606.P6659184509400606532

/-! ## A296606.P1944188728147328804

`lt[9, A241146(A028310(n))]`
-/

namespace A296606.P1944188728147328804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241146 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296606.P1944188728147328804

/-! ## A296606.P9620496329201750028

`A014681(lt[9, A241146(n+1)])`
-/

namespace A296606.P9620496329201750028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A296606.P9620496329201750028

/-! ## A296606.P1155464020701284324

`A014681(eq[10, A241146(n+1)])`
-/

namespace A296606.P1155464020701284324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296606.P1155464020701284324

/-! ## A296606.P16945714032015560135

`A020725(lt[9, A241146(n+1)])`
-/

namespace A296606.P16945714032015560135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A296606.P16945714032015560135

/-!
# A296607: a(n) = BarnesG(2*n).

The programs for A296607, there is no canonical definition to state claims against.
-/

/-! ## A296607.P1034182470892525137

`record[-(n-1)!*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A296607.P1034182470892525137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  -((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296607.P1034182470892525137

/-! ## A296607.P4852786456154857605

`lcm(n, A000178(A004275(n)))`
-/

namespace A296607.P4852786456154857605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000178 (A004275 n).toNat)

end

end A296607.P4852786456154857605

/-! ## A296607.P1836748443586074769

`record[and(A000178(n), A001057(n))]`
-/

namespace A296607.P1836748443586074769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000178 n) (A001057 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296607.P1836748443586074769

/-! ## A296607.P628719518112881960

`record[and(A000178(n), A062157(n))]`
-/

namespace A296607.P628719518112881960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000178 n) (A062157 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296607.P628719518112881960

/-! ## A296607.P9665655108917850943

`A000178(A004275(n))-A217096(n)`
-/

namespace A296607.P9665655108917850943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (A004275 n).toNat - A217096 n

end

end A296607.P9665655108917850943

/-!
# A296610: Toothpick sequence on triangular grid in an infinite 60-degree wedge (see Comments lines for precise definition).

The programs for A296610, there is no canonical definition to state claims against.
-/

/-! ## A296610.P11502385552852230379

`∑[A296611(n+1)]-A296611(n+1)`
-/

namespace A296610.P11502385552852230379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A296611 (n + 1)

end

end A296610.P11502385552852230379

/-!
# A296611: Number of toothpicks added at n-th stage to the toothpick structure of A296610.

The programs for A296611, there is no canonical definition to state claims against.
-/

/-! ## A296611.P17933792214751182454

`Δ[A296610(n)]`
-/

namespace A296611.P17933792214751182454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296611.P17933792214751182454

/-! ## A296611.P12849142182395356657

`A296610(n+1)-A296610(n)`
-/

namespace A296611.P12849142182395356657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296610 (n + 1) - A296610 n

end

end A296611.P12849142182395356657

/-! ## A296611.P5947293966561176631

`record[A296610(abs(1-n))]-A296610(n)`
-/

namespace A296611.P5947293966561176631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296610 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A296610 n

end

end A296611.P5947293966561176631

/-!
# A296612: Square array read by antidiagonals upwards: T(n,k) equals k times the number of compositions (ordered partitions) of n, with n >= 0 and k >= 1.

The programs for A296612, the canonical program `A296612.P17703809730803621848` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296612 has offset 0).

The definition of A296612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296612.P2430927390294516360

`(1-C(∑[char[∑[n]]], 2)+n)*Δ[A089633(n)]`
-/

namespace A296612.P2430927390294516360
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * (f4 (n + 1) - f4 n)

end

end A296612.P2430927390294516360

namespace A296612

/-- `(1-C(∑[char[∑[n]]], 2)+n)*Δ[A089633(n)]` -/
def P2430927390294516360.Spec : Prop :=
  ∀ n, P2430927390294516360.a n = A296612 n

end A296612

/-! ## A296612.P8713929490069373877

`(1-C(∑[char[∑[n]]], 2)+n)*A155038(n+1)`
-/

namespace A296612.P8713929490069373877
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A155038 (n + 1)

end

end A296612.P8713929490069373877

namespace A296612

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A155038(n+1)` -/
def P8713929490069373877.Spec : Prop :=
  ∀ n, P8713929490069373877.a n = A296612 n

end A296612

/-! ## A296612.P5152787582182491111

`(1-C(∑[char[∑[n]]], 2)+n)*A166444(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A296612.P5152787582182491111
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A166444 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A296612.P5152787582182491111

namespace A296612

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A166444(C(comp[∑[n]]-n, 2)-n)` -/
def P5152787582182491111.Spec : Prop :=
  ∀ n, P5152787582182491111.a n = A296612 n

end A296612

/-! ## A296612.P3139869824833585531

`(1-C(∑[char[∑[n]]], 2)+n)*A011782(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A296612.P3139869824833585531
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A011782 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A296612.P3139869824833585531

namespace A296612

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A011782(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P3139869824833585531.Spec : Prop :=
  ∀ n, P3139869824833585531.a n = A296612 n

end A296612

/-! ## A296612.P17703809730803621848

`A002260(n+1)*A155038(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A296612

/-- `A002260(n+1)*A155038(n+1)` -/
def P17703809730803621848.Spec : Prop :=
  ∀ n, P17703809730803621848.a n = A296612 n

theorem P17703809730803621848.correct : P17703809730803621848.Spec := by
  intro n
  simp only [A296612]

end A296612

/-! ## A296612.P17670886243826243412

`(A002262(n)+1)*A155038(n+1)`
-/

namespace A296612.P17670886243826243412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A155038 (n + 1)

end

end A296612.P17670886243826243412

namespace A296612

/-- `(A002262(n)+1)*A155038(n+1)` -/
def P17670886243826243412.Spec : Prop :=
  ∀ n, P17670886243826243412.a n = A296612 n

end A296612

/-! ## A296612.P6839520372041232445

`A130124(n+1)/A130453(n+1)`
-/

namespace A296612.P6839520372041232445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130124 (n + 1) : ℚ) / (A130453 (n + 1) : ℚ)

end

end A296612.P6839520372041232445

namespace A296612

/-- `A130124(n+1)/A130453(n+1)` -/
def P6839520372041232445.Spec : Prop :=
  ∀ n, P6839520372041232445.a n = (A296612 n : ℚ)

end A296612

/-! ## A296612.P6533272159235967442

`A002260(n+1)*A011782(A025581(n))`
-/

namespace A296612.P6533272159235967442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A011782 (A025581 n).toNat

end

end A296612.P6533272159235967442

namespace A296612

/-- `A002260(n+1)*A011782(A025581(n))` -/
def P6533272159235967442.Spec : Prop :=
  ∀ n, P6533272159235967442.a n = A296612 n

end A296612

/-! ## A296612.P2989616523367482129

`(1-C(∑[char[∑[n]]], 2)+n)*A057728(n+2)`
-/

namespace A296612.P2989616523367482129
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A057728 (n + 2)

end

end A296612.P2989616523367482129

namespace A296612

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A057728(n+2)` -/
def P2989616523367482129.Spec : Prop :=
  ∀ n, P2989616523367482129.a n = A296612 n

end A296612

/-! ## A296612.P9851621727884165486

`A002260(n+1)*A057728(n+2)`
-/

namespace A296612.P9851621727884165486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A057728 (n + 2)

end

end A296612.P9851621727884165486

namespace A296612

/-- `A002260(n+1)*A057728(n+2)` -/
def P9851621727884165486.Spec : Prop :=
  ∀ n, P9851621727884165486.a n = A296612 n

end A296612

/-! ## A296612.P9741604958721579602

`(1-C(∑[char[∑[n]]], 2)+n)*Δ[A023758(n+2)]`
-/

namespace A296612.P9741604958721579602
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * (f4 (n + 1) - f4 n)

end

end A296612.P9741604958721579602

namespace A296612

/-- `(1-C(∑[char[∑[n]]], 2)+n)*Δ[A023758(n+2)]` -/
def P9741604958721579602.Spec : Prop :=
  ∀ n, P9741604958721579602.a n = A296612 n

end A296612

/-! ## A296612.P13415971080246420138

`A357213(A038722(n+1))`
-/

namespace A296612.P13415971080246420138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357213 (A038722 (n + 1)).toNat

end

end A296612.P13415971080246420138

namespace A296612

/-- `A357213(A038722(n+1))` -/
def P13415971080246420138.Spec : Prop :=
  ∀ n, P13415971080246420138.a n = A296612 n

end A296612

/-!
# A296617: Expansion of 1/Sum_{k>=0} (k+1)^(k+1)*x^k.

The programs for A296617, there is no canonical definition to state claims against.
-/

/-! ## A296617.P16719471220904307475

`A112712(A072264(n+3))-A207571(n)`
-/

namespace A296617.P16719471220904307475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112712 (A072264 (n + 3)).toNat - A207571 n

end

end A296617.P16719471220904307475

/-!
# A296618: Expansion of the e.g.f. exp(-x)/sqrt(1-4*x).

The programs for A296618, there is no canonical definition to state claims against.
-/

/-! ## A296618.P14503301876010859210

`Δ[comp[2*n+3]*A215702(n+1)]+1`
-/

namespace A296618.P14503301876010859210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) * A215702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A296618.P14503301876010859210

/-!
# A296619: The number of nonnegative walks of n steps with step sizes 1 and 2, starting at 0 and ending at 2.

The programs for A296619, there is no canonical definition to state claims against.
-/

/-! ## A296619.P14079103613344502116

`A187430(n+1)-A055113(n+2)`
-/

namespace A296619.P14079103613344502116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187430 (n + 1) - A055113 (n + 2)

end

end A296619.P14079103613344502116

/-! ## A296619.P17925033881959779795

`A111160(n+1)-A346380(n+2)`
-/

namespace A296619.P17925033881959779795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111160 (n + 1) - A346380 (n + 2)

end

end A296619.P17925033881959779795

/-! ## A296619.P3022471554815039799

`A187430(n+1)+A187430(n)-A166135(n+1)`
-/

namespace A296619.P3022471554815039799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187430 (n + 1) + (A187430 n - A166135 (n + 1))

end

end A296619.P3022471554815039799

/-! ## A296619.P16329427215465214208

`A111160(n+1)+A187430(n+1)-A000108(n+1)`
-/

namespace A296619.P16329427215465214208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111160 (n + 1) + (A187430 (n + 1) - A000108 (n + 1))

end

end A296619.P16329427215465214208

/-! ## A296619.P8107205095777189139

`A185286(A010000(n))`
-/

namespace A296619.P8107205095777189139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185286 (A010000 n).toNat

end

end A296619.P8107205095777189139

/-! ## A296619.P13564438879772289514

`A185286(∑[record[A029579(n)]])`
-/

namespace A296619.P13564438879772289514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185286 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296619.P13564438879772289514

/-! ## A296619.P11288951078327365196

`A185286(∑[record[A141310(n)]])`
-/

namespace A296619.P11288951078327365196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185286 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296619.P11288951078327365196

/-! ## A296619.P17036444882664194902

`A187430(n+1)-A185286(n²+1)`
-/

namespace A296619.P17036444882664194902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187430 (n + 1) - A185286 (n ^ 2 + 1)

end

end A296619.P17036444882664194902

/-!
# A296625: a(n) is the total multiplicity of all products of Schur functions s(lambda)*s(lambda) with lambda a partition of n.

The programs for A296625, there is no canonical definition to state claims against.
-/

/-! ## A296625.P10093473062022671927

`2*A296624(2*n)-A296626(2*n)`
-/

namespace A296625.P10093473062022671927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296624 (2 * n) - A296626 (2 * n)

end

end A296625.P10093473062022671927

/-! ## A296625.P3102677080723001317

`A309846(A309860(n))+A304662(n)`
-/

namespace A296625.P3102677080723001317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309846 (A309860 n).toNat + A304662 n

end

end A296625.P3102677080723001317

/-! ## A296625.P17315540562329723339

`A034973(A082138(n)+A065730(n+1))`
-/

namespace A296625.P17315540562329723339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A082138 n + A065730 (n + 1)).toNat

end

end A296625.P17315540562329723339

/-! ## A296625.P10765052562957170967

`A304662(n)+A185255(A027424(n+1))`
-/

namespace A296625.P10765052562957170967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304662 n + A185255 (A027424 (n + 1)).toNat

end

end A296625.P10765052562957170967

/-!
# A296626: a(n) is the total multiplicity of all products of Schur functions s(lambda)*s(mu) with size(lambda) + size(mu) = n.

The programs for A296626, there is no canonical definition to state claims against.
-/

/-! ## A296626.P1891748090733550196

`A070933(n)-A257297(A111927(n))`
-/

namespace A296626.P1891748090733550196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070933 n - A257297 (A111927 n).toNat

end

end A296626.P1891748090733550196

/-! ## A296626.P12814801555274169271

`A130446(A124613(n))`
-/

namespace A296626.P12814801555274169271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A124613 n).toNat

end

end A296626.P12814801555274169271

/-! ## A296626.P12378500195721039716

`A364466(A392618(n+1))`
-/

namespace A296626.P12378500195721039716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364466 (A392618 (n + 1)).toNat

end

end A296626.P12378500195721039716

/-!
# A296627: 

The programs for A296627, there is no canonical definition to state claims against.
-/

/-! ## A296627.P10557904956203207379

`A296607(2*n)`
-/

namespace A296627.P10557904956203207379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296607 (2 * n)

end

end A296627.P10557904956203207379

/-!
# A296628: Numerators of coefficients in expansion of e.g.f. tan(x)/tanh(x) (even powers only).

The programs for A296628, there is no canonical definition to state claims against.
-/

/-! ## A296628.P6411053809274068306

`A001055(n+1)*A111975(∑{d}[∏{p}[n+1, #], (n+1)²/#])`
-/

namespace A296628.P6411053809274068306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) * A111975 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ))).toNat

end

end A296628.P6411053809274068306

/-!
# A296629: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 4 neighboring 1's.

The programs for A296629, there is no canonical definition to state claims against.
-/

/-! ## A296629.P5985129104780946924

`A296635(∑[4*n]+1)`
-/

namespace A296629.P5985129104780946924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296629.P5985129104780946924

/-! ## A296629.P16518132128390511301

`record[A003982(n)*A296635(n+1)]`
-/

namespace A296629.P16518132128390511301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296629.P16518132128390511301

/-! ## A296629.P7891671624619176206

`record[gcd(A296339(n), A296635(n+1))]`
-/

namespace A296629.P7891671624619176206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296339 n) (A296635 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296629.P7891671624619176206

/-! ## A296629.P6642052779947179188

`A296635(A001844(n))+A011732(n)`
-/

namespace A296629.P6642052779947179188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A001844 n).toNat + A011732 n

end

end A296629.P6642052779947179188

/-! ## A296629.P11513101525035954501

`A214249(n)*A296635(A001844(n))`
-/

namespace A296629.P11513101525035954501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214249 n * A296635 (A001844 n).toNat

end

end A296629.P11513101525035954501

/-!
# A296630: Number of nX3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A296630, there is no canonical definition to state claims against.
-/

/-! ## A296630.P14306993634062455158

`A296635(∑[n+2]+4)`
-/

namespace A296630.P14306993634062455158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296630.P14306993634062455158

/-! ## A296630.P15851632101138632062

`A296635(A167614(n+1))+A025466(n)`
-/

namespace A296630.P15851632101138632062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A167614 (n + 1)).toNat + A025466 n

end

end A296630.P15851632101138632062

/-! ## A296630.P4717697585113402494

`A296635(A167614(n+1))+A178798(n)`
-/

namespace A296630.P4717697585113402494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A167614 (n + 1)).toNat + A178798 n

end

end A296630.P4717697585113402494

/-! ## A296630.P15016214521853444549

`A296635(A167614(n+1))%A305316(n)`
-/

namespace A296630.P15016214521853444549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296635 (A167614 (n + 1)).toNat) (A305316 n)

end

end A296630.P15016214521853444549

/-! ## A296630.P349530444533956864

`or(A058348(n), A296635(A167614(n+1)))`
-/

namespace A296630.P349530444533956864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058348 n) (A296635 (A167614 (n + 1)).toNat)

end

end A296630.P349530444533956864

/-!
# A296631: Number of nX4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A296631, there is no canonical definition to state claims against.
-/

/-! ## A296631.P1339289828178847584

`A296635(A374004(n+1))`
-/

namespace A296631.P1339289828178847584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A374004 (n + 1)).toNat

end

end A296631.P1339289828178847584

/-! ## A296631.P1002246157344900762

`A296635(A052905(n)+9)`
-/

namespace A296631.P1002246157344900762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A052905 n + 9).toNat

end

end A296631.P1002246157344900762

/-! ## A296631.P1507627782074118982

`A296635(A055999(n)+10)`
-/

namespace A296631.P1507627782074118982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A055999 n + 10).toNat

end

end A296631.P1507627782074118982

/-! ## A296631.P9732225063557607919

`record[A296635(A008795(n)+4)]`
-/

namespace A296631.P9732225063557607919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A008795 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296631.P9732225063557607919

/-! ## A296631.P7062028672863945805

`A296635(A167614(n+2)+1)`
-/

namespace A296631.P7062028672863945805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A167614 (n + 2) + 1).toNat

end

end A296631.P7062028672863945805

/-!
# A296632: Number of nX5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A296632, there is no canonical definition to state claims against.
-/

/-! ## A296632.P17953265239862344374

`A296635(A374005(n+1))`
-/

namespace A296632.P17953265239862344374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A374005 (n + 1)).toNat

end

end A296632.P17953265239862344374

/-! ## A296632.P12145950953218188835

`A296635(A155212(n)+13)`
-/

namespace A296632.P12145950953218188835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A155212 n + 13).toNat

end

end A296632.P12145950953218188835

/-! ## A296632.P8994714007418831458

`A296635(A056000(n)+15)`
-/

namespace A296632.P8994714007418831458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A056000 n + 15).toNat

end

end A296632.P8994714007418831458

/-! ## A296632.P1399082967827657147

`A296635(A167614(n+3)+2)`
-/

namespace A296632.P1399082967827657147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A167614 (n + 3) + 2).toNat

end

end A296632.P1399082967827657147

/-! ## A296632.P13223008015715721413

`A296635(A034856(n+3)+7)`
-/

namespace A296632.P13223008015715721413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A034856 (n + 3) + 7).toNat

end

end A296632.P13223008015715721413

/-!
# A296633: Number of nX6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A296633, there is no canonical definition to state claims against.
-/

/-! ## A296633.P2517020369031858240

`A296635(A374007(n+1))`
-/

namespace A296633.P2517020369031858240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A374007 (n + 1)).toNat

end

end A296633.P2517020369031858240

/-! ## A296633.P13459616936402011219

`A296635(A052905(n+3))`
-/

namespace A296633.P13459616936402011219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A052905 (n + 3)).toNat

end

end A296633.P13459616936402011219

/-! ## A296633.P5841470409146352817

`A296635(A056119(n)+16)`
-/

namespace A296633.P5841470409146352817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A056119 n + 16).toNat

end

end A296633.P5841470409146352817

/-! ## A296633.P10612756092860313128

`A296635(eq[3, A219347(n)])`
-/

namespace A296633.P10612756092860313128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296633.P10612756092860313128

/-! ## A296633.P5992900345600750618

`A296635(eq[5, A193592(n)])`
-/

namespace A296633.P5992900345600750618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296633.P5992900345600750618

/-!
# A296634: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A296634, there is no canonical definition to state claims against.
-/

/-! ## A296634.P16529761351396022714

`A296635(A374008(n+1))`
-/

namespace A296634.P16529761351396022714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A374008 (n + 1)).toNat

end

end A296634.P16529761351396022714

/-! ## A296634.P11410610283874390988

`A296635(A046691(n+4)+11)`
-/

namespace A296634.P11410610283874390988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A046691 (n + 4) + 11).toNat

end

end A296634.P11410610283874390988

/-! ## A296634.P5028761291432356034

`A296635(eq[8, A131818(n+1)])`
-/

namespace A296634.P5028761291432356034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296634.P5028761291432356034

/-! ## A296634.P14157733392503164932

`A296635(A055999(n+4))`
-/

namespace A296634.P14157733392503164932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A055999 (n + 4)).toNat

end

end A296634.P14157733392503164932

/-! ## A296634.P2657135852898372037

`A296635(eq[4, A219347(n)])`
-/

namespace A296634.P2657135852898372037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296634.P2657135852898372037

/-!
# A296635: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A296635, there is no canonical definition to state claims against.
-/

/-! ## A296635.P1256159521863310327

`A295051(n+1)-A016356(A296674(n+1))`
-/

namespace A296635.P1256159521863310327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (n + 1) - A016356 (A296674 (n + 1)).toNat

end

end A296635.P1256159521863310327

/-! ## A296635.P2550663844264418664

`A295051(n+1)-A273688(n)%A141604(n)`
-/

namespace A296635.P2550663844264418664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (n + 1) - Int.tmod (A273688 n) (A141604 n)

end

end A296635.P2550663844264418664

/-! ## A296635.P17667336830983278959

`A295051(n+1)-A025456(A295051(n+1)²)`
-/

namespace A296635.P17667336830983278959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (n + 1) - A025456 (A295051 (n + 1) ^ 2).toNat

end

end A296635.P17667336830983278959

/-!
# A296636: Sequences n*(n+1)*(6*n+1)/2 and n*(n+1)*(7*n+1)/2 interleaved.

The programs for A296636, the canonical program `A296636.P1030054215566234206` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296636 has offset 0).

The definition of A296636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296636.P1030054215566234206

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=0, a(1)=7, a(2)=8, a(3)=39, a(4)=45, a(5)=114, a(6)=132, a(7)=250`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296636

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P1030054215566234206.Spec : Prop :=
  ∀ n, P1030054215566234206.a n = A296636 n

theorem P1030054215566234206.correct : P1030054215566234206.Spec := by
  intro n
  simp only [A296636]

end A296636

/-! ## A296636.P16180327797217327795

`a(A355539(2*n+1))` with `a(0)=0, a(1)=7, a(2)=8, a(3)=39, a(4)=45, a(5)=114`
-/

namespace A296636.P16180327797217327795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7, 8, 39, 45, 114] fun n a =>
  a (A355539 (2 * n + 1)).toNat

end

end A296636.P16180327797217327795

namespace A296636

/-- `a(A355539(2*n+1))` -/
def P16180327797217327795.Spec : Prop :=
  ∀ n, (P16180327797217327795.a n : ℤ) = A296636 n

end A296636

/-!
# A296637: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 4 neighboring 1's.

The programs for A296637, there is no canonical definition to state claims against.
-/

/-! ## A296637.P11940518539996861757

`A296643(∑[4*n]+1)`
-/

namespace A296637.P11940518539996861757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296637.P11940518539996861757

/-! ## A296637.P2761245484315463447

`record[gcd(A112467(n), A296643(n+1))]`
-/

namespace A296637.P2761245484315463447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A296643 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296637.P2761245484315463447

/-! ## A296637.P3126989253792178649

`A226444(n)*A296643(A001844(n))`
-/

namespace A296637.P3126989253792178649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 n * A296643 (A001844 n).toNat

end

end A296637.P3126989253792178649

/-! ## A296637.P14177347061075176836

`A245013(n)*A296643(A001844(n))`
-/

namespace A296637.P14177347061075176836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 n * A296643 (A001844 n).toNat

end

end A296637.P14177347061075176836

/-! ## A296637.P3019984390707683642

`A007318(∑[n])*A296643(A001844(n))`
-/

namespace A296637.P3019984390707683642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A296643 (A001844 n).toNat

end

end A296637.P3019984390707683642

/-!
# A296638: Number of nX3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A296638, there is no canonical definition to state claims against.
-/

/-! ## A296638.P12463918713520790102

`A296643(∑[n+2]+4)`
-/

namespace A296638.P12463918713520790102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296638.P12463918713520790102

/-! ## A296638.P16460470476145197946

`lcm(A033999(n), A296643(A167614(n+1)))`
-/

namespace A296638.P16460470476145197946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A296643 (A167614 (n + 1)).toNat)

end

end A296638.P16460470476145197946

/-! ## A296638.P17943130498961984603

`A296643(A167614(n+1))+A276183(n+1)`
-/

namespace A296638.P17943130498961984603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A167614 (n + 1)).toNat + A276183 (n + 1)

end

end A296638.P17943130498961984603

/-! ## A296638.P11186203765326125945

`A320742(n+1)+A296643(A167614(n+1))`
-/

namespace A296638.P11186203765326125945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (n + 1) + A296643 (A167614 (n + 1)).toNat

end

end A296638.P11186203765326125945

/-! ## A296638.P15878087991427385317

`A153675(n+1)*A296643(A167614(n+1))`
-/

namespace A296638.P15878087991427385317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (n + 1) * A296643 (A167614 (n + 1)).toNat

end

end A296638.P15878087991427385317

/-!
# A296639: Number of nX4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A296639, there is no canonical definition to state claims against.
-/

/-! ## A296639.P6152250951161864012

`A296643(C(n+5, 2)-n)`
-/

namespace A296639.P6152250951161864012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (Nat.choose (n + 5) 2 - n)

end

end A296639.P6152250951161864012

/-! ## A296639.P13228321972510653833

`A296643(A052905(n)+9)`
-/

namespace A296639.P13228321972510653833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A052905 n + 9).toNat

end

end A296639.P13228321972510653833

/-! ## A296639.P5967031834409107705

`A296643(A167614(n+2)+1)`
-/

namespace A296639.P5967031834409107705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A167614 (n + 2) + 1).toNat

end

end A296639.P5967031834409107705

/-! ## A296639.P996794034344643563

`A296643(A167487(n+2)-3)`
-/

namespace A296639.P996794034344643563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A167487 (n + 2) - 3).toNat

end

end A296639.P996794034344643563

/-! ## A296639.P2582021852511639239

`A296643(Δ[A264443(n)-n²])`
-/

namespace A296639.P2582021852511639239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (f1 (n + 1) - f1 n).toNat

end

end A296639.P2582021852511639239

/-!
# A296640: Number of nX5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A296640, there is no canonical definition to state claims against.
-/

/-! ## A296640.P6449491833555701789

`A296643(A167499(n+3))`
-/

namespace A296640.P6449491833555701789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A167499 (n + 3)).toNat

end

end A296640.P6449491833555701789

/-! ## A296640.P270899885482503784

`A296643(A155212(n)+13)`
-/

namespace A296640.P270899885482503784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A155212 n + 13).toNat

end

end A296640.P270899885482503784

/-! ## A296640.P7839218456395782639

`A296643(eq[4, A144328(n+1)]+1)`
-/

namespace A296640.P7839218456395782639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A296640.P7839218456395782639

/-! ## A296640.P6139576819916881363

`A296643(A000124(n+6)-6-Δ[n²])`
-/

namespace A296640.P6139576819916881363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A000124 (n + 6) - 6 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A296640.P6139576819916881363

/-! ## A296640.P5433397388086734100

`A296643(Δ[A264443(n)])`
-/

namespace A296640.P5433397388086734100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (f1 (n + 1) - f1 n).toNat

end

end A296640.P5433397388086734100

/-!
# A296641: Number of nX6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A296641, there is no canonical definition to state claims against.
-/

/-! ## A296641.P17909980701398465939

`A296643(A000217(n+5)+6)`
-/

namespace A296641.P17909980701398465939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A000217 (n + 5) + 6).toNat

end

end A296641.P17909980701398465939

/-! ## A296641.P4405223801427931381

`A296643(eq[7, A131818(n+1)])`
-/

namespace A296641.P4405223801427931381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296641.P4405223801427931381

/-! ## A296641.P859199449948993383

`A296643(A374007(n+1))`
-/

namespace A296641.P859199449948993383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A374007 (n + 1)).toNat

end

end A296641.P859199449948993383

/-! ## A296641.P7795695904770609446

`A296643(A052905(n+3))`
-/

namespace A296641.P7795695904770609446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A052905 (n + 3)).toNat

end

end A296641.P7795695904770609446

/-! ## A296641.P17451940871623138482

`A296643(eq[5, A193592(n)])`
-/

namespace A296641.P17451940871623138482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296641.P17451940871623138482

/-!
# A296642: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A296642, there is no canonical definition to state claims against.
-/

/-! ## A296642.P4991910190986250778

`A296643(A167487(n+5))`
-/

namespace A296642.P4991910190986250778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A167487 (n + 5)).toNat

end

end A296642.P4991910190986250778

/-! ## A296642.P12729302829146955801

`A296643(eq[8, A131818(n+1)])`
-/

namespace A296642.P12729302829146955801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296642.P12729302829146955801

/-! ## A296642.P13182086856075726411

`A296643(A374008(n+1))`
-/

namespace A296642.P13182086856075726411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A374008 (n + 1)).toNat

end

end A296642.P13182086856075726411

/-! ## A296642.P14802122124243644291

`A296643(A055999(n+4))`
-/

namespace A296642.P14802122124243644291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (A055999 (n + 4)).toNat

end

end A296642.P14802122124243644291

/-! ## A296642.P4503766637205903222

`A296643(eq[4, A219347(n)])`
-/

namespace A296642.P4503766637205903222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296642.P4503766637205903222

/-!
# A296643: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A296643, there is no canonical definition to state claims against.
-/

/-! ## A296643.P13583398375174784509

`A343958(A314163(n))+A296386(n+1)`
-/

namespace A296643.P13583398375174784509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343958 (A314163 n).toNat + A296386 (n + 1)

end

end A296643.P13583398375174784509

/-! ## A296643.P11754309763649287560

`A296386(n+1)+5*A007814(A157156(n))`
-/

namespace A296643.P11754309763649287560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (n + 1) + 5 * A007814 (A157156 n).toNat

end

end A296643.P11754309763649287560

/-! ## A296643.P3162970516942657334

`A343958(A281703(n+1))+A296386(n+1)`
-/

namespace A296643.P3162970516942657334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343958 (A281703 (n + 1)).toNat + A296386 (n + 1)

end

end A296643.P3162970516942657334

/-! ## A296643.P5853410849046731874

`A343958(A083354(n))+A296386(n+1)`
-/

namespace A296643.P5853410849046731874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343958 (A083354 n).toNat + A296386 (n + 1)

end

end A296643.P5853410849046731874

/-! ## A296643.P10488633702597890415

`A336107(A057568(n+4))+A296386(n+1)`
-/

namespace A296643.P10488633702597890415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (A057568 (n + 4)).toNat + A296386 (n + 1)

end

end A296643.P10488633702597890415

/-!
# A296644: Number of n X n 0..1 arrays with each 1 adjacent to 0, 1 or 3 king-move neighboring 1's.

The programs for A296644, there is no canonical definition to state claims against.
-/

/-! ## A296644.P3527976866983520657

`A296651(∑[4*n]+1)`
-/

namespace A296644.P3527976866983520657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296644.P3527976866983520657

/-! ## A296644.P13143465026243571143

`record[gcd(A114327(n), A296651(n+1))]`
-/

namespace A296644.P13143465026243571143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A296651 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296644.P13143465026243571143

/-! ## A296644.P13081750600933791494

`gcd(A000038(n), A296651(A001844(n)))`
-/

namespace A296644.P13081750600933791494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A296651 (A001844 n).toNat)

end

end A296644.P13081750600933791494

/-! ## A296644.P16761914583267418126

`∑[A343344(n)]*A296651(A001844(n))`
-/

namespace A296644.P16761914583267418126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A296651 (A001844 n).toNat

end

end A296644.P16761914583267418126

/-! ## A296644.P255528935019280593

`A007318(val(n+1, 5))*A296651(A001844(n))`
-/

namespace A296644.P255528935019280593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 5) * A296651 (A001844 n).toNat

end

end A296644.P255528935019280593

/-!
# A296645: Number of n X 2 0..1 arrays with each 1 adjacent to 0, 1 or 3 king-move neighboring 1s.

The programs for A296645, there is no canonical definition to state claims against.
-/

/-! ## A296645.P4867783244135060605

`A296651(∑[n+1]+2)`
-/

namespace A296645.P4867783244135060605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296645.P4867783244135060605

/-! ## A296645.P5994303507709689141

`record[root(A296651(n+2), A268956(n+1))]`
-/

namespace A296645.P5994303507709689141
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A296651 (n + 2) : ℝ) ^ (1 / (A268956 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296645.P5994303507709689141

/-! ## A296645.P708694581389330885

`record[A296651(A133263(A007599(n)))]`
-/

namespace A296645.P708694581389330885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A133263 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296645.P708694581389330885

/-! ## A296645.P17051385239419706578

`A296651(A133263(n+1))+A034471(n+1)`
-/

namespace A296645.P17051385239419706578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A133263 (n + 1)).toNat + A034471 (n + 1)

end

end A296645.P17051385239419706578

/-! ## A296645.P12338338202141625389

`A296651(A133263(n+1))+A034480(n+1)`
-/

namespace A296645.P12338338202141625389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A133263 (n + 1)).toNat + A034480 (n + 1)

end

end A296645.P12338338202141625389

/-!
# A296646: Number of n X 3 0..1 arrays with each 1 adjacent to 0, 1 or 3 king-move neighboring 1s.

The programs for A296646, there is no canonical definition to state claims against.
-/

/-! ## A296646.P1580256572784773483

`A296651(∑[n+2]+4)`
-/

namespace A296646.P1580256572784773483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296646.P1580256572784773483

/-! ## A296646.P12751636424174757739

`A296651(A167614(n+1))%A281699(n)`
-/

namespace A296646.P12751636424174757739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296651 (A167614 (n + 1)).toNat) (A281699 n)

end

end A296646.P12751636424174757739

/-! ## A296646.P11651619262538513645

`lcm(A016303(n), A296651(A167614(n+1)))`
-/

namespace A296646.P11651619262538513645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016303 n) (A296651 (A167614 (n + 1)).toNat)

end

end A296646.P11651619262538513645

/-! ## A296646.P6020000287788657131

`or(A000007(n), A296651(A167614(n+1)))`
-/

namespace A296646.P6020000287788657131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296651 (A167614 (n + 1)).toNat)

end

end A296646.P6020000287788657131

/-! ## A296646.P4839595970038774421

`or(A000038(n), A296651(A167614(n+1)))`
-/

namespace A296646.P4839595970038774421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A296651 (A167614 (n + 1)).toNat)

end

end A296646.P4839595970038774421

/-!
# A296647: Number of nX4 0..1 arrays with each 1 adjacent to 0, 1 or 3 king-move neighboring 1s.

The programs for A296647, there is no canonical definition to state claims against.
-/

/-! ## A296647.P13791095085224389057

`A296651(A055999(n)+10)`
-/

namespace A296647.P13791095085224389057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A055999 n + 10).toNat

end

end A296647.P13791095085224389057

/-! ## A296647.P4070773740512723638

`A296651(A167614(n+2)+1)`
-/

namespace A296647.P4070773740512723638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A167614 (n + 2) + 1).toNat

end

end A296647.P4070773740512723638

/-! ## A296647.P7066834027459552525

`A296651(A167487(n+2)-3)`
-/

namespace A296647.P7066834027459552525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A167487 (n + 2) - 3).toNat

end

end A296647.P7066834027459552525

/-! ## A296647.P3655442454985872454

`A296651(Δ[A264443(n)-n²])`
-/

namespace A296647.P3655442454985872454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (f1 (n + 1) - f1 n).toNat

end

end A296647.P3655442454985872454

/-! ## A296647.P14628421214312921182

`A296651(Δ[A023545(n+1)-n²])`
-/

namespace A296647.P14628421214312921182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (f1 (n + 1) - f1 n).toNat

end

end A296647.P14628421214312921182

/-!
# A296648: Number of nX5 0..1 arrays with each 1 adjacent to 0, 1 or 3 king-move neighboring 1s.

The programs for A296648, there is no canonical definition to state claims against.
-/

/-! ## A296648.P3705081198853324713

`A296651(A167499(n+3))`
-/

namespace A296648.P3705081198853324713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A167499 (n + 3)).toNat

end

end A296648.P3705081198853324713

/-! ## A296648.P8954644467555695003

`A296651(A000124(n+6)-6-Δ[n²])`
-/

namespace A296648.P8954644467555695003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A000124 (n + 6) - 6 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A296648.P8954644467555695003

/-! ## A296648.P6947026118275491215

`A296651(Δ[A264443(n)])`
-/

namespace A296648.P6947026118275491215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (f1 (n + 1) - f1 n).toNat

end

end A296648.P6947026118275491215

/-! ## A296648.P11255647425908062357

`A296651(A374005(n+1))`
-/

namespace A296648.P11255647425908062357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A374005 (n + 1)).toNat

end

end A296648.P11255647425908062357

/-! ## A296648.P9394058369085589614

`A296651(eq[4, A193592(n)])`
-/

namespace A296648.P9394058369085589614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296648.P9394058369085589614

/-!
# A296649: Number of nX6 0..1 arrays with each 1 adjacent to 0, 1 or 3 king-move neighboring 1s.

The programs for A296649, there is no canonical definition to state claims against.
-/

/-! ## A296649.P5478962924952341874

`A296651(A374007(n+1))`
-/

namespace A296649.P5478962924952341874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A374007 (n + 1)).toNat

end

end A296649.P5478962924952341874

/-! ## A296649.P4965049733424212616

`A296651(A052905(n+3))`
-/

namespace A296649.P4965049733424212616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A052905 (n + 3)).toNat

end

end A296649.P4965049733424212616

/-! ## A296649.P10226308403618817674

`A296651(eq[5, A193592(n)])`
-/

namespace A296649.P10226308403618817674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296649.P10226308403618817674

/-! ## A296649.P8196518475415349949

`A296651(A000096(n+5)-4)`
-/

namespace A296649.P8196518475415349949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A000096 (n + 5) - 4).toNat

end

end A296649.P8196518475415349949

/-! ## A296649.P11067035041431013845

`A296651(A000124(n+6)-6)`
-/

namespace A296649.P11067035041431013845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A000124 (n + 6) - 6).toNat

end

end A296649.P11067035041431013845

/-!
# A296650: Number of n X 7 0..1 arrays with each 1 adjacent to 0, 1 or 3 king-move neighboring 1s.

The programs for A296650, there is no canonical definition to state claims against.
-/

/-! ## A296650.P400838889532302231

`A296651(A167487(n+5))`
-/

namespace A296650.P400838889532302231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A167487 (n + 5)).toNat

end

end A296650.P400838889532302231

/-! ## A296650.P4139424958823398329

`A296651(A167614(n+6)-(n+3))`
-/

namespace A296650.P4139424958823398329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A296650.P4139424958823398329

/-! ## A296650.P1938429152152507582

`A296651(A374008(n+1))`
-/

namespace A296650.P1938429152152507582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A374008 (n + 1)).toNat

end

end A296650.P1938429152152507582

/-! ## A296650.P13484049646185210232

`A296651(A055999(n+4))`
-/

namespace A296650.P13484049646185210232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (A055999 (n + 4)).toNat

end

end A296650.P13484049646185210232

/-! ## A296650.P5924925148000408783

`A296651(eq[6, A193592(n)])`
-/

namespace A296650.P5924925148000408783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296650.P5924925148000408783

/-!
# A296651: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 0, 1 or 3 king-move neighboring 1s.

The programs for A296651, there is no canonical definition to state claims against.
-/

/-! ## A296651.P8622435602416958391

`A297085(n+1)-A185540(A172350(n))`
-/

namespace A296651.P8622435602416958391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (n + 1) - A185540 (A172350 n).toNat

end

end A296651.P8622435602416958391

/-! ## A296651.P3195923875503757128

`A297085(n+1)-A321378(A173887(n))`
-/

namespace A296651.P3195923875503757128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (n + 1) - A321378 (A173887 n).toNat

end

end A296651.P3195923875503757128

/-!
# A296654: a(n) = a(n-1)^(n-1) + a(n-2)^(n-1) with a(0)=0 and a(1)=1.

The programs for A296654, there is no canonical definition to state claims against.
-/

/-! ## A296654.P9511659387233633860

`a(n-1)^(n-1)+a(n-2)^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A296654.P9511659387233633860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) ^ ((n : ℤ) - 1 : ℤ) + a (n - 2) ^ ((n : ℤ) - 1 : ℤ)

end

end A296654.P9511659387233633860

/-!
# A296655: Numbers k such that phi(x) = k has a positive even number of solutions.

The programs for A296655, there is no canonical definition to state claims against.
-/

/-! ## A296655.P114333231591879766

`record[A002202(n+1)/A000034(A058277(n+1))]`
-/

namespace A296655.P114333231591879766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002202 (n + 1) : ℚ) / (A000034 (A058277 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296655.P114333231591879766

/-! ## A296655.P8606512176884165822

`record[(n+1)*A134451(A032446(n+1))]`
-/

namespace A296655.P8606512176884165822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A134451 (A032446 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296655.P8606512176884165822

/-! ## A296655.P2704867308063874707

`eq[1, A122458(A014197(n+1))]+1`
-/

namespace A296655.P2704867308063874707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A014197 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A296655.P2704867308063874707

/-! ## A296655.P15377833436064727206

`lt[A039982(A014197(n+1)²), 1]+1`
-/

namespace A296655.P15377833436064727206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A014197 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A296655.P15377833436064727206

/-! ## A296655.P17636440227832890446

`lt[2, A020639(A014197(n+1)+1)]+1`
-/

namespace A296655.P17636440227832890446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014197 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A296655.P17636440227832890446

/-!
# A296656: Triangle whose n-th row is the concatenated sequence of all Lyndon compositions of n in reverse-lexicographic order.

The programs for A296656, there is no canonical definition to state claims against.
-/

/-! ## A296656.P3502536456244480471

`A294018(A242353(3*(n+1)))+A080577(2*n+1)`
-/

namespace A296656.P3502536456244480471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294018 (A242353 (3 * (n + 1))).toNat + A080577 (2 * n + 1)

end

end A296656.P3502536456244480471

/-! ## A296656.P6172872010608342516

`A344089(A265910(∑[a(n-1)+12]))` with `a(0)=2, a(1)=1, a(2)=7, a(3)=18`
-/

namespace A296656.P6172872010608342516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 7, 18] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344089 (A265910 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A296656.P6172872010608342516

/-! ## A296656.P10601523456481279589

`gcd(record[A067882(3*n+1)], A067929(3*n+1))`
-/

namespace A296656.P10601523456481279589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067882 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A067929 (3 * n + 1))

end

end A296656.P10601523456481279589

/-! ## A296656.P11202996587502540030

`gcd(A305403(n), A305433(A305380(n+3)))`
-/

namespace A296656.P11202996587502540030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A305403 n) (A305433 (A305380 (n + 3)).toNat)

end

end A296656.P11202996587502540030

/-!
# A296657: Triangle whose n-th row is the concatenated sequence of all binary Lyndon words of length n in lexicographic order.

The programs for A296657, there is no canonical definition to state claims against.
-/

/-! ## A296657.P11868664453236529511

`A001222(A000043(n+1))*char[A140516(n+1)]`
-/

namespace A296657.P11868664453236529511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140516 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A296657.P11868664453236529511

/-! ## A296657.P10039504354634598799

`A144595(A299201(n+1)*A347643(3*n))`
-/

namespace A296657.P10039504354634598799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144595 (A299201 (n + 1) * A347643 (3 * n)).toNat

end

end A296657.P10039504354634598799

/-! ## A296657.P16946509175622983877

`A038219(A234941(n+1)+A038219(3*n+2))`
-/

namespace A296657.P16946509175622983877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038219 (A234941 (n + 1) + A038219 (3 * n + 2)).toNat

end

end A296657.P16946509175622983877

/-! ## A296657.P17954314283929095375

`A328981(A136294(n+1)-A000040(n+1))`
-/

namespace A296657.P17954314283929095375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328981 (A136294 (n + 1) - A000040 (n + 1)).toNat

end

end A296657.P17954314283929095375

/-! ## A296657.P11057429340821539104

`A379798(A301009(n))`
-/

namespace A296657.P11057429340821539104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379798 (A301009 n).toNat

end

end A296657.P11057429340821539104

/-!
# A296658: Length of the standard Lyndon word factorization of the first n terms of A000002.

The programs for A296658, there is no canonical definition to state claims against.
-/

/-! ## A296658.P18063850942295049610

`a(n-A296659(n+1))+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A296658.P18063850942295049610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a ((n : ℤ) - A296659 (n + 1)).toNat + 1

end

end A296658.P18063850942295049610

/-! ## A296658.P15525869032204920992

`A358371(A348129(n)+A007091(n))`
-/

namespace A296658.P15525869032204920992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A348129 n + A007091 n).toNat

end

end A296658.P15525869032204920992

/-! ## A296658.P6023904531733816971

`A282625(A081868(n+2))`
-/

namespace A296658.P6023904531733816971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (A081868 (n + 2)).toNat

end

end A296658.P6023904531733816971

/-! ## A296658.P9872079851156559324

`A211100(A329355(n+1)-floor(2^(n-1)))`
-/

namespace A296658.P9872079851156559324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A329355 (n + 1) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋).toNat

end

end A296658.P9872079851156559324

/-! ## A296658.P6088340850771630752

`A211100(xor(ceil(2^(n-1)), A329355(n+1)))`
-/

namespace A296658.P6088340850771630752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (Int.xor ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A329355 (n + 1))).toNat

end

end A296658.P6088340850771630752

/-!
# A296659: Length of the final word in the standard Lyndon word factorization of the first n terms of A000002.

The programs for A296659, there is no canonical definition to state claims against.
-/

/-! ## A296659.P7157235918614153175

`A329315(∑[A296658(n+1)])`
-/

namespace A296659.P7157235918614153175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329315 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296659.P7157235918614153175

/-! ## A296659.P8804316635016949753

`A072643((A088570(n+1)/A000034(n))^A025147(n+3))`
-/

namespace A296659.P8804316635016949753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (SequenceMachineLib.roundAway (((A088570 (n + 1) : ℚ) / (A000034 n : ℚ)) ^ (A025147 (n + 3) : ℤ))).toNat

end

end A296659.P8804316635016949753

/-! ## A296659.P8227268414449756827

`A000120(gcd(A053203(n+6), A053209(n)))`
-/

namespace A296659.P8227268414449756827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.gcd (A053203 (n + 6)) (A053209 n))

end

end A296659.P8227268414449756827

/-! ## A296659.P13774725756139792875

`gcd(A000120(A053209(n)), A082400(n+1))`
-/

namespace A296659.P13774725756139792875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A053209 n).toNat) (A082400 (n + 1))

end

end A296659.P13774725756139792875

/-! ## A296659.P18192556249635483803

`gcd(A052347(A029509(n+1)), A289207(n))`
-/

namespace A296659.P18192556249635483803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052347 (A029509 (n + 1)).toNat) (A289207 n)

end

end A296659.P18192556249635483803

/-!
# A296660: Expansion of the e.g.f. exp(-2*x)/(1-4*x).

The programs for A296660, there is no canonical definition to state claims against.
-/

/-! ## A296660.P711688091746553507

`(-2)^n+4*n*a(n-1)` with `a(0)=1`
-/

namespace A296660.P711688091746553507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-2) ^ n + (4 * n : ℤ) * a (n - 1)

end

end A296660.P711688091746553507

/-! ## A296660.P2777381983451857049

`2*(2*n-1)*a(n-1)+8*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A296660.P2777381983451857049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (((2 * n : ℤ) - 1) * a (n - 1)) + 8 * (((n : ℤ) - 1) * a (n - 2))

end

end A296660.P2777381983451857049

/-! ## A296660.P2706192386909126705

`2^n*A000354(n)`
-/

namespace A296660.P2706192386909126705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000354 n

end

end A296660.P2706192386909126705

/-! ## A296660.P8175432196242606499

`lcm(A000079(n), A000354(n))`
-/

namespace A296660.P8175432196242606499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A000354 n)

end

end A296660.P8175432196242606499

/-! ## A296660.P6922832203072655865

`A000354(n)*A011782(n+1)`
-/

namespace A296660.P6922832203072655865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000354 n * A011782 (n + 1)

end

end A296660.P6922832203072655865

/-!
# A296661: a(n) = (exp(k)*Gamma(1+n, k) - exp(-k)*Gamma(1+n, -k))/k! for k = 3.

The programs for A296661, there is no canonical definition to state claims against.
-/

/-! ## A296661.P4334593909625398428

`(A053486(n)-A010843(n+1))/6`
-/

namespace A296661.P4334593909625398428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053486 n - A010843 (n + 1) : ℚ) / 6

end

end A296661.P4334593909625398428

/-! ## A296661.P4643581152402671628

`(3*n%2)^(n-1)+n*a(n-1)` with `a(0)=0`
-/

namespace A296661.P4643581152402671628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((3 * (n % 2) : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ) * a (n - 1)

end

end A296661.P4643581152402671628

/-!
# A296662: Table read by rows, the odd rows of A296664, T(n, k) for n >= 0 and 0 <= k <= 2n.

The programs for A296662, there is no canonical definition to state claims against.
-/

/-! ## A296662.P6109090520071182755

`A296664(A165776(n))`
-/

namespace A296662.P6109090520071182755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296664 (A165776 n).toNat

end

end A296662.P6109090520071182755

/-! ## A296662.P4819163769212036681

`A296664(comp[A061887(n)])`
-/

namespace A296662.P4819163769212036681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296664 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A296662.P4819163769212036681

/-! ## A296662.P15179829925694242956

`A296664(A080883(n)+2*n)`
-/

namespace A296662.P15179829925694242956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296664 (A080883 n + (2 * n : ℤ)).toNat

end

end A296662.P15179829925694242956

/-! ## A296662.P7479671085519007440

`A296664(A080883(n)+n+n)`
-/

namespace A296662.P7479671085519007440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296664 (A080883 n + (n : ℤ) + (n : ℤ)).toNat

end

end A296662.P7479671085519007440

/-! ## A296662.P7616445222290520116

`A296664(A000196(n)+A161983(n)+1)`
-/

namespace A296662.P7616445222290520116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296664 (A000196 n + (A161983 n + 1)).toNat

end

end A296662.P7616445222290520116

/-!
# A296663: Row sums of A296664.

The programs for A296663, the canonical program `A296663.P10525781489669147668` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296663 has offset 0).

The definition of A296663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296663.P10525781489669147668

`A100071(n+1)-A045621(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A296663

/-- `A100071(n+1)-A045621(n)` -/
def P10525781489669147668.Spec : Prop :=
  ∀ n, P10525781489669147668.a n = A296663 n

theorem P10525781489669147668.correct : P10525781489669147668.Spec := by
  intro n
  simp only [A296663]

end A296663

/-! ## A296663.P14372479994549029392

`A126869(n)+A107373(n+2)`
-/

namespace A296663.P14372479994549029392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + A107373 (n + 2)

end

end A296663.P14372479994549029392

namespace A296663

/-- `A126869(n)+A107373(n+2)` -/
def P14372479994549029392.Spec : Prop :=
  ∀ n, P14372479994549029392.a n = A296663 n

end A296663

/-! ## A296663.P9027375049595687851

`A001405(n)+2*A107373(n+1)`
-/

namespace A296663.P9027375049595687851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + 2 * A107373 (n + 1)

end

end A296663.P9027375049595687851

namespace A296663

/-- `A001405(n)+2*A107373(n+1)` -/
def P9027375049595687851.Spec : Prop :=
  ∀ n, P9027375049595687851.a n = A296663 n

end A296663

/-! ## A296663.P17149442038936294295

`(n+2)*A001405(n)-A000079(n)`
-/

namespace A296663.P17149442038936294295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A001405 n - A000079 n

end

end A296663.P17149442038936294295

namespace A296663

/-- `(n+2)*A001405(n)-A000079(n)` -/
def P17149442038936294295.Spec : Prop :=
  ∀ n, P17149442038936294295.a n = A296663 n

end A296663

/-! ## A296663.P6014176257587831143

`(n+2)*A001405(n)-∑[A011782(n)]`
-/

namespace A296663.P6014176257587831143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A001405 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296663.P6014176257587831143

namespace A296663

/-- `(n+2)*A001405(n)-∑[A011782(n)]` -/
def P6014176257587831143.Spec : Prop :=
  ∀ n, P6014176257587831143.a n = A296663 n

end A296663

/-! ## A296663.P972673016964633726

`(n+2)*A001405(n)-Δ[A000051(n)]`
-/

namespace A296663.P972673016964633726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A001405 n - (f1 (n + 1) - f1 n)

end

end A296663.P972673016964633726

namespace A296663

/-- `(n+2)*A001405(n)-Δ[A000051(n)]` -/
def P972673016964633726.Spec : Prop :=
  ∀ n, P972673016964633726.a n = A296663 n

end A296663

/-! ## A296663.P8913907381410145977

`(n+2)*A001405(n)-Δ[A000225(n)]`
-/

namespace A296663.P8913907381410145977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A001405 n - (f1 (n + 1) - f1 n)

end

end A296663.P8913907381410145977

namespace A296663

/-- `(n+2)*A001405(n)-Δ[A000225(n)]` -/
def P8913907381410145977.Spec : Prop :=
  ∀ n, P8913907381410145977.a n = A296663 n

end A296663

/-! ## A296663.P6364553269473539821

`(n+2)*A001405(n)-A011782(n+1)`
-/

namespace A296663.P6364553269473539821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A001405 n - A011782 (n + 1)

end

end A296663.P6364553269473539821

namespace A296663

/-- `(n+2)*A001405(n)-A011782(n+1)` -/
def P6364553269473539821.Spec : Prop :=
  ∀ n, P6364553269473539821.a n = A296663 n

end A296663

/-! ## A296663.P1715150147875484305

`(n+2)*(A014495(n)+1)-Δ[A000225(n)]`
-/

namespace A296663.P1715150147875484305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A014495 n + 1) - (f1 (n + 1) - f1 n)

end

end A296663.P1715150147875484305

namespace A296663

/-- `(n+2)*(A014495(n)+1)-Δ[A000225(n)]` -/
def P1715150147875484305.Spec : Prop :=
  ∀ n, P1715150147875484305.a n = A296663 n

end A296663

/-! ## A296663.P14756050275525241454

`A107373(n+1)+A210736(n+1)+A107373(n+1)`
-/

namespace A296663.P14756050275525241454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + (A210736 (n + 1) + A107373 (n + 1))

end

end A296663.P14756050275525241454

namespace A296663

/-- `A107373(n+1)+A210736(n+1)+A107373(n+1)` -/
def P14756050275525241454.Spec : Prop :=
  ∀ n, P14756050275525241454.a n = A296663 n

end A296663

/-! ## A296663.P1083834084647206458

`Δ[A189391(n)]-A058622(n)`
-/

namespace A296663.P1083834084647206458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A058622 n

end

end A296663.P1083834084647206458

namespace A296663

/-- `Δ[A189391(n)]-A058622(n)` -/
def P1083834084647206458.Spec : Prop :=
  ∀ n, P1083834084647206458.a n = A296663 n

end A296663

/-! ## A296663.P17909599402781093557

`A189391(n+1)-2*A100071(n)`
-/

namespace A296663.P17909599402781093557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 (n + 1) - 2 * A100071 n

end

end A296663.P17909599402781093557

namespace A296663

/-- `A189391(n+1)-2*A100071(n)` -/
def P17909599402781093557.Spec : Prop :=
  ∀ n, P17909599402781093557.a n = A296663 n

end A296663

/-!
# A296664: Table read by rows, diagonals of powers of Toeplitz matrices generated by the characteristic function of 1, T(n, k) for n >= 0 and 0 <= k <= 2*floor(n/2).

The programs for A296664, there is no canonical definition to state claims against.
-/

/-! ## A296664.P16504504014783669419

`A069733(A078391(n)^A069733(n+1))`
-/

namespace A296664.P16504504014783669419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (SequenceMachineLib.roundAway ((A078391 n : ℚ) ^ (A069733 (n + 1) : ℤ))).toNat

end

end A296664.P16504504014783669419

/-! ## A296664.P10857722910698791260

`A320040(A320270(n+4)-1)`
-/

namespace A296664.P10857722910698791260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320040 (A320270 (n + 4) - 1).toNat

end

end A296664.P10857722910698791260

/-! ## A296664.P2011024377941288193

`A238013(record[A350168(n+1)+A225630(n)])`
-/

namespace A296664.P2011024377941288193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350168 (n + 1) + A225630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238013 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A296664.P2011024377941288193

/-!
# A296665: Row sums of A296666.

The programs for A296665, the canonical program `A296665.P10812788718355043143` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296665 has offset 0).

The definition of A296665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296665.P10812788718355043143

`A296663(2*n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A296665

/-- `A296663(2*n)` -/
def P10812788718355043143.Spec : Prop :=
  ∀ n, P10812788718355043143.a n = A296665 n

theorem P10812788718355043143.correct : P10812788718355043143.Spec := by
  intro n
  simp only [A296665]

end A296665

/-! ## A296665.P8682794883294165714

`record[A296663(n%or(1, n))]`
-/

namespace A296665.P8682794883294165714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296663 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296665.P8682794883294165714

namespace A296665

/-- `record[A296663(n%or(1, n))]` -/
def P8682794883294165714.Spec : Prop :=
  ∀ n, P8682794883294165714.a n = A296665 n

end A296665

/-! ## A296665.P407135875814607109

`record[A296663(n)/(-1)^n]`
-/

namespace A296665.P407135875814607109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296663 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296665.P407135875814607109

namespace A296665

/-- `record[A296663(n)/(-1)^n]` -/
def P407135875814607109.Spec : Prop :=
  ∀ n, P407135875814607109.a n = (A296665 n : ℚ)

end A296665

/-! ## A296665.P2667241357267081980

`(n+1)*A028329(n)-4^n`
-/

namespace A296665.P2667241357267081980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028329 n - (4 ^ n : ℤ)

end

end A296665.P2667241357267081980

namespace A296665

/-- `(n+1)*A028329(n)-4^n` -/
def P2667241357267081980.Spec : Prop :=
  ∀ n, P2667241357267081980.a n = A296665 n

end A296665

/-! ## A296665.P4204377500132401764

`2*(n+1)*A000984(n)-4^n`
-/

namespace A296665.P4204377500132401764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000984 n) - (4 ^ n : ℤ)

end

end A296665.P4204377500132401764

namespace A296665

/-- `2*(n+1)*A000984(n)-4^n` -/
def P4204377500132401764.Spec : Prop :=
  ∀ n, P4204377500132401764.a n = A296665 n

end A296665

/-! ## A296665.P1064786725398611393

`A068552(n)+A028329(n)`
-/

namespace A296665.P1064786725398611393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068552 n + A028329 n

end

end A296665.P1064786725398611393

namespace A296665

/-- `A068552(n)+A028329(n)` -/
def P1064786725398611393.Spec : Prop :=
  ∀ n, P1064786725398611393.a n = A296665 n

end A296665

/-! ## A296665.P11555766675810645848

`A172060(n)+A000984(n)`
-/

namespace A296665.P11555766675810645848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172060 n + A000984 n

end

end A296665.P11555766675810645848

namespace A296665

/-- `A172060(n)+A000984(n)` -/
def P11555766675810645848.Spec : Prop :=
  ∀ n, P11555766675810645848.a n = A296665 n

end A296665

/-! ## A296665.P11204636210904082474

`A002457(n)-A068551(n)`
-/

namespace A296665.P11204636210904082474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A068551 n

end

end A296665.P11204636210904082474

namespace A296665

/-- `A002457(n)-A068551(n)` -/
def P11204636210904082474.Spec : Prop :=
  ∀ n, P11204636210904082474.a n = A296665 n

end A296665

/-! ## A296665.P14145196483119101351

`A296770(n)-A001791(n)`
-/

namespace A296665.P14145196483119101351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296770 n - A001791 n

end

end A296665.P14145196483119101351

namespace A296665

/-- `A296770(n)-A001791(n)` -/
def P14145196483119101351.Spec : Prop :=
  ∀ n, P14145196483119101351.a n = A296665 n

end A296665

/-! ## A296665.P3726140714402331586

`A107373(2*(n+1))+A001405(2*n)`
-/

namespace A296665.P3726140714402331586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * (n + 1)) + A001405 (2 * n)

end

end A296665.P3726140714402331586

namespace A296665

/-- `A107373(2*(n+1))+A001405(2*n)` -/
def P3726140714402331586.Spec : Prop :=
  ∀ n, P3726140714402331586.a n = A296665 n

end A296665

/-! ## A296665.P10867699815646916642

`A107373(2*(n+1))+A056040(2*n)`
-/

namespace A296665.P10867699815646916642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * (n + 1)) + A056040 (2 * n)

end

end A296665.P10867699815646916642

namespace A296665

/-- `A107373(2*(n+1))+A056040(2*n)` -/
def P10867699815646916642.Spec : Prop :=
  ∀ n, P10867699815646916642.a n = A296665 n

end A296665

/-! ## A296665.P11590903160334823528

`A210736(2*n+1)+A107373(2*(n+1))`
-/

namespace A296665.P11590903160334823528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n + 1) + A107373 (2 * (n + 1))

end

end A296665.P11590903160334823528

namespace A296665

/-- `A210736(2*n+1)+A107373(2*(n+1))` -/
def P11590903160334823528.Spec : Prop :=
  ∀ n, P11590903160334823528.a n = A296665 n

end A296665

/-! ## A296665.P565789663496168379

`A340568(2*n+1)+A001405(2*n+1)`
-/

namespace A296665.P565789663496168379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 (2 * n + 1) + A001405 (2 * n + 1)

end

end A296665.P565789663496168379

namespace A296665

/-- `A340568(2*n+1)+A001405(2*n+1)` -/
def P565789663496168379.Spec : Prop :=
  ∀ n, P565789663496168379.a n = A296665 n

end A296665

/-! ## A296665.P13332208268531255315

`A001405(2*n)-A194590(2*n+1)`
-/

namespace A296665.P13332208268531255315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A194590 (2 * n + 1)

end

end A296665.P13332208268531255315

namespace A296665

/-- `A001405(2*n)-A194590(2*n+1)` -/
def P13332208268531255315.Spec : Prop :=
  ∀ n, P13332208268531255315.a n = A296665 n

end A296665

/-! ## A296665.P12323361260035231560

`A056040(2*n)-A194590(2*n+1)`
-/

namespace A296665.P12323361260035231560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n) - A194590 (2 * n + 1)

end

end A296665.P12323361260035231560

namespace A296665

/-- `A056040(2*n)-A194590(2*n+1)` -/
def P12323361260035231560.Spec : Prop :=
  ∀ n, P12323361260035231560.a n = A296665 n

end A296665

/-!
# A296666: Table read by rows, the even rows of A296664, T(n, k) for n >= 0 and 0 <= k <= 2n.

The programs for A296666, there is no canonical definition to state claims against.
-/

/-! ## A296666.P4689636317056041476

`A296664(A061887(n))`
-/

namespace A296666.P4689636317056041476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296664 (A061887 n).toNat

end

end A296666.P4689636317056041476

/-! ## A296666.P8776858671263998170

`A296664(A048760(n)+n)`
-/

namespace A296666.P8776858671263998170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296664 (A048760 n + (n : ℤ)).toNat

end

end A296666.P8776858671263998170

/-! ## A296666.P10875311689617448139

`A296664(A000196(n)²+n)`
-/

namespace A296666.P10875311689617448139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296664 (A000196 n ^ 2 + (n : ℤ)).toNat

end

end A296666.P10875311689617448139

/-! ## A296666.P1404940549617344468

`A296664(∑[A056926(A008586(n))])`
-/

namespace A296666.P1404940549617344468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296664 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296666.P1404940549617344468

/-! ## A296666.P16117071134464010103

`A296664(A161983(n)-A000196(n))`
-/

namespace A296666.P16117071134464010103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296664 (A161983 n - A000196 n).toNat

end

end A296666.P16117071134464010103

/-!
# A296667: Number of n X n 0..1 arrays with each 1 adjacent to 0, 2 or 3 king-move neighboring 1's.

The programs for A296667, there is no canonical definition to state claims against.
-/

/-! ## A296667.P5200877153612038388

`A296674(∑[4*n]+1)`
-/

namespace A296667.P5200877153612038388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296667.P5200877153612038388

/-! ## A296667.P6966256332316970951

`record[root(A296674(n+1), A143182(n))]`
-/

namespace A296667.P6966256332316970951
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A296674 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296667.P6966256332316970951

/-! ## A296667.P1329707403838267479

`record[gcd(A114327(n), A296674(n+1))]`
-/

namespace A296667.P1329707403838267479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A296674 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296667.P1329707403838267479

/-! ## A296667.P3955632949219854214

`record[root(A296674(n+1), A113881(n+1))]`
-/

namespace A296667.P3955632949219854214
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A296674 (n + 1) : ℝ) ^ (1 / (A113881 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296667.P3955632949219854214

/-! ## A296667.P8048156948924971981

`A296674(A001844(n))+A011732(n)`
-/

namespace A296667.P8048156948924971981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A001844 n).toNat + A011732 n

end

end A296667.P8048156948924971981

/-!
# A296668: Number of n X 2 0..1 arrays with each 1 adjacent to 0, 2 or 3 king-move neighboring 1s.

The programs for A296668, there is no canonical definition to state claims against.
-/

/-! ## A296668.P15391677260053395371

`A296674(∑[n+1]+2)`
-/

namespace A296668.P15391677260053395371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296668.P15391677260053395371

/-! ## A296668.P14424017392125190106

`record[A296674(2-A141387(n)+n)]`
-/

namespace A296668.P14424017392125190106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (2 - A141387 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296668.P14424017392125190106

/-! ## A296668.P3383735259493427528

`A296674(C(n+2, 2)+2)%A296670(n+1)`
-/

namespace A296668.P3383735259493427528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296674 (Nat.choose (n + 2) 2 + 2)) (A296670 (n + 1))

end

end A296668.P3383735259493427528

/-! ## A296668.P2816437705093946898

`lcm(A010892(3*n), A296674(C(n+2, 2)+2))`
-/

namespace A296668.P2816437705093946898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 (3 * n)) (A296674 (Nat.choose (n + 2) 2 + 2))

end

end A296668.P2816437705093946898

/-! ## A296668.P5622106499501166650

`A001221(A260801(n+1))*A296674(C(n+2, 2)+2)`
-/

namespace A296668.P5622106499501166650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A260801 (n + 1)).toNat * A296674 (Nat.choose (n + 2) 2 + 2)

end

end A296668.P5622106499501166650

/-!
# A296669: Number of nX3 0..1 arrays with each 1 adjacent to 0, 2 or 3 king-move neighboring 1s.

The programs for A296669, there is no canonical definition to state claims against.
-/

/-! ## A296669.P6392558141075424205

`A296674(∑[n+2]+4)`
-/

namespace A296669.P6392558141075424205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296669.P6392558141075424205

/-! ## A296669.P14176510637652509274

`A296674(A167614(n+1))+A011732(n)`
-/

namespace A296669.P14176510637652509274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A167614 (n + 1)).toNat + A011732 n

end

end A296669.P14176510637652509274

/-! ## A296669.P495670861031561422

`lcm(A033999(n), A296674(A167614(n+1)))`
-/

namespace A296669.P495670861031561422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A296674 (A167614 (n + 1)).toNat)

end

end A296669.P495670861031561422

/-! ## A296669.P7831239620362597220

`or(A000007(n), A296674(A167614(n+1)))`
-/

namespace A296669.P7831239620362597220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296674 (A167614 (n + 1)).toNat)

end

end A296669.P7831239620362597220

/-! ## A296669.P5894808018765121743

`or(A055641(n), A296674(A167614(n+1)))`
-/

namespace A296669.P5894808018765121743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A296674 (A167614 (n + 1)).toNat)

end

end A296669.P5894808018765121743

/-!
# A296670: Number of nX4 0..1 arrays with each 1 adjacent to 0, 2 or 3 king-move neighboring 1s.

The programs for A296670, there is no canonical definition to state claims against.
-/

/-! ## A296670.P15231760356189116342

`A296674(A141214(n)+7)`
-/

namespace A296670.P15231760356189116342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A141214 n + 7).toNat

end

end A296670.P15231760356189116342

/-! ## A296670.P14133251599591917962

`A296674(A055999(n)+10)`
-/

namespace A296670.P14133251599591917962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A055999 n + 10).toNat

end

end A296670.P14133251599591917962

/-! ## A296670.P4875970057991845838

`A296674(Δ[A008778(n)]+6)`
-/

namespace A296670.P4875970057991845838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (f1 (n + 1) - f1 n + 6).toNat

end

end A296670.P4875970057991845838

/-! ## A296670.P9362590370645805665

`A296674(A167614(n+2)+1)`
-/

namespace A296670.P9362590370645805665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A167614 (n + 2) + 1).toNat

end

end A296670.P9362590370645805665

/-! ## A296670.P94665832447939824

`A296674(A166136(n+2)-2)`
-/

namespace A296670.P94665832447939824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A166136 (n + 2) - 2).toNat

end

end A296670.P94665832447939824

/-!
# A296671: Number of nX5 0..1 arrays with each 1 adjacent to 0, 2 or 3 king-move neighboring 1s.

The programs for A296671, there is no canonical definition to state claims against.
-/

/-! ## A296671.P5497760388903899966

`A296674(A167499(n+3))`
-/

namespace A296671.P5497760388903899966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A167499 (n + 3)).toNat

end

end A296671.P5497760388903899966

/-! ## A296671.P8719141844726061346

`A296674(A155212(n)+13)`
-/

namespace A296671.P8719141844726061346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A155212 n + 13).toNat

end

end A296671.P8719141844726061346

/-! ## A296671.P11074132132583646367

`A296674(A056000(n)+15)`
-/

namespace A296671.P11074132132583646367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A056000 n + 15).toNat

end

end A296671.P11074132132583646367

/-! ## A296671.P10226817449931905397

`A296674(eq[6, A131818(n+1)])`
-/

namespace A296671.P10226817449931905397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296671.P10226817449931905397

/-! ## A296671.P2526101799914781252

`A296674(A000124(n+6)-6-Δ[n²])`
-/

namespace A296671.P2526101799914781252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A000124 (n + 6) - 6 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A296671.P2526101799914781252

/-!
# A296672: Number of nX6 0..1 arrays with each 1 adjacent to 0, 2 or 3 king-move neighboring 1s.

The programs for A296672, there is no canonical definition to state claims against.
-/

/-! ## A296672.P15857378432659984978

`A296674(A166136(n+4))`
-/

namespace A296672.P15857378432659984978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A166136 (n + 4)).toNat

end

end A296672.P15857378432659984978

/-! ## A296672.P9738142746087064181

`A296674(eq[7, A131818(n+1)])`
-/

namespace A296672.P9738142746087064181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296672.P9738142746087064181

/-! ## A296672.P4134698306402663596

`A296674(A141214(n+4)-3-A005408(n))`
-/

namespace A296672.P4134698306402663596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A141214 (n + 4) - 3 - A005408 n).toNat

end

end A296672.P4134698306402663596

/-! ## A296672.P11780025514476755003

`A296674(A374007(n+1))`
-/

namespace A296672.P11780025514476755003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A374007 (n + 1)).toNat

end

end A296672.P11780025514476755003

/-! ## A296672.P6386807534136257660

`A296674(A052905(n+3))`
-/

namespace A296672.P6386807534136257660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A052905 (n + 3)).toNat

end

end A296672.P6386807534136257660

/-!
# A296673: Number of nX7 0..1 arrays with each 1 adjacent to 0, 2 or 3 king-move neighboring 1s.

The programs for A296673, there is no canonical definition to state claims against.
-/

/-! ## A296673.P12771857430669088318

`A296674(A167499(n+5)+2)`
-/

namespace A296673.P12771857430669088318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A167499 (n + 5) + 2).toNat

end

end A296673.P12771857430669088318

/-! ## A296673.P13675423014903324913

`A296674(eq[8, A131818(n+1)])`
-/

namespace A296673.P13675423014903324913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296673.P13675423014903324913

/-! ## A296673.P6430807361276695147

`A296674(A374008(n+1))`
-/

namespace A296673.P6430807361276695147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A374008 (n + 1)).toNat

end

end A296673.P6430807361276695147

/-! ## A296673.P11290341872891572217

`A296674(A055999(n+4))`
-/

namespace A296673.P11290341872891572217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (A055999 (n + 4)).toNat

end

end A296673.P11290341872891572217

/-! ## A296673.P7361764018738915257

`A296674(eq[4, A219347(n)])`
-/

namespace A296673.P7361764018738915257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296673.P7361764018738915257

/-!
# A296674: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 0, 2 or 3 king-move neighboring 1s.

The programs for A296674, there is no canonical definition to state claims against.
-/

/-! ## A296674.P14479947069773485408

`A296335(n+1)+A227877(A340430(n))`
-/

namespace A296674.P14479947069773485408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (n + 1) + A227877 (A340430 n).toNat

end

end A296674.P14479947069773485408

/-! ## A296674.P10031621089512263631

`A296588(n+1)-A091384(A091378(n))`
-/

namespace A296674.P10031621089512263631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (n + 1) - A091384 (A091378 n).toNat

end

end A296674.P10031621089512263631

/-! ## A296674.P2126052466019580700

`A325400(A296725(n+1))-A091384(A091378(n))`
-/

namespace A296674.P2126052466019580700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A296725 (n + 1)).toNat - A091384 (A091378 n).toNat

end

end A296674.P2126052466019580700

/-! ## A296674.P2089267899931899673

`A325400(A296725(n+1))-A091384(A156045(n))`
-/

namespace A296674.P2089267899931899673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A296725 (n + 1)).toNat - A091384 (A156045 n).toNat

end

end A296674.P2089267899931899673

/-!
# A296675: Expansion of e.g.f. 1/(1 - arcsinh(x)).

The programs for A296675, there is no canonical definition to state claims against.
-/

/-! ## A296675.P11378392461361991383

`A127757(A000255(n)+n)`
-/

namespace A296675.P11378392461361991383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A000255 n + (n : ℤ)).toNat

end

end A296675.P11378392461361991383

/-! ## A296675.P15471136249157895322

`A029144(eq[1, A126597(n+1)])`
-/

namespace A296675.P15471136249157895322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296675.P15471136249157895322

/-! ## A296675.P2090597386796781235

`A294107(A059204(n+1)+1)+1`
-/

namespace A296675.P2090597386796781235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294107 (A059204 (n + 1) + 1).toNat + 1

end

end A296675.P2090597386796781235

/-!
# A296676: Expansion of e.g.f. 1/(1 - arctanh(x)).

The programs for A296676, there is no canonical definition to state claims against.
-/

/-! ## A296676.P11971935649356515149

`A051953(A375607(n)+A000011(n))`
-/

namespace A296676.P11971935649356515149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A375607 n + A000011 n).toNat

end

end A296676.P11971935649356515149

/-! ## A296676.P8290393913960969269

`A320199(A305304(n)-A000272(n))`
-/

namespace A296676.P8290393913960969269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320199 (A305304 n - A000272 n).toNat

end

end A296676.P8290393913960969269

/-! ## A296676.P2859803414825491705

`and(A118348(n), A222254(A073478(n)))`
-/

namespace A296676.P2859803414825491705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118348 n) (A222254 (A073478 n).toNat)

end

end A296676.P2859803414825491705

/-!
# A296677: Expansion of e.g.f. arctan(arcsin(x)) (odd powers only).

The programs for A296677, there is no canonical definition to state claims against.
-/

/-! ## A296677.P12956738050661819517

`(-1)^n*A296435(Δ[n²])`
-/

namespace A296677.P12956738050661819517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A296435 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A296677.P12956738050661819517

/-! ## A296677.P3378833140613281812

`A296435(2*n+1)/A033999(n)`
-/

namespace A296677.P3378833140613281812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296435 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A296677.P3378833140613281812

/-! ## A296677.P12669651616788407601

`-A033999(n+1)*A296435(2*n+1)`
-/

namespace A296677.P12669651616788407601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A296435 (2 * n + 1))

end

end A296677.P12669651616788407601

/-! ## A296677.P18040070985792218177

`A033999(2*(n+1))*A296435(2*n+1)*A033999(n)`
-/

namespace A296677.P18040070985792218177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 1)) * A296435 (2 * n + 1) * A033999 n

end

end A296677.P18040070985792218177

/-! ## A296677.P7968300741225646310

`A296435(2*n+1)/A024275(n+1)%5`
-/

namespace A296677.P7968300741225646310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296435 (2 * n + 1) : ℚ) / (Int.tmod (A024275 (n + 1)) 5 : ℚ)

end

end A296677.P7968300741225646310

/-!
# A296678: Expansion of e.g.f. arctanh(arcsin(x)) (odd powers only).

The programs for A296678, there is no canonical definition to state claims against.
-/

/-! ## A296678.P99537836051112904

`A189815(Δ[n²])`
-/

namespace A296678.P99537836051112904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A296678.P99537836051112904

/-! ## A296678.P6249503656884046197

`or(1, A189815(A005408(n)))`
-/

namespace A296678.P6249503656884046197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A189815 (A005408 n).toNat)

end

end A296678.P6249503656884046197

/-! ## A296678.P14483863839181890545

`record[A189815(A000265(n+1))]`
-/

namespace A296678.P14483863839181890545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189815 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296678.P14483863839181890545

/-! ## A296678.P8815426502562750328

`record[A189815(or(1, A105964(n)))]`
-/

namespace A296678.P8815426502562750328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189815 (Int.lor 1 (A105964 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296678.P8815426502562750328

/-! ## A296678.P6360101193459150204

`record[A189815(n+1)/A033999(n)]`
-/

namespace A296678.P6360101193459150204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189815 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296678.P6360101193459150204

/-!
# A296679: Expansion of e.g.f. arcsinh(arctanh(x)) (odd powers only).

The programs for A296679, there is no canonical definition to state claims against.
-/

/-! ## A296679.P9553083509091987182

`lcm(A012231(A001096(n)), A096717(n))`
-/

namespace A296679.P9553083509091987182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A012231 (A001096 n).toNat) (A096717 n)

end

end A296679.P9553083509091987182

/-! ## A296679.P13760236429013197503

`lcm(A012248(n), A096717(A001096(n)))`
-/

namespace A296679.P13760236429013197503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A012248 n) (A096717 (A001096 n).toNat)

end

end A296679.P13760236429013197503

/-!
# A296681: Number of n X n 0..1 arrays with each 1 adjacent to 1, 2 or 3 king-move neighboring 1's.

The programs for A296681, there is no canonical definition to state claims against.
-/

/-! ## A296681.P15953071229659510806

`A296688(∑[4*n]+1)`
-/

namespace A296681.P15953071229659510806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296681.P15953071229659510806

/-! ## A296681.P7825706004728536976

`record[A003982(n)*A296688(n+1)]`
-/

namespace A296681.P7825706004728536976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296681.P7825706004728536976

/-! ## A296681.P5310024260645191077

`record[gcd(A112467(n), A296688(n+1))]`
-/

namespace A296681.P5310024260645191077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A296688 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296681.P5310024260645191077

/-! ## A296681.P599240931627808648

`gcd(A296688(A001844(n)), A300715(n))`
-/

namespace A296681.P599240931627808648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296688 (A001844 n).toNat) (A300715 n)

end

end A296681.P599240931627808648

/-! ## A296681.P127977145100494458

`A296688(A001844(n))+A280492(n+1)`
-/

namespace A296681.P127977145100494458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A001844 n).toNat + A280492 (n + 1)

end

end A296681.P127977145100494458

/-!
# A296682: Number of n X 2 0..1 arrays with each 1 adjacent to 1, 2 or 3 king-move neighboring 1s.

The programs for A296682, there is no canonical definition to state claims against.
-/

/-! ## A296682.P17489037724679134702

`A296688(∑[n+1]+2)`
-/

namespace A296682.P17489037724679134702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296682.P17489037724679134702

/-! ## A296682.P14024162402259512252

`record[gcd(A296688(n+2), A334781(n))]`
-/

namespace A296682.P14024162402259512252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296688 (n + 2)) (A334781 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296682.P14024162402259512252

/-! ## A296682.P7823236723936660777

`A296688(A000096(n)+3)%A218660(n+1)`
-/

namespace A296682.P7823236723936660777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296688 (A000096 n + 3).toNat) (A218660 (n + 1))

end

end A296682.P7823236723936660777

/-! ## A296682.P12518895024445413369

`record[A296688(Δ[A003453(n+5)])]`
-/

namespace A296682.P12518895024445413369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296682.P12518895024445413369

/-! ## A296682.P7610414558716172361

`record[A296688(n+3)/A218638(n+1)]`
-/

namespace A296682.P7610414558716172361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296688 (n + 3) : ℚ) / (A218638 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296682.P7610414558716172361

/-!
# A296683: Number of n X 3 0..1 arrays with each 1 adjacent to 1, 2 or 3 king-move neighboring 1s.

The programs for A296683, there is no canonical definition to state claims against.
-/

/-! ## A296683.P3115907199109005957

`A296688(∑[n+2]+4)`
-/

namespace A296683.P3115907199109005957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296683.P3115907199109005957

/-! ## A296683.P16419721845284643566

`A296688(A167614(n+1))+A185284(n)`
-/

namespace A296683.P16419721845284643566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A167614 (n + 1)).toNat + A185284 n

end

end A296683.P16419721845284643566

/-! ## A296683.P3887441224564106035

`A296688(A167614(n+1))%A205087(n)`
-/

namespace A296683.P3887441224564106035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296688 (A167614 (n + 1)).toNat) (A205087 n)

end

end A296683.P3887441224564106035

/-! ## A296683.P10899354933691129629

`lcm(A158388(n), A296688(A167614(n+1)))`
-/

namespace A296683.P10899354933691129629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A296688 (A167614 (n + 1)).toNat)

end

end A296683.P10899354933691129629

/-! ## A296683.P9287275290180219773

`A296688(A034856(n+2))%A282788(n+1)`
-/

namespace A296683.P9287275290180219773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296688 (A034856 (n + 2)).toNat) (A282788 (n + 1))

end

end A296683.P9287275290180219773

/-!
# A296684: Number of nX4 0..1 arrays with each 1 adjacent to 1, 2 or 3 king-move neighboring 1s.

The programs for A296684, there is no canonical definition to state claims against.
-/

/-! ## A296684.P4988422639590287614

`A296688(A374004(n+1))`
-/

namespace A296684.P4988422639590287614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A374004 (n + 1)).toNat

end

end A296684.P4988422639590287614

/-! ## A296684.P928394257702565127

`A296688(A141214(n)+7)`
-/

namespace A296684.P928394257702565127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A141214 n + 7).toNat

end

end A296684.P928394257702565127

/-! ## A296684.P2056097424547169869

`A296688(A167614(n+2)+1)`
-/

namespace A296684.P2056097424547169869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A167614 (n + 2) + 1).toNat

end

end A296684.P2056097424547169869

/-! ## A296684.P10752555133204170266

`A296688(A167487(n+2)-3)`
-/

namespace A296684.P10752555133204170266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A167487 (n + 2) - 3).toNat

end

end A296684.P10752555133204170266

/-! ## A296684.P2961207832108644056

`A296688(A027379(n+2))`
-/

namespace A296684.P2961207832108644056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A027379 (n + 2)).toNat

end

end A296684.P2961207832108644056

/-!
# A296685: Number of nX5 0..1 arrays with each 1 adjacent to 1, 2 or 3 king-move neighboring 1s.

The programs for A296685, there is no canonical definition to state claims against.
-/

/-! ## A296685.P2610742521301765885

`A296688(A374005(n+1))`
-/

namespace A296685.P2610742521301765885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A374005 (n + 1)).toNat

end

end A296685.P2610742521301765885

/-! ## A296685.P10979368326324199302

`A296688(A155212(n)+13)`
-/

namespace A296685.P10979368326324199302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A155212 n + 13).toNat

end

end A296685.P10979368326324199302

/-! ## A296685.P17341569066399092870

`A296688(A056000(n)+15)`
-/

namespace A296685.P17341569066399092870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A056000 n + 15).toNat

end

end A296685.P17341569066399092870

/-! ## A296685.P14462845983249512117

`A296688(A055999(n+3)-2*n)`
-/

namespace A296685.P14462845983249512117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A296685.P14462845983249512117

/-! ## A296685.P49361120348880661

`A296688(A046691(n+3))`
-/

namespace A296685.P49361120348880661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A046691 (n + 3)).toNat

end

end A296685.P49361120348880661

/-!
# A296686: Number of nX6 0..1 arrays with each 1 adjacent to 1, 2 or 3 king-move neighboring 1s.

The programs for A296686, there is no canonical definition to state claims against.
-/

/-! ## A296686.P4702397565519304787

`A296688(A374007(n+1))`
-/

namespace A296686.P4702397565519304787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A374007 (n + 1)).toNat

end

end A296686.P4702397565519304787

/-! ## A296686.P16596379765297501313

`A296688(eq[7, A131818(n+1)])`
-/

namespace A296686.P16596379765297501313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296686.P16596379765297501313

/-! ## A296686.P14869975027853540

`A296688(A052905(n+3))`
-/

namespace A296686.P14869975027853540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A052905 (n + 3)).toNat

end

end A296686.P14869975027853540

/-! ## A296686.P11732513721133665918

`A296688(eq[5, A193592(n)])`
-/

namespace A296686.P11732513721133665918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296686.P11732513721133665918

/-! ## A296686.P13496915779910934963

`A296688(A055999(n+3)+1)`
-/

namespace A296686.P13496915779910934963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A055999 (n + 3) + 1).toNat

end

end A296686.P13496915779910934963

/-!
# A296687: Number of nX7 0..1 arrays with each 1 adjacent to 1, 2 or 3 king-move neighboring 1s.

The programs for A296687, there is no canonical definition to state claims against.
-/

/-! ## A296687.P11994862404200450161

`A296688(A374008(n+1))`
-/

namespace A296687.P11994862404200450161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A374008 (n + 1)).toNat

end

end A296687.P11994862404200450161

/-! ## A296687.P2024533986174947097

`A296688(A167487(n+5))`
-/

namespace A296687.P2024533986174947097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A167487 (n + 5)).toNat

end

end A296687.P2024533986174947097

/-! ## A296687.P7456308256962375100

`A296688(A167499(n+5)+2)`
-/

namespace A296687.P7456308256962375100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A167499 (n + 5) + 2).toNat

end

end A296687.P7456308256962375100

/-! ## A296687.P2231370428404619621

`A296688(A055999(n+3)+13)`
-/

namespace A296687.P2231370428404619621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (A055999 (n + 3) + 13).toNat

end

end A296687.P2231370428404619621

/-! ## A296687.P10616324670637660882

`A296688(eq[8, A131818(n+1)])`
-/

namespace A296687.P10616324670637660882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296687.P10616324670637660882

/-!
# A296688: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 1, 2 or 3 king-move neighboring 1s.

The programs for A296688, there is no canonical definition to state claims against.
-/

/-! ## A296688.P13624712378378819649

`A219106(n+1)+A151795(A000326(n))`
-/

namespace A296688.P13624712378378819649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (n + 1) + A151795 (A000326 n).toNat

end

end A296688.P13624712378378819649

/-! ## A296688.P17834973324791408118

`A219985(n+1)+A151795(A000326(n))`
-/

namespace A296688.P17834973324791408118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (n + 1) + A151795 (A000326 n).toNat

end

end A296688.P17834973324791408118

/-! ## A296688.P8863522762690122482

`A286939(A004643(n))+A219106(n+1)`
-/

namespace A296688.P8863522762690122482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (A004643 n).toNat + A219106 (n + 1)

end

end A296688.P8863522762690122482

/-! ## A296688.P14959646029356795162

`A286939(A004643(n))+A219985(n+1)`
-/

namespace A296688.P14959646029356795162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (A004643 n).toNat + A219985 (n + 1)

end

end A296688.P14959646029356795162

/-!
# A296689: Let phi be the one-to-one mapping between binary trees and natural numbers described in the Tychonievich link. Let a(n) = min({phi^{-1}(t)| size(t)=n}); i.e., a(n) is the rank -- starting from 0 -- of the first tree the size of which is n.

The programs for A296689, there is no canonical definition to state claims against.
-/

/-! ## A296689.P376585816957864758

`A331267(ceil(2^(n-1)))%A018342(n+1)`
-/

namespace A296689.P376585816957864758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331267 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A018342 (n + 1))

end

end A296689.P376585816957864758

/-! ## A296689.P17328215837687020946

`A259361(A247076(n)/A329040(n+1))`
-/

namespace A296689.P17328215837687020946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (SequenceMachineLib.roundAway ((A247076 n : ℚ) / (A329040 (n + 1) : ℚ))).toNat

end

end A296689.P17328215837687020946

/-! ## A296689.P10237717202828291836

`A357413(eq[A167630(2*n), A206487(2*n+5)])`
-/

namespace A296689.P10237717202828291836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167630 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357413 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296689.P10237717202828291836

/-!
# A296690: a(1) = a(2) = a(3) = 2, a(4) = 4, a(5) = a(6) = 5; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 6.

The programs for A296690, the canonical program `A296690.P4904852374906161823` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296690 has offset 1).

The definition of A296690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A296690.P4904852374906161823`, by `A296690.P4904852374906161823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A296690.P4904852374906161823

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=2, a(1)=2, a(2)=2, a(3)=4, a(4)=5, a(5)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296690

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P4904852374906161823.Spec : Prop :=
  ∀ n, (P4904852374906161823.a n : ℤ) = A296690 (n + 1)

theorem P4904852374906161823.correct : P4904852374906161823.Spec := by
  intro n
  simp only [A296690, Nat.add_sub_cancel]

end A296690

/-! ## A296690.P16898161626768776813

`A230103(A054252(3*n))+A008611(2*n)+1`
-/

namespace A296690.P16898161626768776813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230103 (A054252 (3 * n)).toNat + (A008611 (2 * n) + 1)

end

end A296690.P16898161626768776813

namespace A296690

/-- `A230103(A054252(3*n))+A008611(2*n)+1` -/
def P16898161626768776813.Spec : Prop :=
  ∀ n, P16898161626768776813.a n = A296690 (n + 1)

end A296690

/-!
# A296691: Numbers whose base-3 digits d(m), d(m-1), ... d(0) have #(rises) = #(falls); see Comments.

The programs for A296691, there is no canonical definition to state claims against.
-/

/-! ## A296691.P88812808441803392

`eq[A037801(n+1), A037818(n+1)]+1`
-/

namespace A296691.P88812808441803392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296691.P88812808441803392

/-! ## A296691.P7684450701981739044

`eq[A037810(n+1), A037826(n+1)]+1`
-/

namespace A296691.P7684450701981739044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296691.P7684450701981739044

/-! ## A296691.P12043110940416830131

`eq[A062153(n+1)-A037818(n+1), A037826(n+1)]+1`
-/

namespace A296691.P12043110940416830131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) - A037818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296691.P12043110940416830131

/-! ## A296691.P7614287113185094108

`eq[A037811(A023717(n+1)), A037826(n+1)]+1`
-/

namespace A296691.P7614287113185094108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (A023717 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296691.P7614287113185094108

/-! ## A296691.P450471638137943714

`eq[A037811(A023713(n+2)), A037826(n+1)]+1`
-/

namespace A296691.P450471638137943714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (A023713 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296691.P450471638137943714

/-! ## A296691.P14535134786906493123

`eq[A037811(A006288(n+1)), A037826(n+1)]+1`
-/

namespace A296691.P14535134786906493123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (A006288 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296691.P14535134786906493123

/-!
# A296692: Numbers whose base-3 digits d(m), d(m-1), ... d(0) have #(rises) > #(falls); see Comments.

The programs for A296692, there is no canonical definition to state claims against.
-/

/-! ## A296692.P12787339607983382055

`lt[A037818(n+1), A037801(n+1)]+1`
-/

namespace A296692.P12787339607983382055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296692.P12787339607983382055

/-! ## A296692.P14749709187771566492

`lt[A037826(n+1), A037810(n+1)]+1`
-/

namespace A296692.P14749709187771566492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296692.P14749709187771566492

/-! ## A296692.P842346938313068843

`lt[A037822(A037455(n+1)), A037801(n+1)]+1`
-/

namespace A296692.P842346938313068843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (A037455 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296692.P842346938313068843

/-! ## A296692.P8354739571633970149

`lt[A037824(A319497(n+1)), A037801(n+1)]+1`
-/

namespace A296692.P8354739571633970149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A319497 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296692.P8354739571633970149

/-!
# A296693: Numbers whose base-3 digits d(m), d(m-1), ... d(0) have #(rises) < #(falls); see Comments.

The programs for A296693, there is no canonical definition to state claims against.
-/

/-! ## A296693.P5752796373547788187

`lt[A037801(n+1), A037818(n+1)]+1`
-/

namespace A296693.P5752796373547788187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296693.P5752796373547788187

/-! ## A296693.P6273633423677204216

`lt[A037810(n+1), A037826(n+1)]+1`
-/

namespace A296693.P6273633423677204216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296693.P6273633423677204216

/-! ## A296693.P11335790841670056746

`lt[A037801(n+1), A037822(A037455(n+1))]+1`
-/

namespace A296693.P11335790841670056746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (A037455 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296693.P11335790841670056746

/-! ## A296693.P13660769306381822107

`lt[A037801(n+1), A037824(A319497(n+1))]+1`
-/

namespace A296693.P13660769306381822107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A319497 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296693.P13660769306381822107

/-!
# A296694: Numbers whose base-4 digits d(m), d(m-1), ... d(0) have #(rises) = #(falls); see Comments.

The programs for A296694, there is no canonical definition to state claims against.
-/

/-! ## A296694.P11382966218780300158

`eq[A037802(n+1), A037819(n+1)]+1`
-/

namespace A296694.P11382966218780300158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296694.P11382966218780300158

/-! ## A296694.P15276915038596456142

`eq[A037811(n+1), A037827(n+1)]+1`
-/

namespace A296694.P15276915038596456142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296694.P15276915038596456142

/-! ## A296694.P5350375744245534193

`eq[A037811(n+1), A037828(A037459(n+1))]+1`
-/

namespace A296694.P5350375744245534193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (A037459 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296694.P5350375744245534193

/-! ## A296694.P16889490929910536029

`eq[A037811(n+1), A037833(A007090(n+1))]+1`
-/

namespace A296694.P16889490929910536029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A007090 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296694.P16889490929910536029

/-! ## A296694.P18214109772579981552

`A185264(A316496(n))+A043707(n+1)`
-/

namespace A296694.P18214109772579981552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A316496 n).toNat + A043707 (n + 1)

end

end A296694.P18214109772579981552

/-!
# A296695: Numbers whose base-4 digits d(m), d(m-1), ... d(0) have #(rises) > #(falls); see Comments.

The programs for A296695, there is no canonical definition to state claims against.
-/

/-! ## A296695.P11850967651097450684

`lt[A037819(n+1), A037802(n+1)]+1`
-/

namespace A296695.P11850967651097450684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296695.P11850967651097450684

/-! ## A296695.P3230563162209231639

`lt[A037827(n+1), A037811(n+1)]+1`
-/

namespace A296695.P3230563162209231639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296695.P3230563162209231639

/-! ## A296695.P8764307564894914300

`A020725(lt[A037819(n+1), A037802(n+1)])`
-/

namespace A296695.P8764307564894914300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296695.P8764307564894914300

/-! ## A296695.P10378514777378475654

`A020725(lt[A037827(n+1), A037811(n+1)])`
-/

namespace A296695.P10378514777378475654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296695.P10378514777378475654

/-! ## A296695.P14338454478575682316

`A326178(lt[A037819(n+1), A037802(n+1)])`
-/

namespace A296695.P14338454478575682316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296695.P14338454478575682316

/-! ## A296695.P11067736212686988903

`A326178(lt[A037827(n+1), A037811(n+1)])`
-/

namespace A296695.P11067736212686988903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296695.P11067736212686988903

/-!
# A296696: Numbers whose base-4 digits d(m), d(m-1), ... d(0) have #(rises) < #(falls); see Comments.

The programs for A296696, there is no canonical definition to state claims against.
-/

/-! ## A296696.P13627073009860132879

`lt[A037802(n+1), A037819(n+1)]+1`
-/

namespace A296696.P13627073009860132879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296696.P13627073009860132879

/-! ## A296696.P13848784725573538614

`lt[A037811(n+1), A037827(n+1)]+1`
-/

namespace A296696.P13848784725573538614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296696.P13848784725573538614

/-! ## A296696.P7322911229588294896

`A020725(lt[A037802(n+1), A037819(n+1)])`
-/

namespace A296696.P7322911229588294896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296696.P7322911229588294896

/-! ## A296696.P2564297501574312567

`A020725(lt[A037811(n+1), A037827(n+1)])`
-/

namespace A296696.P2564297501574312567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296696.P2564297501574312567

/-! ## A296696.P12206000993234528649

`A326178(lt[A037802(n+1), A037819(n+1)])`
-/

namespace A296696.P12206000993234528649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296696.P12206000993234528649

/-! ## A296696.P17593576257783484080

`A326178(lt[A037811(n+1), A037827(n+1)])`
-/

namespace A296696.P17593576257783484080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296696.P17593576257783484080

/-! ## A296696.P6696438749302884787

`record[A289813(A296711(n+1))]`
-/

namespace A296696.P6696438749302884787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A296711 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296696.P6696438749302884787

/-! ## A296696.P1830236494832775298

`record[A292371(A296761(n+1))]`
-/

namespace A296696.P1830236494832775298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A296761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296696.P1830236494832775298

/-!
# A296697: Numbers whose base-5 digits d(m), d(m-1), ... d(0) have #(rises) = #(falls); see Comments.

The programs for A296697, there is no canonical definition to state claims against.
-/

/-! ## A296697.P16353261859070195631

`eq[A037803(n+1), A037820(n+1)]+1`
-/

namespace A296697.P16353261859070195631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296697.P16353261859070195631

/-! ## A296697.P3892753183351762408

`eq[A037820(A030104(n+1)), A037820(n+1)]+1`
-/

namespace A296697.P3892753183351762408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (A030104 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296697.P3892753183351762408

/-! ## A296697.P6189629526353179832

`eq[A037806(A037467(n+1)), A037820(n+1)]+1`
-/

namespace A296697.P6189629526353179832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (A037467 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296697.P6189629526353179832

/-! ## A296697.P9500438713577897783

`eq[A037807(A037468(n+1)), A037820(n+1)]+1`
-/

namespace A296697.P9500438713577897783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (A037468 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296697.P9500438713577897783

/-! ## A296697.P8271952731802201205

`A043708(A187829(n+1))`
-/

namespace A296697.P8271952731802201205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043708 (A187829 (n + 1)).toNat

end

end A296697.P8271952731802201205

/-!
# A296698: Numbers whose base-5 digits d(m), d(m-1), ... d(0) have #(rises) > #(falls); see Comments.

The programs for A296698, there is no canonical definition to state claims against.
-/

/-! ## A296698.P5487764400442666276

`lt[A037820(n+1), A037803(n+1)]+1`
-/

namespace A296698.P5487764400442666276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296698.P5487764400442666276

/-! ## A296698.P11961945672415236698

`lt[A037828(n+1), A037812(n+1)]+1`
-/

namespace A296698.P11961945672415236698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296698.P11961945672415236698

/-! ## A296698.P12227665079029183125

`lt[A000041(n), A329976(A255690(n))]`
-/

namespace A296698.P12227665079029183125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329976 (A255690 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296698.P12227665079029183125

/-! ## A296698.P9584984310921325637

`lt[A240579(n), A240579(A255690(n))]`
-/

namespace A296698.P9584984310921325637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240579 (A255690 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296698.P9584984310921325637

/-! ## A296698.P16000873904762823319

`lt[A241383(n), A241383(A255690(n))]`
-/

namespace A296698.P16000873904762823319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241383 (A255690 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296698.P16000873904762823319

/-!
# A296699: Numbers whose base-5 digits d(m), d(m-1), ... d(0) have #(rises) < #(falls); see Comments.

The programs for A296699, there is no canonical definition to state claims against.
-/

/-! ## A296699.P12596729330406781984

`lt[A037803(n+1), A037820(n+1)]+1`
-/

namespace A296699.P12596729330406781984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296699.P12596729330406781984

/-! ## A296699.P2410716942704153826

`lt[A037812(n+1), A037828(n+1)]+1`
-/

namespace A296699.P2410716942704153826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296699.P2410716942704153826

/-! ## A296699.P8223730105855615629

`lt[A071241(A165033(n)), A055951(n)]`
-/

namespace A296699.P8223730105855615629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071241 (A165033 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296699.P8223730105855615629

/-! ## A296699.P2431610171658748174

`lt[A025804(4*A165033(n)), A055951(n)]`
-/

namespace A296699.P2431610171658748174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025804 (4 * A165033 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296699.P2431610171658748174

/-! ## A296699.P8087519106558589764

`lt[A002260(A036820(n)), A055951(n)]`
-/

namespace A296699.P8087519106558589764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A036820 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296699.P8087519106558589764

