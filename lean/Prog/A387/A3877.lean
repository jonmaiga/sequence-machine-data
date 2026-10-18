import SequenceMachineLib.Basic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A387704: Size of the maximum subset S of {1,2,...,n} such that for all a, b, c in S not necessarily distinct, a+b+c is unique up to permutation.

The programs for A387704, there is no canonical definition to state claims against.
-/

/-! ## A387704.P7254106695076848226

`A055980(∑[A143584(2*n+5)])-3`
-/

namespace A387704.P7254106695076848226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143584 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 3

end

end A387704.P7254106695076848226

/-! ## A387704.P7506551227593796920

`floor(log2(A173153(n+1)))`
-/

namespace A387704.P7506551227593796920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A173153 (n + 1)).toNat

end

end A387704.P7506551227593796920

/-! ## A387704.P14640447746167915555

`A000523(A173153(n+1))`
-/

namespace A387704.P14640447746167915555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A173153 (n + 1)).toNat

end

end A387704.P14640447746167915555

/-! ## A387704.P1146874091215713654

`A284248(A352246(n))`
-/

namespace A387704.P1146874091215713654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284248 (A352246 n).toNat

end

end A387704.P1146874091215713654

/-! ## A387704.P6367483139899823724

`A000523(A330236(n+1)+A000523(n+1))`
-/

namespace A387704.P6367483139899823724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A330236 (n + 1) + A000523 (n + 1)).toNat

end

end A387704.P6367483139899823724

/-! ## A387704.P5539664792612220036

`A000523(A391623(n+1)+A000523(n+1))`
-/

namespace A387704.P5539664792612220036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A391623 (n + 1) + A000523 (n + 1)).toNat

end

end A387704.P5539664792612220036

/-! ## A387704.P7613320470549522607

`A244317(A172233(n+1))`
-/

namespace A387704.P7613320470549522607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244317 (A172233 (n + 1)).toNat

end

end A387704.P7613320470549522607

/-! ## A387704.P7660572137902489345

`A345379(A326848(n+1))`
-/

namespace A387704.P7660572137902489345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A326848 (n + 1)).toNat

end

end A387704.P7660572137902489345

/-! ## A387704.P9528860399266458733

`A111972(A130228(n+1))`
-/

namespace A387704.P9528860399266458733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A130228 (n + 1)).toNat

end

end A387704.P9528860399266458733

/-!
# A387707: a(n) = A337345(A023196(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A023196 lists the nondeficient numbers, numbers k such that sigma(k) >= 2*k.

The programs for A387707, the canonical program `A387707.P1369852853517030567` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387707 has offset 1).

The definition of A387707 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A387707.P1369852853517030567

`A337345(A023196(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A387707

/-- `A337345(A023196(n+1))` -/
def P1369852853517030567.Spec : Prop :=
  ∀ n, P1369852853517030567.a n = A387707 (n + 1)

theorem P1369852853517030567.correct : P1369852853517030567.Spec := by
  intro n
  simp only [A387707, Nat.add_sub_cancel]

end A387707

/-!
# A387708: a(n) = A337541(A023196(n)), where A337541 is the number of divisors d of n for which sigma(A003961(d)) >= 2*sigma(d), and A023196 lists the nondeficient numbers, numbers k such that sigma(k) >= 2*k.

The programs for A387708, there is no canonical definition to state claims against.
-/

/-! ## A387708.P456126070693026510

`A337541(A023196(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387708.P456126070693026510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (A023196 (n + 1)).toNat

end

end A387708.P456126070693026510

/-!
# A387710: Numbers k for which A003959(k) < 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

The programs for A387710, the canonical program `A387710.P1843881796241010643` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387710 has offset 1).

The definition of A387710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387710.P1843881796241010643

`lt[A003959(n+1), 2*(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A387710

/-- `lt[A003959(n+1), 2*(n+1)]+1` -/
def P1843881796241010643.Spec : Prop :=
  ∀ n, (P1843881796241010643.a n : ℤ) = A387710 (n + 1)

theorem P1843881796241010643.correct : P1843881796241010643.Spec := by
  intro n
  simp only [A387710, Nat.add_sub_cancel]

end A387710

/-! ## A387710.P15716832538443258416

`lt[A348507(n+1), n+1]+1`
-/

namespace A387710.P15716832538443258416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387710.P15716832538443258416

namespace A387710

/-- `lt[A348507(n+1), n+1]+1` -/
def P15716832538443258416.Spec : Prop :=
  ∀ n, (P15716832538443258416.a n : ℤ) = A387710 (n + 1)

end A387710

/-! ## A387710.P11199308616447796940

`lt[A003415(n²), A000326(n)]`
-/

namespace A387710.P11199308616447796940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387710.P11199308616447796940

namespace A387710

/-- `lt[A003415(n²), A000326(n)]` -/
def P11199308616447796940.Spec : Prop :=
  ∀ n, (P11199308616447796940.a n : ℤ) = A387710 (n + 1)

end A387710

/-! ## A387710.P10933475651632160432

`lt[A003415(n), A123731(n)]`
-/

namespace A387710.P10933475651632160432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387710.P10933475651632160432

namespace A387710

/-- `lt[A003415(n), A123731(n)]` -/
def P10933475651632160432.Spec : Prop :=
  ∀ n, (P10933475651632160432.a n : ℤ) = A387710 (n + 1)

end A387710

/-! ## A387710.P17751045878524647690

`lt[A000578(A211110(n)), A008578(n+1)]`
-/

namespace A387710.P17751045878524647690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A211110 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387710.P17751045878524647690

namespace A387710

/-- `lt[A000578(A211110(n)), A008578(n+1)]` -/
def P17751045878524647690.Spec : Prop :=
  ∀ n, (P17751045878524647690.a n : ℤ) = A387710 (n + 1)

end A387710

/-!
# A387711: Numbers k for which A003959(k) > 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

The programs for A387711, the canonical program `A387711.P8670169942287001865` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387711 has offset 1).

The definition of A387711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387711.P8670169942287001865

`lt[2*(n+1), A003959(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A387711

/-- `lt[2*(n+1), A003959(n+1)]+1` -/
def P8670169942287001865.Spec : Prop :=
  ∀ n, (P8670169942287001865.a n : ℤ) = A387711 (n + 1)

theorem P8670169942287001865.correct : P8670169942287001865.Spec := by
  intro n
  simp only [A387711, Nat.add_sub_cancel]

end A387711

/-! ## A387711.P1208272330288901104

`∪[A387712(n+1), A387713(n+1)]`
-/

namespace A387711.P1208272330288901104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387711.P1208272330288901104

namespace A387711

/-- `∪[A387712(n+1), A387713(n+1)]` -/
def P1208272330288901104.Spec : Prop :=
  ∀ n, (P1208272330288901104.a n : ℤ) = A387711 (n + 1)

end A387711

/-! ## A387711.P5388415183621998152

`lt[A003946(A387715(n+1))%2, 1]+1`
-/

namespace A387711.P5388415183621998152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003946 (A387715 (n + 1)).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387711.P5388415183621998152

namespace A387711

/-- `lt[A003946(A387715(n+1))%2, 1]+1` -/
def P5388415183621998152.Spec : Prop :=
  ∀ n, (P5388415183621998152.a n : ℤ) = A387711 (n + 1)

end A387711

/-! ## A387711.P4828052513824820853

`lt[n+1, A348507(n+1)]+1`
-/

namespace A387711.P4828052513824820853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387711.P4828052513824820853

namespace A387711

/-- `lt[n+1, A348507(n+1)]+1` -/
def P4828052513824820853.Spec : Prop :=
  ∀ n, (P4828052513824820853.a n : ℤ) = A387711 (n + 1)

end A387711

/-! ## A387711.P6294276152119194673

`lt[A000328(3*(n+1)), A303299(A003415(3*n))]`
-/

namespace A387711.P6294276152119194673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303299 (A003415 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387711.P6294276152119194673

namespace A387711

/-- `lt[A000328(3*(n+1)), A303299(A003415(3*n))]` -/
def P6294276152119194673.Spec : Prop :=
  ∀ n, (P6294276152119194673.a n : ℤ) = A387711 (n + 1)

end A387711

/-!
# A387712: Primitive terms of A387711: numbers k for which A003959(k) > 2*k, but for all whose proper divisors d|k, d

The programs for A387712, there is no canonical definition to state claims against.
-/

/-! ## A387712.P1667264379181751212

`eq[1, A387715(n+1)]+1`
-/

namespace A387712.P1667264379181751212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387715 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387712.P1667264379181751212

/-!
# A387713: Nonprimitive terms of A387711: numbers k for which A387715(k) > 1.

The programs for A387713, there is no canonical definition to state claims against.
-/

/-! ## A387713.P11000733874532859807

`lt[1, A387715(n+1)]+1`
-/

namespace A387713.P11000733874532859807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387715 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387713.P11000733874532859807

/-! ## A387713.P7935169467363633132

`lt[A268676(A383685(n+1)), A168036(n)]`
-/

namespace A387713.P7935169467363633132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (A383685 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387713.P7935169467363633132

/-! ## A387713.P11099918885176808797

`lt[A053669(A017221(3*(n+1))), A168036(n)]`
-/

namespace A387713.P11099918885176808797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A017221 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387713.P11099918885176808797

/-! ## A387713.P14723264953354957604

`lt[A268676(A245444(3*n+4)), A168036(n)]`
-/

namespace A387713.P14723264953354957604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (A245444 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387713.P14723264953354957604

/-! ## A387713.P9467098102191324676

`lt[A060950(A306469(2*n+1)), A168036(n)]`
-/

namespace A387713.P9467098102191324676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A306469 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387713.P9467098102191324676

/-! ## A387713.P12596999338125818403

`lt[A034074(n+3), A034074(A003415(n))]`
-/

namespace A387713.P12596999338125818403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034074 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034074 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387713.P12596999338125818403

/-! ## A387713.P11332928603722945044

`lt[A010874(A006567(n+1)), A168036(n)]`
-/

namespace A387713.P11332928603722945044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A006567 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387713.P11332928603722945044

/-! ## A387713.P4859389480044782340

`lt[A049076(A116371(n+1)), A168036(n)]`
-/

namespace A387713.P4859389480044782340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A116371 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387713.P4859389480044782340

/-! ## A387713.P12195030803806447501

`filter[A387113(n+2), A265186(#)]`
-/

namespace A387713.P12195030803806447501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A265186 (f1 j).toNat = 1) n)

end

end A387713.P12195030803806447501

/-! ## A387713.P5903194711893682400

`filter[A387113(n+2), A267520(#)]`
-/

namespace A387713.P5903194711893682400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267520 (f1 j).toNat = 1) n)

end

end A387713.P5903194711893682400

/-!
# A387714: E.g.f. A(x) satisfies A(x) = 1 + x*exp(x^2)*A(x)^2.

The programs for A387714, there is no canonical definition to state claims against.
-/

/-! ## A387714.P326152460795752639

`A117657(n!²)`
-/

namespace A387714.P326152460795752639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117657 (Nat.factorial n ^ 2)

end

end A387714.P326152460795752639

/-!
# A387715: Number of divisors d of n for which A003959(d) > 2*d, where A003959 is multiplicative with a(p^e) = (p+1)^e.

The programs for A387715, there is no canonical definition to state claims against.
-/

/-! ## A387715.P6071428846612352255

`A384480(A036583(3*n)*A368413(3*(n+1)))`
-/

namespace A387715.P6071428846612352255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384480 (A036583 (3 * n) * A368413 (3 * (n + 1))).toNat

end

end A387715.P6071428846612352255

/-! ## A387715.P16159340601251098133

`A056626(A298822(n+1))`
-/

namespace A387715.P16159340601251098133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (A298822 (n + 1)).toNat

end

end A387715.P16159340601251098133

/-! ## A387715.P6678308803456636017

`C(A048105(n+1), A337565(A009766(n)))`
-/

namespace A387715.P6678308803456636017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048105 (n + 1)).toNat (A337565 (A009766 n).toNat).toNat

end

end A387715.P6678308803456636017

/-! ## A387715.P10294680216427065822

`A244413(∏{d}[n+1, #])`
-/

namespace A387715.P10294680216427065822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244413 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A387715.P10294680216427065822

/-! ## A387715.P15277038079572201895

`val(A252755(∏{d}[n+1, #]), 8)`
-/

namespace A387715.P15277038079572201895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A252755 (∏ d ∈ Nat.divisors (f1 n), d)).toNat 8

end

end A387715.P15277038079572201895

/-!
# A387717: Greatest deficient divisor of n.

The programs for A387717, there is no canonical definition to state claims against.
-/

/-! ## A387717.P9589005678607039972

`(n+1)/A387718(n+1)`
-/

namespace A387717.P9589005678607039972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A387718 (n + 1) : ℚ)

end

end A387717.P9589005678607039972

/-! ## A387717.P171770270721436188

`(n+1)/A378660(A004928(n+1))`
-/

namespace A387717.P171770270721436188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A378660 (A004928 (n + 1)).toNat : ℚ)

end

end A387717.P171770270721436188

/-! ## A387717.P12734763811015887793

`A125746(n+1)-A000122(A078408(n+3))`
-/

namespace A387717.P12734763811015887793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1) - A000122 (A078408 (n + 3)).toNat

end

end A387717.P12734763811015887793

/-! ## A387717.P18131648720176840147

`(n+1)/A325534(∑{d}[n+1, val(#², n+1+#)]+1)%A364674(2*n+3)`
-/

namespace A387717.P18131648720176840147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.tmod (A325534 (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2) (n + 1 + d) + 1)) (A364674 (2 * n + 3)) : ℚ)

end

end A387717.P18131648720176840147

/-! ## A387717.P16342409035149901603

`(n+1)/A346553(A346553(A340827(n+1)))`
-/

namespace A387717.P16342409035149901603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A346553 (A346553 (A340827 (n + 1)).toNat).toNat : ℚ)

end

end A387717.P16342409035149901603

/-!
# A387718: Smallest divisor d of n such that n/d is deficient, i.e., sigma(n/d) < 2*(n/d).

The programs for A387718, there is no canonical definition to state claims against.
-/

/-! ## A387718.P16974988494098895599

`(n+1)/A387717(n+1)`
-/

namespace A387718.P16974988494098895599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A387717 (n + 1) : ℚ)

end

end A387718.P16974988494098895599

/-! ## A387718.P15654146638570778684

`A378660(A256017(n+1))`
-/

namespace A387718.P15654146638570778684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378660 (A256017 (n + 1)).toNat

end

end A387718.P15654146638570778684

/-! ## A387718.P10981030682425381775

`A378660(A004928(n+1))`
-/

namespace A387718.P10981030682425381775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378660 (A004928 (n + 1)).toNat

end

end A387718.P10981030682425381775

/-! ## A387718.P3495647729295479040

`A378660(A033286(n+1))`
-/

namespace A387718.P3495647729295479040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378660 (A033286 (n + 1)).toNat

end

end A387718.P3495647729295479040

/-! ## A387718.P2740948678385681542

`A378660(A117495(n+2))`
-/

namespace A387718.P2740948678385681542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378660 (A117495 (n + 2)).toNat

end

end A387718.P2740948678385681542

/-! ## A387718.P15081924471756803595

`A378660(A306192(n+2))`
-/

namespace A387718.P15081924471756803595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378660 (A306192 (n + 2)).toNat

end

end A387718.P15081924471756803595

/-! ## A387718.P6478691492784864438

`A378660(A135639(n+1))`
-/

namespace A387718.P6478691492784864438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378660 (A135639 (n + 1)).toNat

end

end A387718.P6478691492784864438

/-! ## A387718.P4740757307904966382

`A378660(A009474(n+1))`
-/

namespace A387718.P4740757307904966382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378660 (A009474 (n + 1)).toNat

end

end A387718.P4740757307904966382

/-! ## A387718.P12182941098640545686

`A378660(A080697(n+1))`
-/

namespace A387718.P12182941098640545686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378660 (A080697 (n + 1)).toNat

end

end A387718.P12182941098640545686

/-!
# A387720: Numbers k for which A107758(k) < 2*k, where A107758 is sigma+, multiplicative function with a(p^e) = 1+sigma(p^e).

The programs for A387720, there is no canonical definition to state claims against.
-/

/-! ## A387720.P3710228084503036447

`∩[A084820(n+1), A336358(n+1)]`
-/

namespace A387720.P3710228084503036447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387720.P3710228084503036447

/-! ## A387720.P1157855915341748323

`∩[A084820(n+1), A381432(n+1)]`
-/

namespace A387720.P1157855915341748323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387720.P1157855915341748323

/-! ## A387720.P6288332739765018938

`lt[A000203(A103889(n+1)), A156246(n+1)]`
-/

namespace A387720.P6288332739765018938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A103889 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387720.P6288332739765018938

/-! ## A387720.P2119121131167271817

`lt[A000217(A331885(n)), A053602(n)]`
-/

namespace A387720.P2119121131167271817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A331885 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387720.P2119121131167271817

/-! ## A387720.P16875184538250878277

`lt[A325353(n), A325353(A348717(n+1))]`
-/

namespace A387720.P16875184538250878277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325353 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325353 (A348717 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387720.P16875184538250878277

/-!
# A387721: Numbers k for which A107758(k) > 2*k, where A107758 is sigma+, multiplicative function with a(p^e) = 1+sigma(p^e).

The programs for A387721, there is no canonical definition to state claims against.
-/

/-! ## A387721.P8230552576132661468

`∪[A387722(n+1), A387723(n+1)]`
-/

namespace A387721.P8230552576132661468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387721.P8230552576132661468

/-! ## A387721.P13594133223516478336

`lt[A367298(A375228(n+1)), A022559(n)]`
-/

namespace A387721.P13594133223516478336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367298 (A375228 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387721.P13594133223516478336

/-! ## A387721.P9706200662945288019

`lt[A000265(2*(n+2)), A270613(A395096(n))]`
-/

namespace A387721.P9706200662945288019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (A395096 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387721.P9706200662945288019

/-! ## A387721.P17513645900621698764

`A024619(lt[A034807(3*n+4), A372119(3*n+1)])`
-/

namespace A387721.P17513645900621698764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372119 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A387721.P17513645900621698764

/-! ## A387721.P953060351339290738

`lt[A328578(A284463(n+3)), A284463(n)]`
-/

namespace A387721.P953060351339290738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (A284463 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387721.P953060351339290738

/-!
# A387722: Numbers k for which A107758(k) > 2*k, but for all whose proper divisors d|k, d

The programs for A387722, there is no canonical definition to state claims against.
-/

/-! ## A387722.P3214297265397681330

`∩[A108574(n+1), A387721(n+1)]`
-/

namespace A387722.P3214297265397681330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387722.P3214297265397681330

/-! ## A387722.P1003427439655352248

`∩[A351096(n+1), A387721(n+1)]`
-/

namespace A387722.P1003427439655352248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387722.P1003427439655352248

/-! ## A387722.P123348680895329450

`∩[A175515(n+1), A387721(n+1)]`
-/

namespace A387722.P123348680895329450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387722.P123348680895329450

/-! ## A387722.P14266827035770400292

`∩[A383016(n+1), A387721(n+1)]`
-/

namespace A387722.P14266827035770400292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387722.P14266827035770400292

/-! ## A387722.P7375202412653245832

`∩[A162730(n+1), A387721(n+1)]`
-/

namespace A387722.P7375202412653245832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387722.P7375202412653245832

/-!
# A387723: Numbers k for which A107758(k) > 2*k, and also for some of the proper divisors d|k, d 2*d.

The programs for A387723, there is no canonical definition to state claims against.
-/

/-! ## A387723.P12761071934186160743

`∩[A355571(n+1), A387721(n+1)]`
-/

namespace A387723.P12761071934186160743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387723.P12761071934186160743

/-! ## A387723.P4704623403649693946

`∩[A387721(n+1), A390278(n+1)]`
-/

namespace A387723.P4704623403649693946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387723.P4704623403649693946

/-! ## A387723.P4549484600833057088

`∩[A102467(n+1), A355670(n+1)]`
-/

namespace A387723.P4549484600833057088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387723.P4549484600833057088

/-! ## A387723.P7840773793302963327

`∩[A102467(n+1), A324694(n+1)]`
-/

namespace A387723.P7840773793302963327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387723.P7840773793302963327

/-! ## A387723.P16807176230559692309

`∩[A033942(n+1), A340325(n+1)]`
-/

namespace A387723.P16807176230559692309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387723.P16807176230559692309

/-!
# A387725: Number of unitary divisors d of n for which A107758(d) > 2*d, where A107758 is sigma+, multiplicative function with a(p^e) = 1+sigma(p^e).

The programs for A387725, there is no canonical definition to state claims against.
-/

/-! ## A387725.P15889140930297956128

`A335484(A335442(n+1))%A335449(n+1)`
-/

namespace A387725.P15889140930297956128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335484 (A335442 (n + 1)).toNat) (A335449 (n + 1))

end

end A387725.P15889140930297956128

/-! ## A387725.P12017701427103773646

`and(A093319(n+1), A327517(n+1))`
-/

namespace A387725.P12017701427103773646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093319 (n + 1)) (A327517 (n + 1))

end

end A387725.P12017701427103773646

/-! ## A387725.P6170007090551347627

`and(A093319(n+1), A376504(n+1))`
-/

namespace A387725.P6170007090551347627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093319 (n + 1)) (A376504 (n + 1))

end

end A387725.P6170007090551347627

/-! ## A387725.P8283113441604160114

`A111820(n)%A293810(n+1)`
-/

namespace A387725.P8283113441604160114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111820 n) (A293810 (n + 1))

end

end A387725.P8283113441604160114

/-! ## A387725.P12266226157417205858

`A382835(n)%A345992(n+1)`
-/

namespace A387725.P12266226157417205858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382835 n) (A345992 (n + 1))

end

end A387725.P12266226157417205858

/-!
# A387726: Powerful part of the sum of divisors of n: a(n) = A057521(A000203(n)).

The programs for A387726, the canonical program `A387726.P10728749570483671412` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387726 has offset 1).

The definition of A387726 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A387726.P18344658017813317507

`A064549(A387156(n+1))`
-/

namespace A387726.P18344658017813317507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A387156 (n + 1)).toNat

end

end A387726.P18344658017813317507

namespace A387726

/-- `A064549(A387156(n+1))` -/
def P18344658017813317507.Spec : Prop :=
  ∀ n, P18344658017813317507.a n = A387726 (n + 1)

end A387726

/-! ## A387726.P10728749570483671412

`A057521(A000203(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A387726

/-- `A057521(A000203(n+1))` -/
def P10728749570483671412.Spec : Prop :=
  ∀ n, P10728749570483671412.a n = A387726 (n + 1)

theorem P10728749570483671412.correct : P10728749570483671412.Spec := by
  intro n
  simp only [A387726, Nat.add_sub_cancel]

end A387726

/-! ## A387726.P1293557622798291560

`A057521(∑{d}[n+1, #])`
-/

namespace A387726.P1293557622798291560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A387726.P1293557622798291560

namespace A387726

/-- `A057521(∑{d}[n+1, #])` -/
def P1293557622798291560.Spec : Prop :=
  ∀ n, P1293557622798291560.a n = A387726 (n + 1)

end A387726

/-! ## A387726.P16045625157396794764

`A057521(A001065(n+1)+n+1)`
-/

namespace A387726.P16045625157396794764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A387726.P16045625157396794764

namespace A387726

/-- `A057521(A001065(n+1)+n+1)` -/
def P16045625157396794764.Spec : Prop :=
  ∀ n, P16045625157396794764.a n = A387726 (n + 1)

end A387726

/-! ## A387726.P15853674755072605947

`A057521(A326187(n+1)+A003557(n+1))`
-/

namespace A387726.P15853674755072605947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A326187 (n + 1) + A003557 (n + 1)).toNat

end

end A387726.P15853674755072605947

namespace A387726

/-- `A057521(A326187(n+1)+A003557(n+1))` -/
def P15853674755072605947.Spec : Prop :=
  ∀ n, P15853674755072605947.a n = A387726 (n + 1)

end A387726

/-! ## A387726.P15132592525724662512

`A057521(A326184(n+1)+A057521(n+1))`
-/

namespace A387726.P15132592525724662512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A326184 (n + 1) + A057521 (n + 1)).toNat

end

end A387726.P15132592525724662512

namespace A387726

/-- `A057521(A326184(n+1)+A057521(n+1))` -/
def P15132592525724662512.Spec : Prop :=
  ∀ n, P15132592525724662512.a n = A387726 (n + 1)

end A387726

/-! ## A387726.P4570178209763058633

`A057521(A069290((n+1)²))`
-/

namespace A387726.P4570178209763058633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A069290 ((n + 1) ^ 2)).toNat

end

end A387726.P4570178209763058633

namespace A387726

/-- `A057521(A069290((n+1)²))` -/
def P4570178209763058633.Spec : Prop :=
  ∀ n, P4570178209763058633.a n = A387726 (n + 1)

end A387726

/-! ## A387726.P2364859356333018524

`A057521(A057521(A069290((n+1)*(n+1))))`
-/

namespace A387726.P2364859356333018524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A057521 (A069290 ((n + 1) * (n + 1))).toNat).toNat

end

end A387726.P2364859356333018524

namespace A387726

/-- `A057521(A057521(A069290((n+1)*(n+1))))` -/
def P2364859356333018524.Spec : Prop :=
  ∀ n, P2364859356333018524.a n = A387726 (n + 1)

end A387726

/-!
# A387727: Numbers k such that the powerful part of the sum of divisors of k (A387726) is greater than or equal to k.

The programs for A387727, there is no canonical definition to state claims against.
-/

/-! ## A387727.P2216700002114300466

`A180097(n+1)%A004811(A339195(n))`
-/

namespace A387727.P2216700002114300466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180097 (n + 1)) (A004811 (A339195 n).toNat)

end

end A387727.P2216700002114300466

/-! ## A387727.P4878859243280520921

`A254881(A008833(n+3))+A180097(n+1)`
-/

namespace A387727.P4878859243280520921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254881 (A008833 (n + 3)).toNat + A180097 (n + 1)

end

end A387727.P4878859243280520921

/-! ## A387727.P10791394738400883254

`A059811(A007498(n+1))*A180097(n+1)`
-/

namespace A387727.P10791394738400883254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (A007498 (n + 1)).toNat * A180097 (n + 1)

end

end A387727.P10791394738400883254

/-! ## A387727.P6294809844632127029

`A180097(n+1)/A027642(A224535(n+1))`
-/

namespace A387727.P6294809844632127029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180097 (n + 1) : ℚ) / (A027642 (A224535 (n + 1)).toNat : ℚ)

end

end A387727.P6294809844632127029

/-! ## A387727.P676440440932864958

`A180097(A000027(n+1))^A027642(A224535(n+1))`
-/

namespace A387727.P676440440932864958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180097 (A000027 (n + 1)).toNat : ℚ) ^ (A027642 (A224535 (n + 1)).toNat : ℤ)

end

end A387727.P676440440932864958

/-! ## A387727.P15863628627942915874

`A180097(n+1)+A008683(A387729(n+1))`
-/

namespace A387727.P15863628627942915874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180097 (n + 1) + A008683 (A387729 (n + 1)).toNat

end

end A387727.P15863628627942915874

/-! ## A387727.P18178487578534694031

`and(A033999(A141923(n+1)), A180097(n+1))`
-/

namespace A387727.P18178487578534694031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A141923 (n + 1)).toNat) (A180097 (n + 1))

end

end A387727.P18178487578534694031

/-! ## A387727.P5029611318020582062

`A180097(n+1)+A012245(A136071(2*n+3))`
-/

namespace A387727.P5029611318020582062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180097 (n + 1) + A012245 (A136071 (2 * n + 3)).toNat

end

end A387727.P5029611318020582062

/-! ## A387727.P4080357026556566126

`A180097(n+1)+A000038(A374716(n+1))`
-/

namespace A387727.P4080357026556566126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180097 (n + 1) + A000038 (A374716 (n + 1)).toNat

end

end A387727.P4080357026556566126

/-! ## A387727.P17973515230336737351

`A033999(A000290(2*n))*A180097(n+1)`
-/

namespace A387727.P17973515230336737351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000290 (2 * n)).toNat * A180097 (n + 1)

end

end A387727.P17973515230336737351

/-!
# A387728: Numbers k such that the powerful part of the sum of divisors of k (A387726) is less than k.

The programs for A387728, the canonical program `A387728.P1733724163278442984` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387728 has offset 1).

The definition of A387728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387728.P1733724163278442984

`lt[A387726(n+1), n+1]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A387728

/-- `lt[A387726(n+1), n+1]+1` -/
def P1733724163278442984.Spec : Prop :=
  ∀ n, (P1733724163278442984.a n : ℤ) = A387728 (n + 1)

theorem P1733724163278442984.correct : P1733724163278442984.Spec := by
  intro n
  simp only [A387728, Nat.add_sub_cancel]

end A387728

/-! ## A387728.P13358816843756433005

`lt[A057521(A000203(n+1)), n+1]+1`
-/

namespace A387728.P13358816843756433005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387728.P13358816843756433005

namespace A387728

/-- `lt[A057521(A000203(n+1)), n+1]+1` -/
def P13358816843756433005.Spec : Prop :=
  ∀ n, (P13358816843756433005.a n : ℤ) = A387728 (n + 1)

end A387728

/-! ## A387728.P15561719030007419783

`lt[and(1, A295879(A000203(n+1)²)), 1]+1`
-/

namespace A387728.P15561719030007419783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A295879 (A000203 (n + 1) ^ 2).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387728.P15561719030007419783

namespace A387728

/-- `lt[and(1, A295879(A000203(n+1)²)), 1]+1` -/
def P15561719030007419783.Spec : Prop :=
  ∀ n, (P15561719030007419783.a n : ℤ) = A387728 (n + 1)

end A387728

/-!
# A387732: Highly powerful numbers that are perfect powers.

The programs for A387732, there is no canonical definition to state claims against.
-/

/-! ## A387732.P11979580882701195910

`∩[A005934(n+1), A368681(n+1)]`
-/

namespace A387732.P11979580882701195910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387732.P11979580882701195910

/-! ## A387732.P4394915667297103578

`∩[A001597(n+1), A005934(n+1)]`
-/

namespace A387732.P4394915667297103578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387732.P4394915667297103578

/-! ## A387732.P12991092097586530967

`filter[A005934(n+1), A075802(#)]`
-/

namespace A387732.P12991092097586530967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A387732.P12991092097586530967

/-! ## A387732.P9886314787740501974

`filter[A349111(n+1), A075802(#)]`
-/

namespace A387732.P9886314787740501974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A387732.P9886314787740501974

/-! ## A387732.P13894019137586470895

`∩[A349111(n+1), A368681(n+1)]`
-/

namespace A387732.P13894019137586470895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387732.P13894019137586470895

/-!
# A387734: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^3*(1+x))) ).

The programs for A387734, there is no canonical definition to state claims against.
-/

/-! ## A387734.P2990593251098880302

`A387669(n)-A184974(A000045(n))`
-/

namespace A387734.P2990593251098880302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387669 n - A184974 (A000045 n).toNat

end

end A387734.P2990593251098880302

/-! ## A387734.P15172894947490758778

`A387669(n)-A079978(A200731(n))`
-/

namespace A387734.P15172894947490758778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387669 n - A079978 (A200731 n).toNat

end

end A387734.P15172894947490758778

/-! ## A387734.P16935460203284744514

`A387669(n)-A286470(A000272(n))`
-/

namespace A387734.P16935460203284744514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387669 n - A286470 (A000272 n).toNat

end

end A387734.P16935460203284744514

/-!
# A387735: Number of partitions of n such that the largest part is >= n/2 and adjacent parts differ by at least 2.

The programs for A387735, there is no canonical definition to state claims against.
-/

/-! ## A387735.P13988063436563081067

`A287355(A268188(n+1))`
-/

namespace A387735.P13988063436563081067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (A268188 (n + 1)).toNat

end

end A387735.P13988063436563081067

/-! ## A387735.P2102097474854226639

`A367329(A342497(n+1))`
-/

namespace A387735.P2102097474854226639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367329 (A342497 (n + 1)).toNat

end

end A387735.P2102097474854226639

/-! ## A387735.P10802978524019718237

`A163563(A332295(n))`
-/

namespace A387735.P10802978524019718237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A332295 n).toNat

end

end A387735.P10802978524019718237

/-! ## A387735.P6962521648781223589

`A163563(A035941(n+1))`
-/

namespace A387735.P6962521648781223589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A035941 (n + 1)).toNat

end

end A387735.P6962521648781223589

/-! ## A387735.P11269046756010197079

`A053261(A007310(n+1)%A325860(3*n+3))`
-/

namespace A387735.P11269046756010197079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053261 (Int.tmod (A007310 (n + 1)) (A325860 (3 * n + 3))).toNat

end

end A387735.P11269046756010197079

/-!
# A387736: Number of partitions of n such that the largest part is >= n/2, adjacent parts differ by at least 2, and the smallest part >= 2.

The programs for A387736, there is no canonical definition to state claims against.
-/

/-! ## A387736.P5206895600120869403

`A319951(A386638(n))`
-/

namespace A387736.P5206895600120869403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A386638 n).toNat

end

end A387736.P5206895600120869403

/-!
# A387737: Number of partitions of n such that the largest part is >= n/2 and if the partition has k parts then the smallest part is >= k.

The programs for A387737, there is no canonical definition to state claims against.
-/

/-! ## A387737.P13420002657192793981

`A292582(A056449(n))`
-/

namespace A387737.P13420002657192793981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292582 (A056449 n).toNat

end

end A387737.P13420002657192793981

/-! ## A387737.P14036473940210415407

`A292582(A285944(n))`
-/

namespace A387737.P14036473940210415407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292582 (A285944 n).toNat

end

end A387737.P14036473940210415407

/-! ## A387737.P8699237759808384197

`A292582(A288808(n))`
-/

namespace A387737.P8699237759808384197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292582 (A288808 n).toNat

end

end A387737.P8699237759808384197

/-! ## A387737.P1169750486273363374

`A292582(A108411(n+1))`
-/

namespace A387737.P1169750486273363374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292582 (A108411 (n + 1)).toNat

end

end A387737.P1169750486273363374

/-! ## A387737.P17135051395570042173

`A292582(A258439(n+1))`
-/

namespace A387737.P17135051395570042173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292582 (A258439 (n + 1)).toNat

end

end A387737.P17135051395570042173

/-!
# A387739: Number of partitions of n such that the largest part is >= n/2 and each part is congruent to 1 or 4 (mod 5).

The programs for A387739, there is no canonical definition to state claims against.
-/

/-! ## A387739.P13111715886104977435

`A329320(xor(A001285(n+3), A316194(n+1)))`
-/

namespace A387739.P13111715886104977435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (Int.xor (A001285 (n + 3)) (A316194 (n + 1))).toNat

end

end A387739.P13111715886104977435

/-!
# A387741: Positive integers that cannot be represented as the sum plus product of a multiset of at least two integers greater than 1.

The programs for A387741, there is no canonical definition to state claims against.
-/

/-! ## A387741.P16547783890473468497

`eq[A349615(n+1), A377128(n+1)]`
-/

namespace A387741.P16547783890473468497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387741.P16547783890473468497

/-! ## A387741.P15356600285194914523

`A254636(A077342(n+2))`
-/

namespace A387741.P15356600285194914523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254636 (A077342 (n + 2)).toNat

end

end A387741.P15356600285194914523

/-! ## A387741.P5807258674629637744

`A254636(A242474(n+2))`
-/

namespace A387741.P5807258674629637744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254636 (A242474 (n + 2)).toNat

end

end A387741.P5807258674629637744

/-! ## A387741.P5449393902258805156

`A254636(A351374(n+2))`
-/

namespace A387741.P5449393902258805156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254636 (A351374 (n + 2)).toNat

end

end A387741.P5449393902258805156

/-! ## A387741.P17494966476297427255

`eq[A151660(n), A255361(n)]`
-/

namespace A387741.P17494966476297427255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387741.P17494966476297427255

/-!
# A387742: a(n) = (1/2) * Sum_{k=0..n-1} binomial(4*n,4*k+2).

The programs for A387742, the canonical program `A387742.P12791655691872336082` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387742 has offset 0).

The definition of A387742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387742.P12791655691872336082

`12*a(n-1)+64*a(n-2)` with `a(0)=0, a(1)=3, a(2)=28`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387742

/-- `12*a(n-1)+64*a(n-2)` -/
def P12791655691872336082.Spec : Prop :=
  ∀ n, (P12791655691872336082.a n : ℤ) = A387742 n

theorem P12791655691872336082.correct : P12791655691872336082.Spec := by
  intro n
  simp only [A387742]

end A387742

/-! ## A387742.P2646965299976703436

`A038505(A131098(n+1))`
-/

namespace A387742.P2646965299976703436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (A131098 (n + 1)).toNat

end

end A387742.P2646965299976703436

namespace A387742

/-- `A038505(A131098(n+1))` -/
def P2646965299976703436.Spec : Prop :=
  ∀ n, P2646965299976703436.a n = A387742 n

end A387742

/-! ## A387742.P16688678377769252151

`A038504(A008574(n)-1)`
-/

namespace A387742.P16688678377769252151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (A008574 n - 1).toNat

end

end A387742.P16688678377769252151

namespace A387742

/-- `A038504(A008574(n)-1)` -/
def P16688678377769252151.Spec : Prop :=
  ∀ n, P16688678377769252151.a n = A387742 n

end A387742

/-! ## A387742.P8329012776263108109

`record[A009545(2*n)+A009545(n)]`
-/

namespace A387742.P8329012776263108109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (2 * n) + A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387742.P8329012776263108109

namespace A387742

/-- `record[A009545(2*n)+A009545(n)]` -/
def P8329012776263108109.Spec : Prop :=
  ∀ n, P8329012776263108109.a n = A387742 n

end A387742

/-! ## A387742.P812983782935024709

`record[A033999(3*(n+1))*A038505(2*n+1)]`
-/

namespace A387742.P812983782935024709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (3 * (n + 1)) * A038505 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387742.P812983782935024709

namespace A387742

/-- `record[A033999(3*(n+1))*A038505(2*n+1)]` -/
def P812983782935024709.Spec : Prop :=
  ∀ n, P812983782935024709.a n = A387742 n

end A387742

/-! ## A387742.P17266519632617679297

`A038505(A004273(A004277(n)))`
-/

namespace A387742.P17266519632617679297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (A004273 (A004277 n).toNat).toNat

end

end A387742.P17266519632617679297

namespace A387742

/-- `A038505(A004273(A004277(n)))` -/
def P17266519632617679297.Spec : Prop :=
  ∀ n, P17266519632617679297.a n = A387742 n

end A387742

/-!
# A387743: a(n) = (1/5) * Sum_{k=0..n-1} binomial(5*n,5*k+1).

The programs for A387743, the canonical program `A387743.P5774746120698566391` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387743 has offset 0).

The definition of A387743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387743.P5774746120698566391

`21*a(n-1)+353*a(n-2)-32*a(n-3)` with `a(0)=0, a(1)=1, a(2)=44`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387743

/-- `21*a(n-1)+353*a(n-2)-32*a(n-3)` -/
def P5774746120698566391.Spec : Prop :=
  ∀ n, P5774746120698566391.a n = A387743 n

theorem P5774746120698566391.correct : P5774746120698566391.Spec := by
  intro n
  simp only [A387743]

end A387743

/-!
# A387744: a(n) = (1/5) * Sum_{k=0..n-1} binomial(5*n,5*k+2).

The programs for A387744, the canonical program `A387744.P3944545666817136554` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387744 has offset 0).

The definition of A387744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387744.P3944545666817136554

`21*a(n-1)+353*a(n-2)-32*a(n-3)` with `a(0)=0, a(1)=2, a(2)=33`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387744

/-- `21*a(n-1)+353*a(n-2)-32*a(n-3)` -/
def P3944545666817136554.Spec : Prop :=
  ∀ n, P3944545666817136554.a n = A387744 n

theorem P3944545666817136554.correct : P3944545666817136554.Spec := by
  intro n
  simp only [A387744]

end A387744

/-!
# A387756: a(n) = Sum_{k=0..n} (-1)^k * binomial(5*n-k+1,n-k).

The programs for A387756, there is no canonical definition to state claims against.
-/

/-! ## A387756.P17587427566285905501

`A092879(A062725(n))`
-/

namespace A387756.P17587427566285905501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (A062725 n).toNat

end

end A387756.P17587427566285905501

/-! ## A387756.P5820480458959594698

`A158909(A062728(n))`
-/

namespace A387756.P5820480458959594698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158909 (A062728 n).toNat

end

end A387756.P5820480458959594698

/-! ## A387756.P9971415226095859479

`A092879(A000217(3*n)+n)`
-/

namespace A387756.P9971415226095859479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A387756.P9971415226095859479

/-! ## A387756.P5241605845830251911

`A109244(A125201(n+1))`
-/

namespace A387756.P5241605845830251911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A125201 (n + 1)).toNat

end

end A387756.P5241605845830251911

/-! ## A387756.P10468992852304978977

`A201635(A139272(n+1))`
-/

namespace A387756.P10468992852304978977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A139272 (n + 1)).toNat

end

end A387756.P10468992852304978977

/-!
# A387760: Numbers k such that 64 * 3^k - 1 is prime.

The programs for A387760, there is no canonical definition to state claims against.
-/

/-! ## A387760.P7192898224186419707

`A170898(A007067(4^n-1))`
-/

namespace A387760.P7192898224186419707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170898 (A007067 (4 ^ n - 1)).toNat

end

end A387760.P7192898224186419707

/-!
# A387764: a(n) = Sum_{k=0..n} 2^k * binomial(2*k+1,2*n-2*k).

The programs for A387764, the canonical program `A387764.P8004577650379743226` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387764 has offset 0).

The definition of A387764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387764.P8004577650379743226

`4*a(n-1)+8*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=48`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387764

/-- `4*a(n-1)+8*a(n-3)-4*a(n-4)` -/
def P8004577650379743226.Spec : Prop :=
  ∀ n, P8004577650379743226.a n = A387764 n

theorem P8004577650379743226.correct : P8004577650379743226.Spec := by
  intro n
  simp only [A387764]

end A387764

/-! ## A387764.P2259139234730234907

`A079534(A054719(n+1))`
-/

namespace A387764.P2259139234730234907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079534 (A054719 (n + 1)).toNat

end

end A387764.P2259139234730234907

namespace A387764

/-- `A079534(A054719(n+1))` -/
def P2259139234730234907.Spec : Prop :=
  ∀ n, P2259139234730234907.a n = A387764 n

end A387764

/-!
# A387767: a(n) = Sum_{k=0..n} 2^k * binomial(2*k+1,2*n-2*k+1).

The programs for A387767, the canonical program `A387767.P15140854620593512084` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387767 has offset 0).

The definition of A387767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387767.P15140854620593512084

`4*a(n-1)+8*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=6, a(2)=22, a(3)=96`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387767

/-- `4*a(n-1)+8*a(n-3)-4*a(n-4)` -/
def P15140854620593512084.Spec : Prop :=
  ∀ n, P15140854620593512084.a n = A387767 n

theorem P15140854620593512084.correct : P15140854620593512084.Spec := by
  intro n
  simp only [A387767]

end A387767

/-! ## A387767.P18308972686347590777

`A374512(2*n+1)+A108485(n)`
-/

namespace A387767.P18308972686347590777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374512 (2 * n + 1) + A108485 n

end

end A387767.P18308972686347590777

namespace A387767

/-- `A374512(2*n+1)+A108485(n)` -/
def P18308972686347590777.Spec : Prop :=
  ∀ n, P18308972686347590777.a n = A387767 n

end A387767

/-! ## A387767.P16500844138254194574

`A374512(2*n+1)+A374512(2*n)`
-/

namespace A387767.P16500844138254194574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374512 (2 * n + 1) + A374512 (2 * n)

end

end A387767.P16500844138254194574

namespace A387767

/-- `A374512(2*n+1)+A374512(2*n)` -/
def P16500844138254194574.Spec : Prop :=
  ∀ n, P16500844138254194574.a n = A387767 n

end A387767

/-! ## A387767.P16207389286738302835

`A387764(n+1)+A108485(n)-A108485(n+1)`
-/

namespace A387767.P16207389286738302835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387764 (n + 1) + (A108485 n - A108485 (n + 1))

end

end A387767.P16207389286738302835

namespace A387767

/-- `A387764(n+1)+A108485(n)-A108485(n+1)` -/
def P16207389286738302835.Spec : Prop :=
  ∀ n, P16207389286738302835.a n = A387767 n

end A387767

/-!
# A387768: a(n) = Sum_{k=0..floor(n/2)} 2^k * binomial(2*k+1,2*n-4*k+1).

The programs for A387768, there is no canonical definition to state claims against.
-/

/-! ## A387768.P12915513247758179395

`A387765(n+1)+A387762(n)-A387762(n+1)`
-/

namespace A387768.P12915513247758179395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387765 (n + 1) + (A387762 n - A387762 (n + 1))

end

end A387768.P12915513247758179395

/-!
# A387769: a(n) = Sum_{k=0..floor(n/3)} 2^k * binomial(2*k+1,2*n-6*k+1).

The programs for A387769, there is no canonical definition to state claims against.
-/

/-! ## A387769.P9028361146627696143

`A387766(n+1)+A387763(n)-A387763(n+1)`
-/

namespace A387769.P9028361146627696143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387766 (n + 1) + (A387763 n - A387763 (n + 1))

end

end A387769.P9028361146627696143

/-!
# A387774: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^3*(1+x)^2)) ).

The programs for A387774, there is no canonical definition to state claims against.
-/

/-! ## A387774.P12312955969049345049

`A369599(n)-A044940(A007613(n))`
-/

namespace A387774.P12312955969049345049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369599 n - A044940 (A007613 n).toNat

end

end A387774.P12312955969049345049

/-! ## A387774.P9852356591629153026

`A369599(n)-A184974(A000045(n))`
-/

namespace A387774.P9852356591629153026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369599 n - A184974 (A000045 n).toNat

end

end A387774.P9852356591629153026

/-! ## A387774.P1966249912532992946

`A369599(n)-A079978(A200731(n))`
-/

namespace A387774.P1966249912532992946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369599 n - A079978 (A200731 n).toNat

end

end A387774.P1966249912532992946

/-!
# A387776: Primes p = 1 (mod 8) for which the quartic Gauss sum is larger than the quadratic Gauss sum.

The programs for A387776, there is no canonical definition to state claims against.
-/

/-! ## A387776.P17671107055536714387

`∩[A156284(n+1), A211432(n)]`
-/

namespace A387776.P17671107055536714387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211432 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387776.P17671107055536714387

/-! ## A387776.P9950271560107394164

`A007519(A186154(n+1)^A284098(n+1))`
-/

namespace A387776.P9950271560107394164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (SequenceMachineLib.roundAway ((A186154 (n + 1) : ℚ) ^ (A284098 (n + 1) : ℤ))).toNat

end

end A387776.P9950271560107394164

/-!
# A387777: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^3*(1+x)^3)) ).

The programs for A387777, there is no canonical definition to state claims against.
-/

/-! ## A387777.P11122746748122735464

`A387671(n)-A184974(A000045(n))`
-/

namespace A387777.P11122746748122735464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387671 n - A184974 (A000045 n).toNat

end

end A387777.P11122746748122735464

/-! ## A387777.P13638274701136194467

`A387671(n)-A079978(A200731(n))`
-/

namespace A387777.P13638274701136194467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387671 n - A079978 (A200731 n).toNat

end

end A387777.P13638274701136194467

/-! ## A387777.P16875296533068034400

`A387671(n)-A286470(A000272(n))`
-/

namespace A387777.P16875296533068034400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387671 n - A286470 (A000272 n).toNat

end

end A387777.P16875296533068034400

/-!
# A387778: Lower (1/2)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

The programs for A387778, the canonical program `A387778.P3671002558961841931` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387778 has offset 0).

The definition of A387778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387778.P3671002558961841931

`3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=10, a(4)=27`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387778

/-- `3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` -/
def P3671002558961841931.Spec : Prop :=
  ∀ n, P3671002558961841931.a n = A387778 n

theorem P3671002558961841931.correct : P3671002558961841931.Spec := by
  intro n
  simp only [A387778]

end A387778

/-! ## A387778.P14975115597750431962

`A004695(2*(n+1))`
-/

namespace A387778.P14975115597750431962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (2 * (n + 1))

end

end A387778.P14975115597750431962

namespace A387778

/-- `A004695(2*(n+1))` -/
def P14975115597750431962.Spec : Prop :=
  ∀ n, P14975115597750431962.a n = A387778 n

end A387778

/-! ## A387778.P15826556139077342391

`A173434(2*(n+1))`
-/

namespace A387778.P15826556139077342391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (2 * (n + 1))

end

end A387778.P15826556139077342391

namespace A387778

/-- `A173434(2*(n+1))` -/
def P15826556139077342391.Spec : Prop :=
  ∀ n, P15826556139077342391.a n = A387778 n

end A387778

/-! ## A387778.P600589507536660785

`A173673(4*(n+1))`
-/

namespace A387778.P600589507536660785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (4 * (n + 1))

end

end A387778.P600589507536660785

namespace A387778

/-- `A173673(4*(n+1))` -/
def P600589507536660785.Spec : Prop :=
  ∀ n, P600589507536660785.a n = A387778 n

end A387778

/-! ## A387778.P7393688103856214204

`∑[record[A106511(n+1)]]`
-/

namespace A387778.P7393688103856214204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387778.P7393688103856214204

namespace A387778

/-- `∑[record[A106511(n+1)]]` -/
def P7393688103856214204.Spec : Prop :=
  ∀ n, P7393688103856214204.a n = A387778 n

end A387778

/-! ## A387778.P5276680348567116624

`∑[A106511(2*(n+1))]`
-/

namespace A387778.P5276680348567116624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387778.P5276680348567116624

namespace A387778

/-- `∑[A106511(2*(n+1))]` -/
def P5276680348567116624.Spec : Prop :=
  ∀ n, P5276680348567116624.a n = A387778 n

end A387778

/-! ## A387778.P11103601869061166150

`A147997(2*(n+1))-1`
-/

namespace A387778.P11103601869061166150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (2 * (n + 1)) - 1

end

end A387778.P11103601869061166150

namespace A387778

/-- `A147997(2*(n+1))-1` -/
def P11103601869061166150.Spec : Prop :=
  ∀ n, P11103601869061166150.a n = A387778 n

end A387778

/-! ## A387778.P568706793988967069

`A104221(2*(n+1))/2`
-/

namespace A387778.P568706793988967069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104221 (2 * (n + 1)) : ℚ) / 2

end

end A387778.P568706793988967069

namespace A387778

/-- `A104221(2*(n+1))/2` -/
def P568706793988967069.Spec : Prop :=
  ∀ n, P568706793988967069.a n = (A387778 n : ℚ)

end A387778

/-! ## A387778.P3595834819389039866

`A376716(n)-A079978(n)`
-/

namespace A387778.P3595834819389039866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376716 n - A079978 n

end

end A387778.P3595834819389039866

namespace A387778

/-- `A376716(n)-A079978(n)` -/
def P3595834819389039866.Spec : Prop :=
  ∀ n, P3595834819389039866.a n = A387778 n

end A387778

/-! ## A387778.P18308621779137852113

`A001906(n+1)-A387779(n)`
-/

namespace A387778.P18308621779137852113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A387779 n

end

end A387778.P18308621779137852113

namespace A387778

/-- `A001906(n+1)-A387779(n)` -/
def P18308621779137852113.Spec : Prop :=
  ∀ n, P18308621779137852113.a n = A387778 n

end A387778

/-! ## A387778.P13932606632772435610

`A001654(n)+2*A115730(n)`
-/

namespace A387778.P13932606632772435610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + 2 * A115730 n

end

end A387778.P13932606632772435610

namespace A387778

/-- `A001654(n)+2*A115730(n)` -/
def P13932606632772435610.Spec : Prop :=
  ∀ n, P13932606632772435610.a n = A387778 n

end A387778

/-! ## A387778.P2389802922967632397

`A094686(2*n+1)-A079978(n+2)`
-/

namespace A387778.P2389802922967632397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (2 * n + 1) - A079978 (n + 2)

end

end A387778.P2389802922967632397

namespace A387778

/-- `A094686(2*n+1)-A079978(n+2)` -/
def P2389802922967632397.Spec : Prop :=
  ∀ n, P2389802922967632397.a n = A387778 n

end A387778

/-! ## A387778.P13283240913052524957

`A293505(2*n+1)+A293505(2*n)`
-/

namespace A387778.P13283240913052524957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293505 (2 * n + 1) + A293505 (2 * n)

end

end A387778.P13283240913052524957

namespace A387778

/-- `A293505(2*n+1)+A293505(2*n)` -/
def P13283240913052524957.Spec : Prop :=
  ∀ n, P13283240913052524957.a n = A387778 n

end A387778

/-! ## A387778.P4389259935226215895

`A227047(2*n+1)+A004697(2*n+1)`
-/

namespace A387778.P4389259935226215895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227047 (2 * n + 1) + A004697 (2 * n + 1)

end

end A387778.P4389259935226215895

namespace A387778

/-- `A227047(2*n+1)+A004697(2*n+1)` -/
def P4389259935226215895.Spec : Prop :=
  ∀ n, P4389259935226215895.a n = A387778 n

end A387778

/-! ## A387778.P17826517730837704568

`A130578(2*n+1)-A201864(2*n+1)`
-/

namespace A387778.P17826517730837704568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130578 (2 * n + 1) - A201864 (2 * n + 1)

end

end A387778.P17826517730837704568

namespace A387778

/-- `A130578(2*n+1)-A201864(2*n+1)` -/
def P17826517730837704568.Spec : Prop :=
  ∀ n, P17826517730837704568.a n = A387778 n

end A387778

/-! ## A387778.P3452229240559237863

`A173433(2*(n+1))-A173432(2*(n+1))`
-/

namespace A387778.P3452229240559237863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (2 * (n + 1)) - A173432 (2 * (n + 1))

end

end A387778.P3452229240559237863

namespace A387778

/-- `A173433(2*(n+1))-A173432(2*(n+1))` -/
def P3452229240559237863.Spec : Prop :=
  ∀ n, P3452229240559237863.a n = A387778 n

end A387778

/-! ## A387778.P12064882468574040266

`A087953(n+1)+A087953(n)-A246640(n)`
-/

namespace A387778.P12064882468574040266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (n + 1) + (A087953 n - A246640 n)

end

end A387778.P12064882468574040266

namespace A387778

/-- `A087953(n+1)+A087953(n)-A246640(n)` -/
def P12064882468574040266.Spec : Prop :=
  ∀ n, P12064882468574040266.a n = A387778 n

end A387778

/-! ## A387778.P7979791556810450686

`A087953(n+1)+A087953(n)-A032908(n+1)`
-/

namespace A387778.P7979791556810450686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (n + 1) + (A087953 n - A032908 (n + 1))

end

end A387778.P7979791556810450686

namespace A387778

/-- `A087953(n+1)+A087953(n)-A032908(n+1)` -/
def P7979791556810450686.Spec : Prop :=
  ∀ n, P7979791556810450686.a n = A387778 n

end A387778

/-! ## A387778.P16110471765079414187

`A025169(n)-A387781(n)`
-/

namespace A387778.P16110471765079414187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 n - A387781 n

end

end A387778.P16110471765079414187

namespace A387778

/-- `A025169(n)-A387781(n)` -/
def P16110471765079414187.Spec : Prop :=
  ∀ n, P16110471765079414187.a n = A387778 n

end A387778

/-! ## A387778.P11254559185852091690

`A387780(n)-A001906(n+1)`
-/

namespace A387778.P11254559185852091690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387780 n - A001906 (n + 1)

end

end A387778.P11254559185852091690

namespace A387778

/-- `A387780(n)-A001906(n+1)` -/
def P11254559185852091690.Spec : Prop :=
  ∀ n, P11254559185852091690.a n = A387778 n

end A387778

/-!
# A387779: Upper (1/2)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

The programs for A387779, the canonical program `A387779.P1712524356062452920` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387779 has offset 0).

The definition of A387779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387779.P1712524356062452920

`3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=28`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387779

/-- `3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` -/
def P1712524356062452920.Spec : Prop :=
  ∀ n, P1712524356062452920.a n = A387779 n

theorem P1712524356062452920.correct : P1712524356062452920.Spec := by
  intro n
  simp only [A387779]

end A387779

/-! ## A387779.P11252475925042594972

`∑[A108479(n)]`
-/

namespace A387779.P11252475925042594972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387779.P11252475925042594972

namespace A387779

/-- `∑[A108479(n)]` -/
def P11252475925042594972.Spec : Prop :=
  ∀ n, P11252475925042594972.a n = A387779 n

end A387779

/-! ## A387779.P12298303836065241126

`∑[A005252(2*n)]`
-/

namespace A387779.P12298303836065241126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387779.P12298303836065241126

namespace A387779

/-- `∑[A005252(2*n)]` -/
def P12298303836065241126.Spec : Prop :=
  ∀ n, P12298303836065241126.a n = A387779 n

end A387779

/-! ## A387779.P769795493739660969

`∑[A094686(2*n)]`
-/

namespace A387779.P769795493739660969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387779.P769795493739660969

namespace A387779

/-- `∑[A094686(2*n)]` -/
def P769795493739660969.Spec : Prop :=
  ∀ n, P769795493739660969.a n = A387779 n

end A387779

/-! ## A387779.P10782430941355519074

`A173173(2*(n+1))`
-/

namespace A387779.P10782430941355519074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (2 * (n + 1))

end

end A387779.P10782430941355519074

namespace A387779

/-- `A173173(2*(n+1))` -/
def P10782430941355519074.Spec : Prop :=
  ∀ n, P10782430941355519074.a n = A387779 n

end A387779

/-! ## A387779.P14552098464173064097

`A173433(2*(n+1))`
-/

namespace A387779.P14552098464173064097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (2 * (n + 1))

end

end A387779.P14552098464173064097

namespace A387779

/-- `A173433(2*(n+1))` -/
def P14552098464173064097.Spec : Prop :=
  ∀ n, P14552098464173064097.a n = A387779 n

end A387779

/-! ## A387779.P13792880302903826028

`A293014(2*(n+2))`
-/

namespace A387779.P13792880302903826028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (2 * (n + 2))

end

end A387779.P13792880302903826028

namespace A387779

/-- `A293014(2*(n+2))` -/
def P13792880302903826028.Spec : Prop :=
  ∀ n, P13792880302903826028.a n = A387779 n

end A387779

/-! ## A387779.P14248279508144555173

`A201864(2*(n+1))+1`
-/

namespace A387779.P14248279508144555173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (2 * (n + 1)) + 1

end

end A387779.P14248279508144555173

namespace A387779

/-- `A201864(2*(n+1))+1` -/
def P14248279508144555173.Spec : Prop :=
  ∀ n, P14248279508144555173.a n = A387779 n

end A387779

/-! ## A387779.P5868834882586276548

`A173673(A004766(n+1))`
-/

namespace A387779.P5868834882586276548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A004766 (n + 1)).toNat

end

end A387779.P5868834882586276548

namespace A387779

/-- `A173673(A004766(n+1))` -/
def P5868834882586276548.Spec : Prop :=
  ∀ n, P5868834882586276548.a n = A387779 n

end A387779

/-! ## A387779.P4089235716388072325

`A173673(A016813(n+1))`
-/

namespace A387779.P4089235716388072325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A016813 (n + 1)).toNat

end

end A387779.P4089235716388072325

namespace A387779

/-- `A173673(A016813(n+1))` -/
def P4089235716388072325.Spec : Prop :=
  ∀ n, P4089235716388072325.a n = A387779 n

end A387779

/-! ## A387779.P15412619615905471556

`A173673(A222945(n+1))`
-/

namespace A387779.P15412619615905471556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A222945 (n + 1)).toNat

end

end A387779.P15412619615905471556

namespace A387779

/-- `A173673(A222945(n+1))` -/
def P15412619615905471556.Spec : Prop :=
  ∀ n, P15412619615905471556.a n = A387779 n

end A387779

/-! ## A387779.P3454936365423357959

`A174618(A083030(n+2))`
-/

namespace A387779.P3454936365423357959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A083030 (n + 2)).toNat

end

end A387779.P3454936365423357959

namespace A387779

/-- `A174618(A083030(n+2))` -/
def P3454936365423357959.Spec : Prop :=
  ∀ n, P3454936365423357959.a n = A387779 n

end A387779

/-! ## A387779.P11645916028369614518

`A001906(n+1)-A387778(n)`
-/

namespace A387779.P11645916028369614518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A387778 n

end

end A387779.P11645916028369614518

namespace A387779

/-- `A001906(n+1)-A387778(n)` -/
def P11645916028369614518.Spec : Prop :=
  ∀ n, P11645916028369614518.a n = A387779 n

end A387779

/-! ## A387779.P2707862885845765776

`A094686(2*n+1)+A079978(n)`
-/

namespace A387779.P2707862885845765776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (2 * n + 1) + A079978 n

end

end A387779.P2707862885845765776

namespace A387779

/-- `A094686(2*n+1)+A079978(n)` -/
def P2707862885845765776.Spec : Prop :=
  ∀ n, P2707862885845765776.a n = A387779 n

end A387779

/-! ## A387779.P1782011757209769104

`A293552(2*n)+A079962(2*n)`
-/

namespace A387779.P1782011757209769104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (2 * n) + A079962 (2 * n)

end

end A387779.P1782011757209769104

namespace A387779

/-- `A293552(2*n)+A079962(2*n)` -/
def P1782011757209769104.Spec : Prop :=
  ∀ n, P1782011757209769104.a n = A387779 n

end A387779

/-! ## A387779.P3773420081731890224

`A147997(2*n+1)+A004695(2*n)`
-/

namespace A387779.P3773420081731890224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (2 * n + 1) + A004695 (2 * n)

end

end A387779.P3773420081731890224

namespace A387779

/-- `A147997(2*n+1)+A004695(2*n)` -/
def P3773420081731890224.Spec : Prop :=
  ∀ n, P3773420081731890224.a n = A387779 n

end A387779

/-! ## A387779.P12804823484351048372

`A131132(2*n)-A004697(2*n+1)`
-/

namespace A387779.P12804823484351048372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131132 (2 * n) - A004697 (2 * n + 1)

end

end A387779.P12804823484351048372

namespace A387779

/-- `A131132(2*n)-A004697(2*n+1)` -/
def P12804823484351048372.Spec : Prop :=
  ∀ n, P12804823484351048372.a n = A387779 n

end A387779

/-! ## A387779.P11786429638739520746

`A131132(2*n)-A293553(2*n+1)`
-/

namespace A387779.P11786429638739520746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131132 (2 * n) - A293553 (2 * n + 1)

end

end A387779.P11786429638739520746

namespace A387779

/-- `A131132(2*n)-A293553(2*n+1)` -/
def P11786429638739520746.Spec : Prop :=
  ∀ n, P11786429638739520746.a n = A387779 n

end A387779

/-! ## A387779.P15096012283979848211

`A079962(2*n+1)-A004697(2*n+1)`
-/

namespace A387779.P15096012283979848211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 (2 * n + 1) - A004697 (2 * n + 1)

end

end A387779.P15096012283979848211

namespace A387779

/-- `A079962(2*n+1)-A004697(2*n+1)` -/
def P15096012283979848211.Spec : Prop :=
  ∀ n, P15096012283979848211.a n = A387779 n

end A387779

/-! ## A387779.P4077892622219431158

`A079962(2*n+1)-A293553(2*n+1)`
-/

namespace A387779.P4077892622219431158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 (2 * n + 1) - A293553 (2 * n + 1)

end

end A387779.P4077892622219431158

namespace A387779

/-- `A079962(2*n+1)-A293553(2*n+1)` -/
def P4077892622219431158.Spec : Prop :=
  ∀ n, P4077892622219431158.a n = A387779 n

end A387779

/-!
# A387780: Lower (3/2)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

The programs for A387780, the canonical program `A387780.P16098913679345694359` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387780 has offset 0).

The definition of A387780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387780.P16098913679345694359

`3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=31, a(4)=82`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387780

/-- `3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` -/
def P16098913679345694359.Spec : Prop :=
  ∀ n, P16098913679345694359.a n = A387780 n

theorem P16098913679345694359.correct : P16098913679345694359.Spec := by
  intro n
  simp only [A387780]

end A387780

/-! ## A387780.P2932540373645063559

`A390350(2*n)`
-/

namespace A387780.P2932540373645063559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390350 (2 * n)

end

end A387780.P2932540373645063559

namespace A387780

/-- `A390350(2*n)` -/
def P2932540373645063559.Spec : Prop :=
  ∀ n, P2932540373645063559.a n = A387780 n

end A387780

/-! ## A387780.P15341447922649639671

`A279890(2*(n+1))`
-/

namespace A387780.P15341447922649639671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279890 (2 * (n + 1))

end

end A387780.P15341447922649639671

namespace A387780

/-- `A279890(2*(n+1))` -/
def P15341447922649639671.Spec : Prop :=
  ∀ n, P15341447922649639671.a n = A387780 n

end A387780

/-! ## A387780.P5112121092210871947

`∑[A286311(2*n+1)]`
-/

namespace A387780.P5112121092210871947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387780.P5112121092210871947

namespace A387780

/-- `∑[A286311(2*n+1)]` -/
def P5112121092210871947.Spec : Prop :=
  ∀ n, P5112121092210871947.a n = A387780 n

end A387780

/-! ## A387780.P3742774719336523060

`A025169(n)-A387779(n)`
-/

namespace A387780.P3742774719336523060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 n - A387779 n

end

end A387780.P3742774719336523060

namespace A387780

/-- `A025169(n)-A387779(n)` -/
def P3742774719336523060.Spec : Prop :=
  ∀ n, P3742774719336523060.a n = A387780 n

end A387780

/-! ## A387780.P15767251965548533186

`A387781(n)-A010892(n)²`
-/

namespace A387780.P15767251965548533186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387781 n - A010892 n ^ 2

end

end A387780.P15767251965548533186

namespace A387780

/-- `A387781(n)-A010892(n)²` -/
def P15767251965548533186.Spec : Prop :=
  ∀ n, P15767251965548533186.a n = A387780 n

end A387780

/-! ## A387780.P14815395162221128753

`A387778(n)+A001906(n+1)`
-/

namespace A387780.P14815395162221128753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387778 n + A001906 (n + 1)

end

end A387780.P14815395162221128753

namespace A387780

/-- `A387778(n)+A001906(n+1)` -/
def P14815395162221128753.Spec : Prop :=
  ∀ n, P14815395162221128753.a n = A387780 n

end A387780

/-! ## A387780.P13707495786918267278

`A173714(2*n+1)+A000045(2*n)`
-/

namespace A387780.P13707495786918267278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (2 * n + 1) + A000045 (2 * n)

end

end A387780.P13707495786918267278

namespace A387780

/-- `A173714(2*n+1)+A000045(2*n)` -/
def P13707495786918267278.Spec : Prop :=
  ∀ n, P13707495786918267278.a n = A387780 n

end A387780

/-! ## A387780.P10023883370236092400

`A293633(2*(n+1))+A293631(2*(n+1))`
-/

namespace A387780.P10023883370236092400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293633 (2 * (n + 1)) + A293631 (2 * (n + 1))

end

end A387780.P10023883370236092400

namespace A387780

/-- `A293633(2*(n+1))+A293631(2*(n+1))` -/
def P10023883370236092400.Spec : Prop :=
  ∀ n, P10023883370236092400.a n = A387780 n

end A387780

/-! ## A387780.P11967081816317250785

`A387778(n)+A387779(n)+A387778(n)`
-/

namespace A387780.P11967081816317250785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387778 n + (A387779 n + A387778 n)

end

end A387780.P11967081816317250785

namespace A387780

/-- `A387778(n)+A387779(n)+A387778(n)` -/
def P11967081816317250785.Spec : Prop :=
  ∀ n, P11967081816317250785.a n = A387780 n

end A387780

/-! ## A387780.P5879203388979494341

`A387778(n)+A387784(n)+A387783(n)`
-/

namespace A387780.P5879203388979494341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387778 n + (A387784 n + A387783 n)

end

end A387780.P5879203388979494341

namespace A387780

/-- `A387778(n)+A387784(n)+A387783(n)` -/
def P5879203388979494341.Spec : Prop :=
  ∀ n, P5879203388979494341.a n = A387780 n

end A387780

/-! ## A387780.P8014124232274195086

`A387778(n)-(A387779(n)-A387781(n))`
-/

namespace A387780.P8014124232274195086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387778 n - (A387779 n - A387781 n)

end

end A387780.P8014124232274195086

namespace A387780

/-- `A387778(n)-(A387779(n)-A387781(n))` -/
def P8014124232274195086.Spec : Prop :=
  ∀ n, P8014124232274195086.a n = A387780 n

end A387780

/-! ## A387780.P10096218309722948116

`A116847(n+1)+A387778(n)+A004006(n)`
-/

namespace A387780.P10096218309722948116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116847 (n + 1) + (A387778 n + A004006 n)

end

end A387780.P10096218309722948116

namespace A387780

/-- `A116847(n+1)+A387778(n)+A004006(n)` -/
def P10096218309722948116.Spec : Prop :=
  ∀ n, P10096218309722948116.a n = A387780 n

end A387780

/-! ## A387780.P984503138217385451

`A387782(n+1)+A387785(n)+A387778(n)`
-/

namespace A387780.P984503138217385451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387782 (n + 1) + (A387785 n + A387778 n)

end

end A387780.P984503138217385451

namespace A387780

/-- `A387782(n+1)+A387785(n)+A387778(n)` -/
def P984503138217385451.Spec : Prop :=
  ∀ n, P984503138217385451.a n = A387780 n

end A387780

/-! ## A387780.P13137582251815776096

`A001906(n+1)+A001906(n+1)-A387779(n)`
-/

namespace A387780.P13137582251815776096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + (A001906 (n + 1) - A387779 n)

end

end A387780.P13137582251815776096

namespace A387780

/-- `A001906(n+1)+A001906(n+1)-A387779(n)` -/
def P13137582251815776096.Spec : Prop :=
  ∀ n, P13137582251815776096.a n = A387780 n

end A387780

/-!
# A387781: Upper (3/2)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

The programs for A387781, the canonical program `A387781.P9312498711878284071` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387781 has offset 0).

The definition of A387781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387781.P9312498711878284071

`3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=2, a(1)=5, a(2)=12, a(3)=32, a(4)=83`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387781

/-- `3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` -/
def P9312498711878284071.Spec : Prop :=
  ∀ n, P9312498711878284071.a n = A387781 n

theorem P9312498711878284071.correct : P9312498711878284071.Spec := by
  intro n
  simp only [A387781]

end A387781

/-! ## A387781.P15223313152207158658

`A390351(2*n)`
-/

namespace A387781.P15223313152207158658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390351 (2 * n)

end

end A387781.P15223313152207158658

namespace A387781

/-- `A390351(2*n)` -/
def P15223313152207158658.Spec : Prop :=
  ∀ n, P15223313152207158658.a n = A387781 n

end A387781

/-! ## A387781.P1070959715530639991

`∑[record[A286390(n+1)]]`
-/

namespace A387781.P1070959715530639991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286390 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387781.P1070959715530639991

namespace A387781

/-- `∑[record[A286390(n+1)]]` -/
def P1070959715530639991.Spec : Prop :=
  ∀ n, P1070959715530639991.a n = A387781 n

end A387781

/-! ## A387781.P6273312240478227711

`∑[A286350(2*n+1)]`
-/

namespace A387781.P6273312240478227711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387781.P6273312240478227711

namespace A387781

/-- `∑[A286350(2*n+1)]` -/
def P6273312240478227711.Spec : Prop :=
  ∀ n, P6273312240478227711.a n = A387781 n

end A387781

/-! ## A387781.P12221187823692762153

`∑[A286390(2*n+1)]`
-/

namespace A387781.P12221187823692762153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286390 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387781.P12221187823692762153

namespace A387781

/-- `∑[A286390(2*n+1)]` -/
def P12221187823692762153.Spec : Prop :=
  ∀ n, P12221187823692762153.a n = A387781 n

end A387781

/-! ## A387781.P10551275115131661288

`A025169(n)-A387778(n)`
-/

namespace A387781.P10551275115131661288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 n - A387778 n

end

end A387781.P10551275115131661288

namespace A387781

/-- `A025169(n)-A387778(n)` -/
def P10551275115131661288.Spec : Prop :=
  ∀ n, P10551275115131661288.a n = A387781 n

end A387781

/-! ## A387781.P12007328756322055925

`A387779(n)+A001906(n+1)`
-/

namespace A387781.P12007328756322055925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387779 n + A001906 (n + 1)

end

end A387781.P12007328756322055925

namespace A387781

/-- `A387779(n)+A001906(n+1)` -/
def P12007328756322055925.Spec : Prop :=
  ∀ n, P12007328756322055925.a n = A387781 n

end A387781

/-! ## A387781.P16753483108895607799

`A105073(n+2)-A027941(n)`
-/

namespace A387781.P16753483108895607799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105073 (n + 2) - A027941 n

end

end A387781.P16753483108895607799

namespace A387781

/-- `A105073(n+2)-A027941(n)` -/
def P16753483108895607799.Spec : Prop :=
  ∀ n, P16753483108895607799.a n = A387781 n

end A387781

/-! ## A387781.P8729054652908294484

`A387778(n)+2*A387779(n)`
-/

namespace A387781.P8729054652908294484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387778 n + 2 * A387779 n

end

end A387781.P8729054652908294484

namespace A387781

/-- `A387778(n)+2*A387779(n)` -/
def P8729054652908294484.Spec : Prop :=
  ∀ n, P8729054652908294484.a n = A387781 n

end A387781

/-! ## A387781.P12761865376580219683

`A087953(n+2)-A000045(2*n+1)`
-/

namespace A387781.P12761865376580219683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (n + 2) - A000045 (2 * n + 1)

end

end A387781.P12761865376580219683

namespace A387781

/-- `A087953(n+2)-A000045(2*n+1)` -/
def P12761865376580219683.Spec : Prop :=
  ∀ n, P12761865376580219683.a n = A387781 n

end A387781

/-! ## A387781.P18076750080480886151

`A293633(2*(n+1))+A293632(2*(n+1))`
-/

namespace A387781.P18076750080480886151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293633 (2 * (n + 1)) + A293632 (2 * (n + 1))

end

end A387781.P18076750080480886151

namespace A387781

/-- `A293633(2*(n+1))+A293632(2*(n+1))` -/
def P18076750080480886151.Spec : Prop :=
  ∀ n, P18076750080480886151.a n = A387781 n

end A387781

/-! ## A387781.P2827230917525448768

`A387779(n)-(A387778(n)-A387780(n))`
-/

namespace A387781.P2827230917525448768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387779 n - (A387778 n - A387780 n)

end

end A387781.P2827230917525448768

namespace A387781

/-- `A387779(n)-(A387778(n)-A387780(n))` -/
def P2827230917525448768.Spec : Prop :=
  ∀ n, P2827230917525448768.a n = A387781 n

end A387781

/-! ## A387781.P475897686715236478

`A001906(n+1)+A001906(n+1)-A387778(n)`
-/

namespace A387781.P475897686715236478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + (A001906 (n + 1) - A387778 n)

end

end A387781.P475897686715236478

namespace A387781

/-- `A001906(n+1)+A001906(n+1)-A387778(n)` -/
def P475897686715236478.Spec : Prop :=
  ∀ n, P475897686715236478.a n = A387781 n

end A387781

/-!
# A387782: Lower (1/3)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

The programs for A387782, the canonical program `A387782.P7316047337897605881` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387782 has offset 1).

The definition of A387782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387782.P7316047337897605881

`3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7, a(4)=18, a(5)=48`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387782

/-- `3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` -/
def P7316047337897605881.Spec : Prop :=
  ∀ n, P7316047337897605881.a n = A387782 (n + 1)

theorem P7316047337897605881.correct : P7316047337897605881.Spec := by
  intro n
  simp only [A387782, Nat.add_sub_cancel]

end A387782

/-! ## A387782.P8990072736134016331

`A004696(2*(n+1))`
-/

namespace A387782.P8990072736134016331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (2 * (n + 1))

end

end A387782.P8990072736134016331

namespace A387782

/-- `A004696(2*(n+1))` -/
def P8990072736134016331.Spec : Prop :=
  ∀ n, P8990072736134016331.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P15269446347949510994

`A099484(n)-A121262(n)`
-/

namespace A387782.P15269446347949510994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099484 n - A121262 n

end

end A387782.P15269446347949510994

namespace A387782

/-- `A099484(n)-A121262(n)` -/
def P15269446347949510994.Spec : Prop :=
  ∀ n, P15269446347949510994.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P101787056394496146

`A387783(n)-A059841(n)`
-/

namespace A387782.P101787056394496146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387783 n - A059841 n

end

end A387782.P101787056394496146

namespace A387782

/-- `A387783(n)-A059841(n)` -/
def P101787056394496146.Spec : Prop :=
  ∀ n, P101787056394496146.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P9290207528685448457

`A387783(n)-A056594(n)*A056594(n)`
-/

namespace A387782.P9290207528685448457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387783 n - A056594 n * A056594 n

end

end A387782.P9290207528685448457

namespace A387782

/-- `A387783(n)-A056594(n)*A056594(n)` -/
def P9290207528685448457.Spec : Prop :=
  ∀ n, P9290207528685448457.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P11862110295884501038

`A099485(n)-A387783(n)`
-/

namespace A387782.P11862110295884501038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099485 n - A387783 n

end

end A387782.P11862110295884501038

namespace A387782

/-- `A099485(n)-A387783(n)` -/
def P11862110295884501038.Spec : Prop :=
  ∀ n, P11862110295884501038.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P11474747195544434686

`A387784(n)-A099483(n)`
-/

namespace A387782.P11474747195544434686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387784 n - A099483 n

end

end A387782.P11474747195544434686

namespace A387782

/-- `A387784(n)-A099483(n)` -/
def P11474747195544434686.Spec : Prop :=
  ∀ n, P11474747195544434686.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P15637114690042007751

`A001906(n+1)-A387785(n)`
-/

namespace A387782.P15637114690042007751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A387785 n

end

end A387782.P15637114690042007751

namespace A387782

/-- `A001906(n+1)-A387785(n)` -/
def P15637114690042007751.Spec : Prop :=
  ∀ n, P15637114690042007751.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P7873170331188584722

`A088305(n+1)-A387785(n)`
-/

namespace A387782.P7873170331188584722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) - A387785 n

end

end A387782.P7873170331188584722

namespace A387782

/-- `A088305(n+1)-A387785(n)` -/
def P7873170331188584722.Spec : Prop :=
  ∀ n, P7873170331188584722.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P6877684175266506123

`A192068(n+1)-A387784(n)`
-/

namespace A387782.P6877684175266506123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192068 (n + 1) - A387784 n

end

end A387782.P6877684175266506123

namespace A387782

/-- `A192068(n+1)-A387784(n)` -/
def P6877684175266506123.Spec : Prop :=
  ∀ n, P6877684175266506123.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P3343393240825661712

`A387783(n)+A387784(n)-A387785(n)`
-/

namespace A387782.P3343393240825661712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387783 n + (A387784 n - A387785 n)

end

end A387782.P3343393240825661712

namespace A387782

/-- `A387783(n)+A387784(n)-A387785(n)` -/
def P3343393240825661712.Spec : Prop :=
  ∀ n, P3343393240825661712.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P15161907547785742703

`A001906(n)-(A387785(n)-A122367(n))`
-/

namespace A387782.P15161907547785742703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - (A387785 n - A122367 n)

end

end A387782.P15161907547785742703

namespace A387782

/-- `A001906(n)-(A387785(n)-A122367(n))` -/
def P15161907547785742703.Spec : Prop :=
  ∀ n, P15161907547785742703.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P622248446923937955

`A000045(n+1)*A000204(n+1)-A387785(n)`
-/

namespace A387782.P622248446923937955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000204 (n + 1) - A387785 n

end

end A387782.P622248446923937955

namespace A387782

/-- `A000045(n+1)*A000204(n+1)-A387785(n)` -/
def P622248446923937955.Spec : Prop :=
  ∀ n, P622248446923937955.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P3070442343146745100

`A001906(n+2)-A387783(n+2)`
-/

namespace A387782.P3070442343146745100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 2) - A387783 (n + 2)

end

end A387782.P3070442343146745100

namespace A387782

/-- `A001906(n+2)-A387783(n+2)` -/
def P3070442343146745100.Spec : Prop :=
  ∀ n, P3070442343146745100.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P6241886315383438737

`A088305(n+2)-A387783(n+2)`
-/

namespace A387782.P6241886315383438737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 2) - A387783 (n + 2)

end

end A387782.P6241886315383438737

namespace A387782

/-- `A088305(n+2)-A387783(n+2)` -/
def P6241886315383438737.Spec : Prop :=
  ∀ n, P6241886315383438737.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P6983698169791287999

`A048575(n)-(A387785(n)+A122367(n))`
-/

namespace A387782.P6983698169791287999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - (A387785 n + A122367 n)

end

end A387782.P6983698169791287999

namespace A387782

/-- `A048575(n)-(A387785(n)+A122367(n))` -/
def P6983698169791287999.Spec : Prop :=
  ∀ n, P6983698169791287999.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P15916199285136195233

`A387780(n)-(A387785(n)+A387778(n))`
-/

namespace A387782.P15916199285136195233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387780 n - (A387785 n + A387778 n)

end

end A387782.P15916199285136195233

namespace A387782

/-- `A387780(n)-(A387785(n)+A387778(n))` -/
def P15916199285136195233.Spec : Prop :=
  ∀ n, P15916199285136195233.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P3658156010098747860

`A048575(n)-(A387785(n)+A001519(n+1))`
-/

namespace A387782.P3658156010098747860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - (A387785 n + A001519 (n + 1))

end

end A387782.P3658156010098747860

namespace A387782

/-- `A048575(n)-(A387785(n)+A001519(n+1))` -/
def P3658156010098747860.Spec : Prop :=
  ∀ n, P3658156010098747860.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P15466731746487202278

`A027941(n+1)-(A387785(n)+A027941(n))`
-/

namespace A387782.P15466731746487202278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1) - (A387785 n + A027941 n)

end

end A387782.P15466731746487202278

namespace A387782

/-- `A027941(n+1)-(A387785(n)+A027941(n))` -/
def P15466731746487202278.Spec : Prop :=
  ∀ n, P15466731746487202278.a n = A387782 (n + 1)

end A387782

/-! ## A387782.P10570745979748861545

`A122367(n+1)-(A387785(n)+A122367(n))`
-/

namespace A387782.P10570745979748861545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (n + 1) - (A387785 n + A122367 n)

end

end A387782.P10570745979748861545

namespace A387782

/-- `A122367(n+1)-(A387785(n)+A122367(n))` -/
def P10570745979748861545.Spec : Prop :=
  ∀ n, P10570745979748861545.a n = A387782 (n + 1)

end A387782

/-!
# A387783: Upper (1/3)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

The programs for A387783, the canonical program `A387783.P8792000688984517469` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387783 has offset 0).

The definition of A387783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387783.P8792000688984517469

`3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7, a(4)=19, a(5)=48`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387783

/-- `3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` -/
def P8792000688984517469.Spec : Prop :=
  ∀ n, P8792000688984517469.a n = A387783 n

theorem P8792000688984517469.correct : P8792000688984517469.Spec := by
  intro n
  simp only [A387783]

end A387783

/-! ## A387783.P3740542762932121566

`A293543(2*(n+1))`
-/

namespace A387783.P3740542762932121566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 (2 * (n + 1))

end

end A387783.P3740542762932121566

namespace A387783

/-- `A293543(2*(n+1))` -/
def P3740542762932121566.Spec : Prop :=
  ∀ n, P3740542762932121566.a n = A387783 n

end A387783

/-! ## A387783.P1604688727486360833

`A121262(n)+A099483(n)`
-/

namespace A387783.P1604688727486360833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + A099483 n

end

end A387783.P1604688727486360833

namespace A387783

/-- `A121262(n)+A099483(n)` -/
def P1604688727486360833.Spec : Prop :=
  ∀ n, P1604688727486360833.a n = A387783 n

end A387783

/-! ## A387783.P12163917184336974307

`A387782(n+1)+A059841(n)`
-/

namespace A387783.P12163917184336974307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387782 (n + 1) + A059841 n

end

end A387783.P12163917184336974307

namespace A387783

/-- `A387782(n+1)+A059841(n)` -/
def P12163917184336974307.Spec : Prop :=
  ∀ n, P12163917184336974307.a n = A387783 n

end A387783

/-! ## A387783.P16031561410680098228

`A387782(n+1)+A056594(n)*A056594(n)`
-/

namespace A387783.P16031561410680098228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387782 (n + 1) + A056594 n * A056594 n

end

end A387783.P16031561410680098228

namespace A387783

/-- `A387782(n+1)+A056594(n)*A056594(n)` -/
def P16031561410680098228.Spec : Prop :=
  ∀ n, P16031561410680098228.a n = A387783 n

end A387783

/-! ## A387783.P1846120465213223544

`A387785(n)-A099483(n)`
-/

namespace A387783.P1846120465213223544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387785 n - A099483 n

end

end A387783.P1846120465213223544

namespace A387783

/-- `A387785(n)-A099483(n)` -/
def P1846120465213223544.Spec : Prop :=
  ∀ n, P1846120465213223544.a n = A387783 n

end A387783

/-! ## A387783.P5668074669811878537

`A001906(n+1)-A387784(n)`
-/

namespace A387783.P5668074669811878537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A387784 n

end

end A387783.P5668074669811878537

namespace A387783

/-- `A001906(n+1)-A387784(n)` -/
def P5668074669811878537.Spec : Prop :=
  ∀ n, P5668074669811878537.a n = A387783 n

end A387783

/-! ## A387783.P883447210523191088

`A099485(n)-A387782(n+1)`
-/

namespace A387783.P883447210523191088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099485 n - A387782 (n + 1)

end

end A387783.P883447210523191088

namespace A387783

/-- `A099485(n)-A387782(n+1)` -/
def P883447210523191088.Spec : Prop :=
  ∀ n, P883447210523191088.a n = A387783 n

end A387783

/-! ## A387783.P6775282412536551024

`A387782(n+1)+A387785(n)-A387784(n)`
-/

namespace A387783.P6775282412536551024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387782 (n + 1) + (A387785 n - A387784 n)

end

end A387783.P6775282412536551024

namespace A387783

/-- `A387782(n+1)+A387785(n)-A387784(n)` -/
def P6775282412536551024.Spec : Prop :=
  ∀ n, P6775282412536551024.a n = A387783 n

end A387783

/-! ## A387783.P7878044914848341082

`A001906(n+2)-A387782(n+3)`
-/

namespace A387783.P7878044914848341082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 2) - A387782 (n + 3)

end

end A387783.P7878044914848341082

namespace A387783

/-- `A001906(n+2)-A387782(n+3)` -/
def P7878044914848341082.Spec : Prop :=
  ∀ n, P7878044914848341082.a n = A387783 n

end A387783

/-! ## A387783.P17497826558773511349

`A387785(n+2)-A048575(n+1)`
-/

namespace A387783.P17497826558773511349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387785 (n + 2) - A048575 (n + 1)

end

end A387783.P17497826558773511349

namespace A387783

/-- `A387785(n+2)-A048575(n+1)` -/
def P17497826558773511349.Spec : Prop :=
  ∀ n, P17497826558773511349.a n = A387783 n

end A387783

/-! ## A387783.P2436244746890379735

`A387785(n+2)-A122367(n+2)`
-/

namespace A387783.P2436244746890379735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387785 (n + 2) - A122367 (n + 2)

end

end A387783.P2436244746890379735

namespace A387783

/-- `A387785(n+2)-A122367(n+2)` -/
def P2436244746890379735.Spec : Prop :=
  ∀ n, P2436244746890379735.a n = A387783 n

end A387783

/-! ## A387783.P4811673523701315839

`A387782(n+1)+A056594(n²)`
-/

namespace A387783.P4811673523701315839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387782 (n + 1) + A056594 (n ^ 2)

end

end A387783.P4811673523701315839

namespace A387783

/-- `A387782(n+1)+A056594(n²)` -/
def P4811673523701315839.Spec : Prop :=
  ∀ n, P4811673523701315839.a n = A387783 n

end A387783

/-!
# A387784: Lower (2/3)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

The programs for A387784, the canonical program `A387784.P799340563457406706` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387784 has offset 0).

The definition of A387784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387784.P799340563457406706

`3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=14, a(4)=36, a(5)=96`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387784

/-- `3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` -/
def P799340563457406706.Spec : Prop :=
  ∀ n, P799340563457406706.a n = A387784 n

theorem P799340563457406706.correct : P799340563457406706.Spec := by
  intro n
  simp only [A387784]

end A387784

/-! ## A387784.P4954297114089368738

`A293545(2*(n+1))`
-/

namespace A387784.P4954297114089368738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 (2 * (n + 1))

end

end A387784.P4954297114089368738

namespace A387784

/-- `A293545(2*(n+1))` -/
def P4954297114089368738.Spec : Prop :=
  ∀ n, P4954297114089368738.a n = A387784 n

end A387784

/-! ## A387784.P1182886019889125975

`A099485(n)-A121262(n)`
-/

namespace A387784.P1182886019889125975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099485 n - A121262 n

end

end A387784.P1182886019889125975

namespace A387784

/-- `A099485(n)-A121262(n)` -/
def P1182886019889125975.Spec : Prop :=
  ∀ n, P1182886019889125975.a n = A387784 n

end A387784

/-! ## A387784.P6260740847628459263

`A387785(n)-A059841(n)`
-/

namespace A387784.P6260740847628459263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387785 n - A059841 n

end

end A387784.P6260740847628459263

namespace A387784

/-- `A387785(n)-A059841(n)` -/
def P6260740847628459263.Spec : Prop :=
  ∀ n, P6260740847628459263.a n = A387784 n

end A387784

/-! ## A387784.P11377481342566932500

`A387782(n+1)+A099483(n)`
-/

namespace A387784.P11377481342566932500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387782 (n + 1) + A099483 n

end

end A387784.P11377481342566932500

namespace A387784

/-- `A387782(n+1)+A099483(n)` -/
def P11377481342566932500.Spec : Prop :=
  ∀ n, P11377481342566932500.a n = A387784 n

end A387784

/-! ## A387784.P13928054667883354276

`A001906(n+1)-A387783(n)`
-/

namespace A387784.P13928054667883354276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A387783 n

end

end A387784.P13928054667883354276

namespace A387784

/-- `A001906(n+1)-A387783(n)` -/
def P13928054667883354276.Spec : Prop :=
  ∀ n, P13928054667883354276.a n = A387784 n

end A387784

/-! ## A387784.P16165502042397947080

`A088305(n+1)-A387783(n)`
-/

namespace A387784.P16165502042397947080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) - A387783 n

end

end A387784.P16165502042397947080

namespace A387784

/-- `A088305(n+1)-A387783(n)` -/
def P16165502042397947080.Spec : Prop :=
  ∀ n, P16165502042397947080.a n = A387784 n

end A387784

/-! ## A387784.P1464194348542798933

`A192068(n+1)-A387782(n+1)`
-/

namespace A387784.P1464194348542798933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192068 (n + 1) - A387782 (n + 1)

end

end A387784.P1464194348542798933

namespace A387784

/-- `A192068(n+1)-A387782(n+1)` -/
def P1464194348542798933.Spec : Prop :=
  ∀ n, P1464194348542798933.a n = A387784 n

end A387784

/-! ## A387784.P11412796666810480490

`A387785(n)-A056594(A047538(n+1))`
-/

namespace A387784.P11412796666810480490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387785 n - A056594 (A047538 (n + 1)).toNat

end

end A387784.P11412796666810480490

namespace A387784

/-- `A387785(n)-A056594(A047538(n+1))` -/
def P11412796666810480490.Spec : Prop :=
  ∀ n, P11412796666810480490.a n = A387784 n

end A387784

/-! ## A387784.P7423576678589527146

`A387785(n)-A056594(n)*A056594(n)`
-/

namespace A387784.P7423576678589527146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387785 n - A056594 n * A056594 n

end

end A387784.P7423576678589527146

namespace A387784

/-- `A387785(n)-A056594(n)*A056594(n)` -/
def P7423576678589527146.Spec : Prop :=
  ∀ n, P7423576678589527146.a n = A387784 n

end A387784

/-! ## A387784.P3176301951948186274

`A387782(n+1)+A387785(n)-A387783(n)`
-/

namespace A387784.P3176301951948186274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387782 (n + 1) + (A387785 n - A387783 n)

end

end A387784.P3176301951948186274

namespace A387784

/-- `A387782(n+1)+A387785(n)-A387783(n)` -/
def P3176301951948186274.Spec : Prop :=
  ∀ n, P3176301951948186274.a n = A387784 n

end A387784

/-! ## A387784.P2359717750643781777

`A387780(n)-(A387783(n)+A387778(n))`
-/

namespace A387784.P2359717750643781777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387780 n - (A387783 n + A387778 n)

end

end A387784.P2359717750643781777

namespace A387784

/-- `A387780(n)-(A387783(n)+A387778(n))` -/
def P2359717750643781777.Spec : Prop :=
  ∀ n, P2359717750643781777.a n = A387784 n

end A387784

/-! ## A387784.P4810333938971151799

`A387781(n)-(A387783(n)+A387779(n))`
-/

namespace A387784.P4810333938971151799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387781 n - (A387783 n + A387779 n)

end

end A387784.P4810333938971151799

namespace A387784

/-- `A387781(n)-(A387783(n)+A387779(n))` -/
def P4810333938971151799.Spec : Prop :=
  ∀ n, P4810333938971151799.a n = A387784 n

end A387784

/-! ## A387784.P15127495368449891422

`A387785(n)-A056594(n²)`
-/

namespace A387784.P15127495368449891422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387785 n - A056594 (n ^ 2)

end

end A387784.P15127495368449891422

namespace A387784

/-- `A387785(n)-A056594(n²)` -/
def P15127495368449891422.Spec : Prop :=
  ∀ n, P15127495368449891422.a n = A387784 n

end A387784

/-!
# A387785: Upper (2/3)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

The programs for A387785, the canonical program `A387785.P18370146105951954786` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387785 has offset 0).

The definition of A387785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387785.P18370146105951954786

`3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=14, a(4)=37, a(5)=96`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A387785

/-- `3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` -/
def P18370146105951954786.Spec : Prop :=
  ∀ n, P18370146105951954786.a n = A387785 n

theorem P18370146105951954786.correct : P18370146105951954786.Spec := by
  intro n
  simp only [A387785]

end A387785

/-! ## A387785.P2662068242995342751

`A293546(2*(n+1))`
-/

namespace A387785.P2662068242995342751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293546 (2 * (n + 1))

end

end A387785.P2662068242995342751

namespace A387785

/-- `A293546(2*(n+1))` -/
def P2662068242995342751.Spec : Prop :=
  ∀ n, P2662068242995342751.a n = A387785 n

end A387785

/-! ## A387785.P9818894448627664830

`A387784(n)+A059841(n)`
-/

namespace A387785.P9818894448627664830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387784 n + A059841 n

end

end A387785.P9818894448627664830

namespace A387785

/-- `A387784(n)+A059841(n)` -/
def P9818894448627664830.Spec : Prop :=
  ∀ n, P9818894448627664830.a n = A387785 n

end A387785

/-! ## A387785.P12256533459254724902

`A387783(n)+A099483(n)`
-/

namespace A387785.P12256533459254724902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387783 n + A099483 n

end

end A387785.P12256533459254724902

namespace A387785

/-- `A387783(n)+A099483(n)` -/
def P12256533459254724902.Spec : Prop :=
  ∀ n, P12256533459254724902.a n = A387785 n

end A387785

/-! ## A387785.P14801568381305903504

`A001906(n+1)-A387782(n+1)`
-/

namespace A387785.P14801568381305903504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A387782 (n + 1)

end

end A387785.P14801568381305903504

namespace A387785

/-- `A001906(n+1)-A387782(n+1)` -/
def P14801568381305903504.Spec : Prop :=
  ∀ n, P14801568381305903504.a n = A387785 n

end A387785

/-! ## A387785.P17539345355960979007

`A387784(n)+A056594(n)*A056594(n)`
-/

namespace A387785.P17539345355960979007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387784 n + A056594 n * A056594 n

end

end A387785.P17539345355960979007

namespace A387785

/-- `A387784(n)+A056594(n)*A056594(n)` -/
def P17539345355960979007.Spec : Prop :=
  ∀ n, P17539345355960979007.a n = A387785 n

end A387785

/-! ## A387785.P17865515725744366050

`A387778(n)+A387779(n)-A387782(n+1)`
-/

namespace A387785.P17865515725744366050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387778 n + (A387779 n - A387782 (n + 1))

end

end A387785.P17865515725744366050

namespace A387785

/-- `A387778(n)+A387779(n)-A387782(n+1)` -/
def P17865515725744366050.Spec : Prop :=
  ∀ n, P17865515725744366050.a n = A387785 n

end A387785

/-! ## A387785.P768851958378319585

`A387783(n)+A387784(n)-A387782(n+1)`
-/

namespace A387785.P768851958378319585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387783 n + (A387784 n - A387782 (n + 1))

end

end A387785.P768851958378319585

namespace A387785

/-- `A387783(n)+A387784(n)-A387782(n+1)` -/
def P768851958378319585.Spec : Prop :=
  ∀ n, P768851958378319585.a n = A387785 n

end A387785

/-! ## A387785.P12670809496760211462

`A387783(n+2)-A001519(n+2)`
-/

namespace A387785.P12670809496760211462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387783 (n + 2) - A001519 (n + 2)

end

end A387785.P12670809496760211462

namespace A387785

/-- `A387783(n+2)-A001519(n+2)` -/
def P12670809496760211462.Spec : Prop :=
  ∀ n, P12670809496760211462.a n = A387785 n

end A387785

/-! ## A387785.P3549840583161993420

`A387783(n+2)-A087123(2*n+1)`
-/

namespace A387785.P3549840583161993420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387783 (n + 2) - A087123 (2 * n + 1)

end

end A387785.P3549840583161993420

namespace A387785

/-- `A387783(n+2)-A087123(2*n+1)` -/
def P3549840583161993420.Spec : Prop :=
  ∀ n, P3549840583161993420.a n = A387785 n

end A387785

/-! ## A387785.P7500713795315970202

`A387780(n)-(A387782(n+1)+A387778(n))`
-/

namespace A387785.P7500713795315970202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387780 n - (A387782 (n + 1) + A387778 n)

end

end A387785.P7500713795315970202

namespace A387785

/-- `A387780(n)-(A387782(n+1)+A387778(n))` -/
def P7500713795315970202.Spec : Prop :=
  ∀ n, P7500713795315970202.a n = A387785 n

end A387785

/-! ## A387785.P6626154974855006288

`A387781(n)-(A387782(n+1)+A387779(n))`
-/

namespace A387785.P6626154974855006288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387781 n - (A387782 (n + 1) + A387779 n)

end

end A387785.P6626154974855006288

namespace A387785

/-- `A387781(n)-(A387782(n+1)+A387779(n))` -/
def P6626154974855006288.Spec : Prop :=
  ∀ n, P6626154974855006288.a n = A387785 n

end A387785

/-! ## A387785.P3327891685254282250

`A387784(n)+A056594(n²)`
-/

namespace A387785.P3327891685254282250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387784 n + A056594 (n ^ 2)

end

end A387785.P3327891685254282250

namespace A387785

/-- `A387784(n)+A056594(n²)` -/
def P3327891685254282250.Spec : Prop :=
  ∀ n, P3327891685254282250.a n = A387785 n

end A387785

/-!
# A387786: a(0)=2, a(1)=1, and thereafter a(n) = R(a(n-1) + a(n-2)) where R(x) = A004086(x) is the decimal digit reversal of x.

The programs for A387786, there is no canonical definition to state claims against.
-/

/-! ## A387786.P16309122940276343025

`A004086(a(n-1)+a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A387786.P16309122940276343025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A004086 (a (n - 1) + a (n - 2)).toNat

end

end A387786.P16309122940276343025

/-! ## A387786.P2827613144311957396

`A004086(1-floor(1-a(n-1)-a(n-2)))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A387786.P2827613144311957396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A004086 (1 - (1 - a (n - 1) - a (n - 2))).toNat

end

end A387786.P2827613144311957396

/-!
# A387788: Maximum value of row n of table A387615.

The programs for A387788, there is no canonical definition to state claims against.
-/

/-! ## A387788.P14350039073390571888

`(n+1)*A079277(n+2)`
-/

namespace A387788.P14350039073390571888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079277 (n + 2)

end

end A387788.P14350039073390571888

/-! ## A387788.P17493886611788308965

`lcm(A000027(n+1), A079277(n+2))`
-/

namespace A387788.P17493886611788308965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A079277 (n + 2))

end

end A387788.P17493886611788308965

/-! ## A387788.P11240514077544805504

`A206242(n+2)-A010051(n+2)`
-/

namespace A387788.P11240514077544805504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206242 (n + 2) - A010051 (n + 2)

end

end A387788.P11240514077544805504

/-! ## A387788.P10250959484205115048

`A014684(A206242(n+2))`
-/

namespace A387788.P10250959484205115048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A206242 (n + 2)).toNat

end

end A387788.P10250959484205115048

/-! ## A387788.P14226657865972732314

`lcm(A004151(n+1), A227872(A198957(n)))`
-/

namespace A387788.P14226657865972732314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004151 (n + 1)) (A227872 (A198957 n).toNat)

end

end A387788.P14226657865972732314

/-!
# A387789: a(1) = 0, a(2*n) = a(n)+1, a(2*n+1) = floor((a(n)+a(n+1))/2) for n >= 1.

The programs for A387789, there is no canonical definition to state claims against.
-/

/-! ## A387789.P3365637993037643812

`A109129(2*n+2)-A378283(A355927(n+2))`
-/

namespace A387789.P3365637993037643812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (2 * n + 2) - A378283 (A355927 (n + 2)).toNat

end

end A387789.P3365637993037643812

/-! ## A387789.P4993420772723210907

`A330944(A333219(n+1)%A327447(3*n+2))`
-/

namespace A387789.P4993420772723210907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (Int.tmod (A333219 (n + 1)) (A327447 (3 * n + 2))).toNat

end

end A387789.P4993420772723210907

/-! ## A387789.P1433120666774855354

`A124765(A178470(n)+A032022(2*(n+1)))-A087116(n)`
-/

namespace A387789.P1433120666774855354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A178470 n + A032022 (2 * (n + 1))).toNat - A087116 n

end

end A387789.P1433120666774855354

/-! ## A387789.P2203245272368875827

`A124769((n^gcd(2, ∑{e}[n, #]!))%A205478(n+1))`
-/

namespace A387789.P2203245272368875827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (Int.tmod (n ^ Nat.gcd 2 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ) (A205478 (n + 1))).toNat

end

end A387789.P2203245272368875827

/-! ## A387789.P13147724739744582621

`A007814(A333219(n+1)*A351308(n+1))`
-/

namespace A387789.P13147724739744582621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A333219 (n + 1) * A351308 (n + 1)).toNat

end

end A387789.P13147724739744582621

/-!
# A387790: Number of ways to write n as S(i) + S(j) + 2*S(k), where i,j,k are positive integers with i >= j, and S(k) is the sum of the first k primes.

The programs for A387790, there is no canonical definition to state claims against.
-/

/-! ## A387790.P9359119540172997683

`A258139(A389646(n+1)+A337454(n+1))`
-/

namespace A387790.P9359119540172997683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258139 (A389646 (n + 1) + A337454 (n + 1)).toNat

end

end A387790.P9359119540172997683

/-! ## A387790.P4098999631623717878

`A064894(A235040(2*(n+2))^A025431(n))`
-/

namespace A387790.P4098999631623717878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (SequenceMachineLib.roundAway ((A235040 (2 * (n + 2)) : ℚ) ^ (A025431 n : ℤ))).toNat

end

end A387790.P4098999631623717878

/-! ## A387790.P15977005530101887123

`A337985(A097487(n+2))`
-/

namespace A387790.P15977005530101887123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337985 (A097487 (n + 2)).toNat

end

end A387790.P15977005530101887123

/-! ## A387790.P3281952642794695057

`val(A061479(A322855(n+1))+1, 3)`
-/

namespace A387790.P3281952642794695057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061479 (A322855 (n + 1)).toNat + 1).toNat 3

end

end A387790.P3281952642794695057

/-! ## A387790.P9412812880217781900

`A368097(A337548(n))%A001462(2*n+5)`
-/

namespace A387790.P9412812880217781900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368097 (A337548 n).toNat) (A001462 (2 * n + 5))

end

end A387790.P9412812880217781900

/-!
# A387793: a(n) = Sum_{k=1..floor(n/2)} A389524(n, n - 2*k + 1).

The programs for A387793, there is no canonical definition to state claims against.
-/

/-! ## A387793.P1922620749776624457

`A000005(n+1)-A389573(n+1)`
-/

namespace A387793.P1922620749776624457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A389573 (n + 1)

end

end A387793.P1922620749776624457

/-!
# A387794: Number of fundamentally different graceful labelings of the n-centipede graph.

The programs for A387794, there is no canonical definition to state claims against.
-/

/-! ## A387794.P12294839156264988983

`ceil(A334351(n+1)/4)`
-/

namespace A387794.P12294839156264988983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334351 (n + 1) : ℚ) / 4⌉

end

end A387794.P12294839156264988983

/-! ## A387794.P3198462425169232536

`A286389(A236913(∑[n]))`
-/

namespace A387794.P3198462425169232536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 (A236913 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A387794.P3198462425169232536

/-!
# A387796: Number of fundamentally different graceful labelings of the n-cycle graph.

The programs for A387796, there is no canonical definition to state claims against.
-/

/-! ## A387796.P9150176223330306205

`A035457((∑[n+1]+1)%A128684(2*n+5))`
-/

namespace A387796.P9150176223330306205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A128684 (2 * n + 5))).toNat

end

end A387796.P9150176223330306205

/-!
# A387798: Number of fundamentally different graceful labelings of the n-gear graph.

The programs for A387798, there is no canonical definition to state claims against.
-/

/-! ## A387798.P773636107602103966

`A337795(n+3)/(4*(n+3))`
-/

namespace A387798.P773636107602103966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337795 (n + 3) : ℚ) / (4 * (n + 3) : ℚ)

end

end A387798.P773636107602103966

