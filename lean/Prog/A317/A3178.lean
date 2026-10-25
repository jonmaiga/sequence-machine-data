import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A317800: G.f. A(x) satisfies: Sum_{n>=1} ( A(x) - (-1)^n * A(-x) )^n * (-1)^n / n = 0.

The programs for A317800, there is no canonical definition to state claims against.
-/

/-! ## A317800.P10767682067308089181

`A284007(A047074(2*(n+1)))-A000984(n)`
-/

namespace A317800.P10767682067308089181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284007 (A047074 (2 * (n + 1))).toNat - A000984 n

end

end A317800.P10767682067308089181

/-! ## A317800.P5542949305704950447

`A284007(A047074(2*(n+1)))-A126869(2*n)`
-/

namespace A317800.P5542949305704950447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284007 (A047074 (2 * (n + 1))).toNat - A126869 (2 * n)

end

end A317800.P5542949305704950447

/-! ## A317800.P18179449557737207294

`A284007(A047074(2*(n+1)))-A128014(2*n)`
-/

namespace A317800.P18179449557737207294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284007 (A047074 (2 * (n + 1))).toNat - A128014 (2 * n)

end

end A317800.P18179449557737207294

/-! ## A317800.P4766739692850434448

`A284007(A047074(2*(n+1)))-A129383(2*n)`
-/

namespace A317800.P4766739692850434448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284007 (A047074 (2 * (n + 1))).toNat - A129383 (2 * n)

end

end A317800.P4766739692850434448

/-!
# A317801: G.f. A(x) satisfies: Sum_{n>=0} ( 1/A(x) - 1/(1+x)^(2*n) )^n = 1.

The programs for A317801, there is no canonical definition to state claims against.
-/

/-! ## A317801.P1276617803510139532

`A338119(or(n, a(n-1)))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A317801.P1276617803510139532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A338119 (Int.lor (n : ℤ) (a (n - 1))).toNat

end

end A317801.P1276617803510139532

/-!
# A317802: G.f. A(x) satisfies: Sum_{n>=0} ( 1/A(x) - 1/(1+x)^(3*n) )^n = 1.

The programs for A317802, there is no canonical definition to state claims against.
-/

/-! ## A317802.P17921733618603183492

`A130481(round(A179442(n+1)/sqrt(2)))`
-/

namespace A317802.P17921733618603183492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (SequenceMachineLib.roundAway ((A179442 (n + 1) : ℝ) / Real.sqrt (2 : ℝ))).toNat

end

end A317802.P17921733618603183492

/-!
# A317804: Numbers of form 2^i*12^j, with i, j >= 0.

The programs for A317804, there is no canonical definition to state claims against.
-/

/-! ## A317804.P13821424926756249009

`∩[A003586(n+1), A181818(n+1)]`
-/

namespace A317804.P13821424926756249009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P13821424926756249009

/-! ## A317804.P14586322647292113021

`∩[A007694(n+1), A181818(n+1)]`
-/

namespace A317804.P14586322647292113021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P14586322647292113021

/-! ## A317804.P8771239955209892736

`∩[A025610(n+1), A181818(n+1)]`
-/

namespace A317804.P8771239955209892736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P8771239955209892736

/-! ## A317804.P10788159641344553865

`∩[A181818(n+1), A257997(n+1)]`
-/

namespace A317804.P10788159641344553865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P10788159641344553865

/-! ## A317804.P16715347297435693671

`∩[A181818(n+1), A258023(n+1)]`
-/

namespace A317804.P16715347297435693671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P16715347297435693671

/-! ## A317804.P17816010377996950118

`∩[A181818(n+1), A283808(n+1)]`
-/

namespace A317804.P17816010377996950118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P17816010377996950118

/-! ## A317804.P4077103813407152078

`∩[A181818(n+1), A337800(n+1)]`
-/

namespace A317804.P4077103813407152078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P4077103813407152078

/-! ## A317804.P2219153576644886262

`∩[A108319(n+1), A181818(n+1)]`
-/

namespace A317804.P2219153576644886262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P2219153576644886262

/-! ## A317804.P12192972874639254240

`∩[A181818(n+1), A342950(n+1)]`
-/

namespace A317804.P12192972874639254240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P12192972874639254240

/-! ## A317804.P3241240471069046510

`∩[A181818(n+1), A308299(n+1)]`
-/

namespace A317804.P3241240471069046510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P3241240471069046510

/-! ## A317804.P12751926922372085858

`∩[A181818(n+1), A358308(n+1)]`
-/

namespace A317804.P12751926922372085858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P12751926922372085858

/-! ## A317804.P13786969826580778056

`∩[A181818(n+1), A219174(n+1)]`
-/

namespace A317804.P13786969826580778056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P13786969826580778056

/-! ## A317804.P10092971380611347400

`∩[A181818(n+1), A318400(n+1)]`
-/

namespace A317804.P10092971380611347400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317804.P10092971380611347400

/-!
# A317805: Lexicographically earliest sequence of nonnegative terms such that for any n > 0 and k > 0, a(n) AND a(n + k) <> a(n + 2*k) (where AND denotes the bitwise AND operator).

The programs for A317805, there is no canonical definition to state claims against.
-/

/-! ## A317805.P5384861970241731965

`A306446(A278330(n)+A053735(n))`
-/

namespace A317805.P5384861970241731965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (A278330 n + A053735 n).toNat

end

end A317805.P5384861970241731965

/-! ## A317805.P13426118554309457616

`∑{e}[A007694(A219046(n+1))-A157532(n+1), #]`
-/

namespace A317805.P13426118554309457616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (A219046 (n + 1)).toNat - A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A317805.P13426118554309457616

/-!
# A317808: Number of nXn 0..1 arrays with every element unequal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317808, there is no canonical definition to state claims against.
-/

/-! ## A317808.P5967475642335081663

`A317815(∑[4*n]+1)`
-/

namespace A317808.P5967475642335081663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317808.P5967475642335081663

/-! ## A317808.P10044471015397313754

`A317815(A001844(n))+char[15]`
-/

namespace A317808.P10044471015397313754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317808.P10044471015397313754

/-! ## A317808.P15485067372586066929

`A015148(n)*A317815(A001844(n))`
-/

namespace A317808.P15485067372586066929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015148 n * A317815 (A001844 n).toNat

end

end A317808.P15485067372586066929

/-! ## A317808.P18074764350870385143

`A007318(C(n, 2))*A317815(A001844(n))`
-/

namespace A317808.P18074764350870385143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A317815 (A001844 n).toNat

end

end A317808.P18074764350870385143

/-! ## A317808.P14517222952162976790

`A317815(A001844(n))%A000108(n+11)`
-/

namespace A317808.P14517222952162976790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317815 (A001844 n).toNat) (A000108 (n + 11))

end

end A317808.P14517222952162976790

/-!
# A317809: Number of nX2 0..1 arrays with every element unequal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317809, the canonical program `A317809.P4633723370072308844` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317809 has offset 1).

The definition of A317809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317809.P4633723370072308844

`2*a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=5, a(5)=10`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317809

/-- `2*a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)-a(n-6)` -/
def P4633723370072308844.Spec : Prop :=
  ∀ n, P4633723370072308844.a n = A317809 (n + 1)

theorem P4633723370072308844.correct : P4633723370072308844.Spec := by
  intro n
  simp only [A317809, Nat.add_sub_cancel]

end A317809

/-! ## A317809.P6414707595724214654

`A317735(n+1)+1`
-/

namespace A317809.P6414707595724214654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317735 (n + 1) + 1

end

end A317809.P6414707595724214654

namespace A317809

/-- `A317735(n+1)+1` -/
def P6414707595724214654.Spec : Prop :=
  ∀ n, P6414707595724214654.a n = A317809 (n + 1)

end A317809

/-! ## A317809.P8589421549484090149

`A317741(∑[n+1]+2)+1`
-/

namespace A317809.P8589421549484090149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 1

end

end A317809.P8589421549484090149

namespace A317809

/-- `A317741(∑[n+1]+2)+1` -/
def P8589421549484090149.Spec : Prop :=
  ∀ n, P8589421549484090149.a n = A317809 (n + 1)

end A317809

/-! ## A317809.P17081181860638692476

`1+A317741(A000096(n)+3)`
-/

namespace A317809.P17081181860638692476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A317741 (A000096 n + 3).toNat

end

end A317809.P17081181860638692476

namespace A317809

/-- `1+A317741(A000096(n)+3)` -/
def P17081181860638692476.Spec : Prop :=
  ∀ n, P17081181860638692476.a n = A317809 (n + 1)

end A317809

/-! ## A317809.P11183242210335779907

`1+A317741(A167614(n+1)-4)`
-/

namespace A317809.P11183242210335779907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A317741 (A167614 (n + 1) - 4).toNat

end

end A317809.P11183242210335779907

namespace A317809

/-- `1+A317741(A167614(n+1)-4)` -/
def P11183242210335779907.Spec : Prop :=
  ∀ n, P11183242210335779907.a n = A317809 (n + 1)

end A317809

/-!
# A317810: Number of nX3 0..1 arrays with every element unequal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317810, there is no canonical definition to state claims against.
-/

/-! ## A317810.P10177718018051736936

`A317815(∑[n+2]+4)`
-/

namespace A317810.P10177718018051736936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317810.P10177718018051736936

/-! ## A317810.P4953823819098151855

`or(char[4], A317815(A167614(n+1)))`
-/

namespace A317810.P4953823819098151855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317815 (A167614 (n + 1)).toNat)

end

end A317810.P4953823819098151855

/-! ## A317810.P11143002172550502194

`A057427(n+2)*A317815(A167614(n+1))`
-/

namespace A317810.P11143002172550502194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A317815 (A167614 (n + 1)).toNat

end

end A317810.P11143002172550502194

/-! ## A317810.P18275364500189082959

`A317815(A167614(n+1))%A046301(n+1)`
-/

namespace A317810.P18275364500189082959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317815 (A167614 (n + 1)).toNat) (A046301 (n + 1))

end

end A317810.P18275364500189082959

/-! ## A317810.P4293068255519733420

`A317815(A167614(n+1))+A000007(3*(n+1))`
-/

namespace A317810.P4293068255519733420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A167614 (n + 1)).toNat + A000007 (3 * (n + 1))

end

end A317810.P4293068255519733420

/-!
# A317811: Number of n X 4 0..1 arrays with every element unequal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317811, there is no canonical definition to state claims against.
-/

/-! ## A317811.P12857024096162340056

`A317815(∑[n+3]+7)`
-/

namespace A317811.P12857024096162340056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317811.P12857024096162340056

/-! ## A317811.P3314809352945061679

`A317815(A055999(n)+10)+char[24]`
-/

namespace A317811.P3314809352945061679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317811.P3314809352945061679

/-! ## A317811.P9332196545131537381

`A007318(C(2, n))*A317815(A055999(n)+10)`
-/

namespace A317811.P9332196545131537381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A317815 (A055999 n + 10).toNat

end

end A317811.P9332196545131537381

/-! ## A317811.P3664781463920478843

`A000108(and(1, 1-n))*A317815(A055999(n)+10)`
-/

namespace A317811.P3664781463920478843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (1 - (n : ℤ))).toNat * A317815 (A055999 n + 10).toNat

end

end A317811.P3664781463920478843

/-! ## A317811.P11559717098280039723

`A000108(C(2, n+2))*A317815(A055999(n)+10)`
-/

namespace A317811.P11559717098280039723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A317815 (A055999 n + 10).toNat

end

end A317811.P11559717098280039723

/-!
# A317812: Number of nX5 0..1 arrays with every element unequal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317812, there is no canonical definition to state claims against.
-/

/-! ## A317812.P1159053843285880534

`A317815(∑[n+4]+11)`
-/

namespace A317812.P1159053843285880534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A317812.P1159053843285880534

/-! ## A317812.P3422669654430386406

`and(-1, A317815(A374005(n+1)))`
-/

namespace A317812.P3422669654430386406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A317815 (A374005 (n + 1)).toNat)

end

end A317812.P3422669654430386406

/-! ## A317812.P1243761254215752806

`A317815(A374005(n+1))+A185284(n)`
-/

namespace A317812.P1243761254215752806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A374005 (n + 1)).toNat + A185284 n

end

end A317812.P1243761254215752806

/-! ## A317812.P3342270768237315080

`A317815(A167499(n+3))%A034474(n)`
-/

namespace A317812.P3342270768237315080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317815 (A167499 (n + 3)).toNat) (A034474 n)

end

end A317812.P3342270768237315080

/-! ## A317812.P956733101194636424

`gcd(A111332(n), A317815(A167499(n+3)))`
-/

namespace A317812.P956733101194636424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111332 n) (A317815 (A167499 (n + 3)).toNat)

end

end A317812.P956733101194636424

/-!
# A317813: Number of nX6 0..1 arrays with every element unequal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317813, there is no canonical definition to state claims against.
-/

/-! ## A317813.P12929083806304371998

`A317815(A374007(n+1))`
-/

namespace A317813.P12929083806304371998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A374007 (n + 1)).toNat

end

end A317813.P12929083806304371998

/-! ## A317813.P17959452138016639836

`A317815(A056115(n)+21)`
-/

namespace A317813.P17959452138016639836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A056115 n + 21).toNat

end

end A317813.P17959452138016639836

/-! ## A317813.P8072654439548193023

`A317815(Δ[A264443(n)]+10)`
-/

namespace A317813.P8072654439548193023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (f1 (n + 1) - f1 n + 10).toNat

end

end A317813.P8072654439548193023

/-! ## A317813.P2322761134145702034

`A317815(A000124(n+5)+5)`
-/

namespace A317813.P2322761134145702034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A000124 (n + 5) + 5).toNat

end

end A317813.P2322761134145702034

/-! ## A317813.P3951967480782938872

`A317815(A000096(n+4)+7)`
-/

namespace A317813.P3951967480782938872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A000096 (n + 4) + 7).toNat

end

end A317813.P3951967480782938872

/-!
# A317814: Number of n X 7 0..1 arrays with every element unequal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317814, there is no canonical definition to state claims against.
-/

/-! ## A317814.P18421385881046886767

`A317815(A374008(n+1))`
-/

namespace A317814.P18421385881046886767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A374008 (n + 1)).toNat

end

end A317814.P18421385881046886767

/-! ## A317814.P6288450962771690602

`A317815(A056119(n)+28)`
-/

namespace A317814.P6288450962771690602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A056119 n + 28).toNat

end

end A317814.P6288450962771690602

/-! ## A317814.P2925208308609224705

`A317815(A166136(n+5)+1)`
-/

namespace A317814.P2925208308609224705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A166136 (n + 5) + 1).toNat

end

end A317814.P2925208308609224705

/-! ## A317814.P8014381317074572216

`A317815(A167499(n+5)+2)`
-/

namespace A317814.P8014381317074572216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A167499 (n + 5) + 2).toNat

end

end A317814.P8014381317074572216

/-! ## A317814.P15990079388469697364

`A317815(A167614(n+5)+4)`
-/

namespace A317814.P15990079388469697364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317815 (A167614 (n + 5) + 4).toNat

end

end A317814.P15990079388469697364

/-!
# A317815: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317815, there is no canonical definition to state claims against.
-/

/-! ## A317815.P10822299257429822009

`A318423(n+1)%A320636(Δ[A173492(n)])`
-/

namespace A317815.P10822299257429822009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318423 (n + 1)) (A320636 (f1 (n + 1) - f1 n).toNat)

end

end A317815.P10822299257429822009

/-! ## A317815.P4789617744196312374

`∑{e}[A166857(A318423(n+1)), #]`
-/

namespace A317815.P4789617744196312374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166857 (A318423 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A317815.P4789617744196312374

/-! ## A317815.P4455176385450280389

`A000523(2^A318423(n+1))`
-/

namespace A317815.P4455176385450280389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A318423 (n + 1) : ℤ))).toNat

end

end A317815.P4455176385450280389

/-! ## A317815.P2396801538141630929

`A318423(n+1)+A240465(A112031(n))`
-/

namespace A317815.P2396801538141630929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (n + 1) + A240465 (A112031 n).toNat

end

end A317815.P2396801538141630929

/-! ## A317815.P16572874819569137983

`A318423(n+1)*A318423(A000124(n))`
-/

namespace A317815.P16572874819569137983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (n + 1) * A318423 (A000124 n).toNat

end

end A317815.P16572874819569137983

/-!
# A317816: Number of nXn 0..1 arrays with every element unequal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317816, there is no canonical definition to state claims against.
-/

/-! ## A317816.P5188549230245650061

`A317823(∑[4*n]+1)`
-/

namespace A317816.P5188549230245650061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317816.P5188549230245650061

/-! ## A317816.P9540040276230216155

`record[A003982(n)*A317823(n+1)]`
-/

namespace A317816.P9540040276230216155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317816.P9540040276230216155

/-! ## A317816.P3507981363031149859

`A317823(A001844(n))+A185037(n)`
-/

namespace A317816.P3507981363031149859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A001844 n).toNat + A185037 n

end

end A317816.P3507981363031149859

/-! ## A317816.P10493969237624939688

`A007318(∑[n])*A317823(A001844(n))`
-/

namespace A317816.P10493969237624939688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A317823 (A001844 n).toNat

end

end A317816.P10493969237624939688

/-! ## A317816.P6011217948643542244

`A000005(((-1)^n)²)*A317823(A001844(n))`
-/

namespace A317816.P6011217948643542244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((-1) ^ n) ^ 2).toNat * A317823 (A001844 n).toNat

end

end A317816.P6011217948643542244

/-!
# A317817: Number of nX2 0..1 arrays with every element unequal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317817, the canonical program `A317817.P2154899121196601874` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317817 has offset 1).

The definition of A317817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317817.P2154899121196601874

`3*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=5, a(2)=16, a(3)=50, a(4)=160, a(5)=511`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317817

/-- `3*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` -/
def P2154899121196601874.Spec : Prop :=
  ∀ n, P2154899121196601874.a n = A317817 (n + 1)

theorem P2154899121196601874.correct : P2154899121196601874.Spec := by
  intro n
  simp only [A317817, Nat.add_sub_cancel]

end A317817

/-! ## A317817.P64057221028599443

`A317823(∑[n+1]+2)`
-/

namespace A317817.P64057221028599443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A317817.P64057221028599443

namespace A317817

/-- `A317823(∑[n+1]+2)` -/
def P64057221028599443.Spec : Prop :=
  ∀ n, P64057221028599443.a n = A317817 (n + 1)

end A317817

/-! ## A317817.P3707637410624683268

`record[gcd(A002262(n), A317823(n+2))]`
-/

namespace A317817.P3707637410624683268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A317823 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317817.P3707637410624683268

namespace A317817

/-- `record[gcd(A002262(n), A317823(n+2))]` -/
def P3707637410624683268.Spec : Prop :=
  ∀ n, (P3707637410624683268.a n : ℤ) = A317817 (n + 1)

end A317817

/-! ## A317817.P18148311247612823094

`record[A073423(n+1)*A317823(n+3)]`
-/

namespace A317817.P18148311247612823094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (n + 1) * A317823 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317817.P18148311247612823094

namespace A317817

/-- `record[A073423(n+1)*A317823(n+3)]` -/
def P18148311247612823094.Spec : Prop :=
  ∀ n, P18148311247612823094.a n = A317817 (n + 1)

end A317817

/-! ## A317817.P3583769937251190533

`record[gcd(A114709(n), A317823(n+1))]`
-/

namespace A317817.P3583769937251190533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114709 n) (A317823 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317817.P3583769937251190533

namespace A317817

/-- `record[gcd(A114709(n), A317823(n+1))]` -/
def P3583769937251190533.Spec : Prop :=
  ∀ n, (P3583769937251190533.a n : ℤ) = A317817 (n + 1)

end A317817

/-!
# A317818: Number of nX3 0..1 arrays with every element unequal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317818, there is no canonical definition to state claims against.
-/

/-! ## A317818.P13214315619845422750

`A317823(∑[n+2]+4)`
-/

namespace A317818.P13214315619845422750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317818.P13214315619845422750

/-! ## A317818.P7975525075969282241

`A317823(A167614(n+1))+A025443(n)`
-/

namespace A317818.P7975525075969282241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A167614 (n + 1)).toNat + A025443 n

end

end A317818.P7975525075969282241

/-! ## A317818.P18011455698669165040

`A317823(A167614(n+1))^A178334(n)`
-/

namespace A317818.P18011455698669165040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317823 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A317818.P18011455698669165040

/-! ## A317818.P14090611139330470087

`A317823(A167614(n+1))%A002042(n)`
-/

namespace A317818.P14090611139330470087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317823 (A167614 (n + 1)).toNat) (A002042 n)

end

end A317818.P14090611139330470087

/-! ## A317818.P1820305392378297770

`gcd(A000038(n), A317823(A167614(n+1)))`
-/

namespace A317818.P1820305392378297770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A317823 (A167614 (n + 1)).toNat)

end

end A317818.P1820305392378297770

/-!
# A317819: Number of nX4 0..1 arrays with every element unequal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317819, there is no canonical definition to state claims against.
-/

/-! ## A317819.P13494688464738676850

`A317823(A374004(n+1))`
-/

namespace A317819.P13494688464738676850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A374004 (n + 1)).toNat

end

end A317819.P13494688464738676850

/-! ## A317819.P6339482892081587373

`A317823(A141214(n)+7)`
-/

namespace A317819.P6339482892081587373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A141214 n + 7).toNat

end

end A317819.P6339482892081587373

/-! ## A317819.P3133340332513248902

`A317823(A052905(n)+9)`
-/

namespace A317819.P3133340332513248902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A052905 n + 9).toNat

end

end A317819.P3133340332513248902

/-! ## A317819.P9068905794175166157

`A317823(A055999(n)+10)`
-/

namespace A317819.P9068905794175166157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A055999 n + 10).toNat

end

end A317819.P9068905794175166157

/-! ## A317819.P3360792134773067152

`A317823(A167614(n+2)+1)`
-/

namespace A317819.P3360792134773067152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A167614 (n + 2) + 1).toNat

end

end A317819.P3360792134773067152

/-!
# A317820: Number of nX5 0..1 arrays with every element unequal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317820, there is no canonical definition to state claims against.
-/

/-! ## A317820.P142842983513435032

`A317823(A374005(n+1))`
-/

namespace A317820.P142842983513435032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A374005 (n + 1)).toNat

end

end A317820.P142842983513435032

/-! ## A317820.P533631169732205934

`A317823(A167499(n+3))`
-/

namespace A317820.P533631169732205934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A167499 (n + 3)).toNat

end

end A317820.P533631169732205934

/-! ## A317820.P11166847195005797423

`A317823(A155212(n)+13)`
-/

namespace A317820.P11166847195005797423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A155212 n + 13).toNat

end

end A317820.P11166847195005797423

/-! ## A317820.P8379185310079169627

`A317823(A056000(n)+15)`
-/

namespace A317820.P8379185310079169627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A056000 n + 15).toNat

end

end A317820.P8379185310079169627

/-! ## A317820.P11614196815131312906

`A317823(A000096(n+4)-(n-1))`
-/

namespace A317820.P11614196815131312906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A317820.P11614196815131312906

/-!
# A317821: Number of n X 6 0..1 arrays with every element unequal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317821, there is no canonical definition to state claims against.
-/

/-! ## A317821.P13113921259054678773

`A317823(A374007(n+1))`
-/

namespace A317821.P13113921259054678773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A374007 (n + 1)).toNat

end

end A317821.P13113921259054678773

/-! ## A317821.P8544641287424503460

`A317823(A167499(n+4)+1)`
-/

namespace A317821.P8544641287424503460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A167499 (n + 4) + 1).toNat

end

end A317821.P8544641287424503460

/-! ## A317821.P5110205722125471541

`A317823(A052905(n+3))`
-/

namespace A317821.P5110205722125471541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A052905 (n + 3)).toNat

end

end A317821.P5110205722125471541

/-! ## A317821.P17695860829417577070

`A317823(Δ[A023545(n+2)]-1)`
-/

namespace A317821.P17695860829417577070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (f1 (n + 1) - f1 n - 1).toNat

end

end A317821.P17695860829417577070

/-! ## A317821.P2388274568917123373

`record[A317823(A052905(A008611(n)))]`
-/

namespace A317821.P2388274568917123373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A052905 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317821.P2388274568917123373

/-!
# A317822: Number of nX7 0..1 arrays with every element unequal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317822, there is no canonical definition to state claims against.
-/

/-! ## A317822.P15691394011811639304

`A317823(A374008(n+1))`
-/

namespace A317822.P15691394011811639304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A374008 (n + 1)).toNat

end

end A317822.P15691394011811639304

/-! ## A317822.P8978787995433972121

`A317823(A167499(n+5)+2)`
-/

namespace A317822.P8978787995433972121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A167499 (n + 5) + 2).toNat

end

end A317822.P8978787995433972121

/-! ## A317822.P11793830784734585700

`A317823(A152950(n+7)+4)`
-/

namespace A317822.P11793830784734585700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A152950 (n + 7) + 4).toNat

end

end A317822.P11793830784734585700

/-! ## A317822.P18351349768753882834

`A317823(A000124(n+6)+6)`
-/

namespace A317822.P18351349768753882834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A000124 (n + 6) + 6).toNat

end

end A317822.P18351349768753882834

/-! ## A317822.P14802639438272853582

`A317823(A000217(n+6)+7)`
-/

namespace A317822.P14802639438272853582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (A000217 (n + 6) + 7).toNat

end

end A317822.P14802639438272853582

/-!
# A317823: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317823, there is no canonical definition to state claims against.
-/

/-! ## A317823.P2701361300461797775

`A318430(n+1)-A058348(A131235(n))`
-/

namespace A317823.P2701361300461797775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (n + 1) - A058348 (A131235 n).toNat

end

end A317823.P2701361300461797775

/-! ## A317823.P6680390694210627223

`A318430(n+1)-A122924(A099927(n))`
-/

namespace A317823.P6680390694210627223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (n + 1) - A122924 (A099927 n).toNat

end

end A317823.P6680390694210627223

/-! ## A317823.P4353309533501219341

`A318430(n+1)-A058348(A174545(n))`
-/

namespace A317823.P4353309533501219341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (n + 1) - A058348 (A174545 n).toNat

end

end A317823.P4353309533501219341

/-! ## A317823.P16167082141054577551

`A318430(n+1)-A080343(A157150(n))`
-/

namespace A317823.P16167082141054577551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (n + 1) - A080343 (A157150 n).toNat

end

end A317823.P16167082141054577551

/-! ## A317823.P9885311012234499330

`A318098(n+1)-A317012(A299905(n))`
-/

namespace A317823.P9885311012234499330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (n + 1) - A317012 (A299905 n).toNat

end

end A317823.P9885311012234499330

/-!
# A317826: Number of partitions of n with carry-free sum in factorial base.

The programs for A317826, there is no canonical definition to state claims against.
-/

/-! ## A317826.P6545389824756652665

`A001055(A278236(n))`
-/

namespace A317826.P6545389824756652665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A278236 n).toNat

end

end A317826.P6545389824756652665

/-! ## A317826.P13214305390955898954

`A001055(A276076(n))`
-/

namespace A317826.P13214305390955898954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A276076 n).toNat

end

end A317826.P13214305390955898954

/-! ## A317826.P2016435973665184642

`A317836(A351576(n))`
-/

namespace A317826.P2016435973665184642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317836 (A351576 n).toNat

end

end A317826.P2016435973665184642

/-! ## A317826.P10431404003077743456

`A318284(A275735(n))`
-/

namespace A317826.P10431404003077743456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A275735 n).toNat

end

end A317826.P10431404003077743456

/-! ## A317826.P6981346306076943250

`A359778(A328834(n+1))`
-/

namespace A317826.P6981346306076943250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359778 (A328834 (n + 1)).toNat

end

end A317826.P6981346306076943250

/-!
# A317827: Positions of records in A317826, computed from its term A317826(1) = 1 onward.

The programs for A317827, there is no canonical definition to state claims against.
-/

/-! ## A317827.P17192063033069140236

`lt[A025487(n+1), A069877(A007623(n))+n]`
-/

namespace A317827.P17192063033069140236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (A007623 n).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317827.P17192063033069140236

/-! ## A317827.P1295438928656349923

`lt[A186219(A247935(n)), A278236(n)]`
-/

namespace A317827.P1295438928656349923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (A247935 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317827.P1295438928656349923

/-! ## A317827.P4794056185621116367

`lt[A008667(n), A103221(A278236(n))]`
-/

namespace A317827.P4794056185621116367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A278236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317827.P4794056185621116367

/-! ## A317827.P3621242905511626995

`lt[A140952(n), A103221(A278236(n))]`
-/

namespace A317827.P3621242905511626995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A278236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317827.P3621242905511626995

/-! ## A317827.P7960471412066414945

`lt[A221948(n+3), A002378(A278236(n))]`
-/

namespace A317827.P7960471412066414945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221948 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A278236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317827.P7960471412066414945

/-!
# A317828: Record values in A317826.

The programs for A317828, there is no canonical definition to state claims against.
-/

/-! ## A317828.P12975886853700457571

`A317826(A317827(n+1))`
-/

namespace A317828.P12975886853700457571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317826 (A317827 (n + 1)).toNat

end

end A317828.P12975886853700457571

/-! ## A317828.P15515357304434226438

`record[A317826(n)]`
-/

namespace A317828.P15515357304434226438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317828.P15515357304434226438

/-! ## A317828.P14802657447470716698

`record[A317836(A351576(n))]`
-/

namespace A317828.P14802657447470716698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317836 (A351576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317828.P14802657447470716698

/-! ## A317828.P15143501541355876031

`record[A318284(A057335(n))]`
-/

namespace A317828.P15143501541355876031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A057335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317828.P15143501541355876031

/-! ## A317828.P3145306202328802835

`record[A318284(A275735(n))]`
-/

namespace A317828.P3145306202328802835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A275735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317828.P3145306202328802835

/-!
# A317829: Number of set partitions of multiset {1, 2, 2, 3, 3, 3, ..., n X n}.

The programs for A317829, there is no canonical definition to state claims against.
-/

/-! ## A317829.P12619861727346579987

`A317826((n+1)!-1)`
-/

namespace A317829.P12619861727346579987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317826 (Nat.factorial (n + 1) - 1)

end

end A317829.P12619861727346579987

/-! ## A317829.P16799675098926122301

`A317826(A033312(n+1))`
-/

namespace A317829.P16799675098926122301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317826 (A033312 (n + 1)).toNat

end

end A317829.P16799675098926122301

/-!
# A317830: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A175851, the ordinal transform of the nextprime function, A151800.

The programs for A317830, there is no canonical definition to state claims against.
-/

/-! ## A317830.P4278546525923744474

`and(p?[76*(n+1)²-1], A340141(n+1))`
-/

namespace A317830.P4278546525923744474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (76 * (n + 1) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A340141 (n + 1))

end

end A317830.P4278546525923744474

/-! ## A317830.P5922038623706416296

`and(p?[76*(n+1)²-1], A340144(n+1))`
-/

namespace A317830.P5922038623706416296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (76 * (n + 1) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A340144 (n + 1))

end

end A317830.P5922038623706416296

/-! ## A317830.P17121547876490342771

`and(-A340132(2*(n+1)), A340141(n+1))`
-/

namespace A317830.P17121547876490342771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A340132 (2 * (n + 1))) (A340141 (n + 1))

end

end A317830.P17121547876490342771

/-! ## A317830.P6048689047217306796

`A340141(n+1)%A000005(A295499(n+1))`
-/

namespace A317830.P6048689047217306796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340141 (n + 1)) (A000005 (A295499 (n + 1)).toNat)

end

end A317830.P6048689047217306796

/-! ## A317830.P3650556332902078397

`A340144(n+1)%A000005(A295499(n+1))`
-/

namespace A317830.P3650556332902078397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340144 (n + 1)) (A000005 (A295499 (n + 1)).toNat)

end

end A317830.P3650556332902078397

/-!
# A317832: Denominators of rational valued sequence f whose Dirichlet convolution with itself yields A000203 (sigma, the sum of divisors).

The programs for A317832, there is no canonical definition to state claims against.
-/

/-! ## A317832.P13488910198003242503

`A318314(A318325(n+1)+A288194(n))`
-/

namespace A317832.P13488910198003242503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318314 (A318325 (n + 1) + A288194 n).toNat

end

end A317832.P13488910198003242503

/-! ## A317832.P4279841837459835628

`gcd(A000079(n), A093629(A267872(n)))`
-/

namespace A317832.P4279841837459835628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A093629 (A267872 n).toNat)

end

end A317832.P4279841837459835628

/-! ## A317832.P5599764779061534993

`gcd(A224580(A130321(n)), A345262(n))`
-/

namespace A317832.P5599764779061534993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224580 (A130321 n).toNat) (A345262 n)

end

end A317832.P5599764779061534993

/-! ## A317832.P15946580010943439021

`A317926(A187829(n+1)*A294640(n))`
-/

namespace A317832.P15946580010943439021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317926 (A187829 (n + 1) * A294640 n).toNat

end

end A317832.P15946580010943439021

/-! ## A317832.P10604566410293927779

`A006519(A057521(n+1)*A288799(n+1))`
-/

namespace A317832.P10604566410293927779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A057521 (n + 1) * A288799 (n + 1)).toNat

end

end A317832.P10604566410293927779

/-!
# A317834: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A078899 (the ordinal transform of A006530, the largest prime factor of n).

The programs for A317834, there is no canonical definition to state claims against.
-/

/-! ## A317834.P14933890953211128548

`and(A046012(A383013(n)), A340141(n+1))`
-/

namespace A317834.P14933890953211128548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046012 (A383013 n).toNat) (A340141 (n + 1))

end

end A317834.P14933890953211128548

/-! ## A317834.P11931918367628818300

`and(A139421(A087373(n+1)), A340144(n+1))`
-/

namespace A317834.P11931918367628818300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139421 (A087373 (n + 1)).toNat) (A340144 (n + 1))

end

end A317834.P11931918367628818300

/-!
# A317836: Number of partitions of n with carry-free sum in primorial base.

The programs for A317836, there is no canonical definition to state claims against.
-/

/-! ## A317836.P1720528300043885680

`A001055(A278226(n))`
-/

namespace A317836.P1720528300043885680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A278226 n).toNat

end

end A317836.P1720528300043885680

/-! ## A317836.P16006939175429533230

`A001055(A276086(n))`
-/

namespace A317836.P16006939175429533230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A276086 n).toNat

end

end A317836.P16006939175429533230

/-! ## A317836.P16133602372093097543

`A318284(A328835(n))`
-/

namespace A317836.P16133602372093097543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A328835 n).toNat

end

end A317836.P16133602372093097543

/-! ## A317836.P15310029429989604917

`A359778(A276086(A000007(n)+n))`
-/

namespace A317836.P15310029429989604917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359778 (A276086 (A000007 n + (n : ℤ)).toNat).toNat

end

end A317836.P15310029429989604917

/-! ## A317836.P2839073717951832371

`A001055(A351225(n)+n)`
-/

namespace A317836.P2839073717951832371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A351225 n + (n : ℤ)).toNat

end

end A317836.P2839073717951832371

/-!
# A317837: a(n) = Sum_{d|n, d

The programs for A317837, the canonical program `A317837.P16143556663053745700` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317837 has offset 1).

The definition of A317837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317837.P4926293676822691823

`A317838(n+1)-A002487(n+1)`
-/

namespace A317837.P4926293676822691823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317838 (n + 1) - A002487 (n + 1)

end

end A317837.P4926293676822691823

namespace A317837

/-- `A317838(n+1)-A002487(n+1)` -/
def P4926293676822691823.Spec : Prop :=
  ∀ n, P4926293676822691823.a n = A317837 (n + 1)

theorem P4926293676822691823.correct : P4926293676822691823.Spec := by
  intro n
  simp only [A317837, Nat.add_sub_cancel, A317837.P4926293676822691823.a, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A002487, A002487.P6236436194084017932.a, A317838, A317838.P14369629829777606586.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317837

/-! ## A317837.P4882281239576558383

`A001222(A293216(n+1))`
-/

namespace A317837.P4882281239576558383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293216 (n + 1)).toNat

end

end A317837.P4882281239576558383

namespace A317837

/-- `A001222(A293216(n+1))` -/
def P4882281239576558383.Spec : Prop :=
  ∀ n, P4882281239576558383.a n = A317837 (n + 1)

end A317837

/-! ## A317837.P15792821209145685186

`∑{d}[n+1, A317840(#)]`
-/

namespace A317837.P15792821209145685186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317840 d

end

end A317837.P15792821209145685186

namespace A317837

/-- `∑{d}[n+1, A317840(#)]` -/
def P15792821209145685186.Spec : Prop :=
  ∀ n, P15792821209145685186.a n = A317837 (n + 1)

end A317837

/-! ## A317837.P16143556663053745700

`∑{d}[n+1, A002487(#)]-A002487(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A317837

/-- `∑{d}[n+1, A002487(#)]-A002487(n+1)` -/
def P16143556663053745700.Spec : Prop :=
  ∀ n, P16143556663053745700.a n = A317837 (n + 1)

theorem P16143556663053745700.correct : P16143556663053745700.Spec := by
  intro n
  simp only [A317837, Nat.add_sub_cancel]

end A317837

/-! ## A317837.P9962398293277791230

`∑{d}[n+1, A032741(#)*A317839((n+1)/#)]`
-/

namespace A317837.P9962398293277791230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A317839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317837.P9962398293277791230

namespace A317837

/-- `∑{d}[n+1, A032741(#)*A317839((n+1)/#)]` -/
def P9962398293277791230.Spec : Prop :=
  ∀ n, P9962398293277791230.a n = A317837 (n + 1)

end A317837

/-! ## A317837.P2069152742868733867

`∑{d}[n+1, A157658(#)*A317838((n+1)/#)]`
-/

namespace A317837.P2069152742868733867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A317838 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317837.P2069152742868733867

namespace A317837

/-- `∑{d}[n+1, A157658(#)*A317838((n+1)/#)]` -/
def P2069152742868733867.Spec : Prop :=
  ∀ n, P2069152742868733867.a n = A317837 (n + 1)

end A317837

/-! ## A317837.P3286105063369710944

`∑{d}[n+1, A287896(#)*A296066((n+1)/#)]`
-/

namespace A317837.P3286105063369710944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A287896 d * A296066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317837.P3286105063369710944

namespace A317837

/-- `∑{d}[n+1, A287896(#)*A296066((n+1)/#)]` -/
def P3286105063369710944.Spec : Prop :=
  ∀ n, P3286105063369710944.a n = A317837 (n + 1)

end A317837

/-! ## A317837.P8477026361938972997

`A317838(n+1)-(A317840(n+1)+A317839(n+1))`
-/

namespace A317837.P8477026361938972997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317838 (n + 1) - (A317840 (n + 1) + A317839 (n + 1))

end

end A317837.P8477026361938972997

namespace A317837

/-- `A317838(n+1)-(A317840(n+1)+A317839(n+1))` -/
def P8477026361938972997.Spec : Prop :=
  ∀ n, P8477026361938972997.a n = A317837 (n + 1)

theorem P8477026361938972997.correct : P8477026361938972997.Spec := by
  intro n
  simp only [A317837, Nat.add_sub_cancel, A317837.P8477026361938972997.a, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A002487, A002487.P6236436194084017932.a, A317838, A317838.P14369629829777606586.a, A317839, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A317840, A317840.P16169374628325330660.a, A000120, A000120.P2816527436160941581.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317837

/-! ## A317837.P17165292605272977019

`A317838(n+1)+A317843(n+1)-A323365(n+1)`
-/

namespace A317837.P17165292605272977019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317838 (n + 1) + (A317843 (n + 1) - A323365 (n + 1))

end

end A317837.P17165292605272977019

namespace A317837

/-- `A317838(n+1)+A317843(n+1)-A323365(n+1)` -/
def P17165292605272977019.Spec : Prop :=
  ∀ n, P17165292605272977019.a n = A317837 (n + 1)

end A317837

/-! ## A317837.P17389269061524737210

`A317838(n+1)-A317840(2*(n+1))`
-/

namespace A317837.P17389269061524737210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317838 (n + 1) - A317840 (2 * (n + 1))

end

end A317837.P17389269061524737210

namespace A317837

/-- `A317838(n+1)-A317840(2*(n+1))` -/
def P17389269061524737210.Spec : Prop :=
  ∀ n, P17389269061524737210.a n = A317837 (n + 1)

end A317837

/-!
# A317838: a(n) = Sum_{d|n} A002487(d).

The programs for A317838, the canonical program `A317838.P14369629829777606586` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317838 has offset 1).

The definition of A317838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317837, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317838.P14369629829777606586

`A317837(n+1)+A002487(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A317838

/-- `A317837(n+1)+A002487(n+1)` -/
def P14369629829777606586.Spec : Prop :=
  ∀ n, P14369629829777606586.a n = A317838 (n + 1)

theorem P14369629829777606586.correct : P14369629829777606586.Spec := by
  intro n
  simp only [A317838, Nat.add_sub_cancel]

end A317838

/-! ## A317838.P12816764595591299913

`∑{d}[n+1, A002487(#)]`
-/

namespace A317838.P12816764595591299913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002487 d

end

end A317838.P12816764595591299913

namespace A317838

/-- `∑{d}[n+1, A002487(#)]` -/
def P12816764595591299913.Spec : Prop :=
  ∀ n, P12816764595591299913.a n = A317838 (n + 1)

theorem P12816764595591299913.correct : P12816764595591299913.Spec := by
  intro n
  simp only [A317838, Nat.add_sub_cancel, A317838.P12816764595591299913.f1, A317838.P12816764595591299913.a, A317838.P14369629829777606586.a, A002487, A002487.P6236436194084017932.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317838

/-! ## A317838.P11268458740406520186

`∑{d}[n+1, A007306(A003602(#))]`
-/

namespace A317838.P11268458740406520186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007306 (A003602 d).toNat

end

end A317838.P11268458740406520186

namespace A317838

/-- `∑{d}[n+1, A007306(A003602(#))]` -/
def P11268458740406520186.Spec : Prop :=
  ∀ n, P11268458740406520186.a n = A317838 (n + 1)

end A317838

/-! ## A317838.P9819962343852435265

`∑{d}[n+1, A000005(#)*A317839((n+1)/#)]`
-/

namespace A317838.P9819962343852435265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A317839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317838.P9819962343852435265

namespace A317838

/-- `∑{d}[n+1, A000005(#)*A317839((n+1)/#)]` -/
def P9819962343852435265.Spec : Prop :=
  ∀ n, P9819962343852435265.a n = A317838 (n + 1)

end A317838

/-! ## A317838.P8153592473839365464

`∑{d}[n+1, A059841(#-1)*A287896((n+1)/#)]`
-/

namespace A317838.P8153592473839365464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A287896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317838.P8153592473839365464

namespace A317838

/-- `∑{d}[n+1, A059841(#-1)*A287896((n+1)/#)]` -/
def P8153592473839365464.Spec : Prop :=
  ∀ n, P8153592473839365464.a n = A317838 (n + 1)

end A317838

/-! ## A317838.P2319667929068021314

`A317837(n+1)+A317840(n+1)+A317839(n+1)`
-/

namespace A317838.P2319667929068021314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317837 (n + 1) + (A317840 (n + 1) + A317839 (n + 1))

end

end A317838.P2319667929068021314

namespace A317838

/-- `A317837(n+1)+A317840(n+1)+A317839(n+1)` -/
def P2319667929068021314.Spec : Prop :=
  ∀ n, P2319667929068021314.a n = A317838 (n + 1)

theorem P2319667929068021314.correct : P2319667929068021314.Spec := by
  intro n
  simp only [A317838, Nat.add_sub_cancel, A317838.P2319667929068021314.a, A317838.P14369629829777606586.a, A002487, A002487.P6236436194084017932.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A317839, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A317840, A317840.P16169374628325330660.a, A000120, A000120.P2816527436160941581.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317838

/-! ## A317838.P13530470621051371462

`A317837(n+1)+A318509(n+1)-A319687(n+1)`
-/

namespace A317838.P13530470621051371462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317837 (n + 1) + (A318509 (n + 1) - A319687 (n + 1))

end

end A317838.P13530470621051371462

namespace A317838

/-- `A317837(n+1)+A318509(n+1)-A319687(n+1)` -/
def P13530470621051371462.Spec : Prop :=
  ∀ n, P13530470621051371462.a n = A317838 (n + 1)

theorem P13530470621051371462.correct : P13530470621051371462.Spec := by
  intro n
  simp only [A317838, Nat.add_sub_cancel, A317838.P13530470621051371462.a, A317838.P14369629829777606586.a, A002487, A002487.P6236436194084017932.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A318509, A318509.P16676407723879251455.f1, A318509.P16676407723879251455.a, A319687, A319687.P11150699516326577001.a, A000120, A000120.P2816527436160941581.a, A014963, A014963.P5975177236000282614.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A080304, A080304.P9910366703239988167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317838

/-! ## A317838.P17847541765322213838

`A317837(n+1)+A323365(n+1)-A317843(n+1)`
-/

namespace A317838.P17847541765322213838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317837 (n + 1) + (A323365 (n + 1) - A317843 (n + 1))

end

end A317838.P17847541765322213838

namespace A317838

/-- `A317837(n+1)+A323365(n+1)-A317843(n+1)` -/
def P17847541765322213838.Spec : Prop :=
  ∀ n, P17847541765322213838.a n = A317838 (n + 1)

end A317838

/-! ## A317838.P17135055088570222940

`A317840(2*(n+1))+A317837(n+1)`
-/

namespace A317838.P17135055088570222940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (2 * (n + 1)) + A317837 (n + 1)

end

end A317838.P17135055088570222940

namespace A317838

/-- `A317840(2*(n+1))+A317837(n+1)` -/
def P17135055088570222940.Spec : Prop :=
  ∀ n, P17135055088570222940.a n = A317838 (n + 1)

end A317838

/-!
# A317839: Möbius transform of A002487, Stern's Diatomic sequence.

The programs for A317839, the canonical program `A317839.P17371659085018084050` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317839 has offset 1).

The definition of A317839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317839.P1138242213648361823

`A000010(n+1)-A317841(n+1)`
-/

namespace A317839.P1138242213648361823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A317841 (n + 1)

end

end A317839.P1138242213648361823

namespace A317839

/-- `A000010(n+1)-A317841(n+1)` -/
def P1138242213648361823.Spec : Prop :=
  ∀ n, P1138242213648361823.a n = A317839 (n + 1)

theorem P1138242213648361823.correct : P1138242213648361823.Spec := by
  intro n
  simp only [A317839, Nat.add_sub_cancel, A317839.P1138242213648361823.a, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A000010, A000010.P4673923239450215316.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A317838, A317838.P14369629829777606586.a, A317841, A317841.P1605425394467167167.a, A002487, A002487.P6236436194084017932.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A000120, A000120.P2816527436160941581.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A168081, A168081.P16359451533663323532.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A005187, A005187.P3874015513960485494.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317839

/-! ## A317839.P12244377685500386869

`A002487(n+1)-A317840(n+1)`
-/

namespace A317839.P12244377685500386869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) - A317840 (n + 1)

end

end A317839.P12244377685500386869

namespace A317839

/-- `A002487(n+1)-A317840(n+1)` -/
def P12244377685500386869.Spec : Prop :=
  ∀ n, P12244377685500386869.a n = A317839 (n + 1)

theorem P12244377685500386869.correct : P12244377685500386869.Spec := by
  intro n
  simp only [A317839, Nat.add_sub_cancel, A317839.P12244377685500386869.a, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A002487, A002487.P6236436194084017932.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A317838, A317838.P14369629829777606586.a, A317840, A317840.P16169374628325330660.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317839

/-! ## A317839.P5250084081358815805

`A039649(n+1)-(A317841(n+1)+1)`
-/

namespace A317839.P5250084081358815805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A317841 (n + 1) + 1)

end

end A317839.P5250084081358815805

namespace A317839

/-- `A039649(n+1)-(A317841(n+1)+1)` -/
def P5250084081358815805.Spec : Prop :=
  ∀ n, P5250084081358815805.a n = A317839 (n + 1)

theorem P5250084081358815805.correct : P5250084081358815805.Spec := by
  intro n
  simp only [A317839, Nat.add_sub_cancel, A317839.P5250084081358815805.a, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A039649, A039649.P16717312505280968063.a, A317838, A317838.P14369629829777606586.a, A317841, A317841.P1605425394467167167.a, A000010, A000010.P4673923239450215316.a, A002487, A002487.P6236436194084017932.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A000120, A000120.P2816527436160941581.a, A003557, A003557.P6364735403900941810.a, A168081, A168081.P16359451533663323532.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317839

/-! ## A317839.P8119197128470263264

`A109606(n+1)+1-A317841(n+1)`
-/

namespace A317839.P8119197128470263264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A317841 (n + 1))

end

end A317839.P8119197128470263264

namespace A317839

/-- `A109606(n+1)+1-A317841(n+1)` -/
def P8119197128470263264.Spec : Prop :=
  ∀ n, P8119197128470263264.a n = A317839 (n + 1)

theorem P8119197128470263264.correct : P8119197128470263264.Spec := by
  intro n
  simp only [A317839, Nat.add_sub_cancel, A317839.P8119197128470263264.a, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A109606, A109606.P2415810041766612210.a, A317838, A317838.P14369629829777606586.a, A317841, A317841.P1605425394467167167.a, A000010, A000010.P4673923239450215316.a, A002487, A002487.P6236436194084017932.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A000120, A000120.P2816527436160941581.a, A003557, A003557.P6364735403900941810.a, A168081, A168081.P16359451533663323532.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317839

/-! ## A317839.P3299952365730747364

`n-(A317841(n+1)+A219428(n+1))`
-/

namespace A317839.P3299952365730747364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A317841 (n + 1) + A219428 (n + 1))

end

end A317839.P3299952365730747364

namespace A317839

/-- `n-(A317841(n+1)+A219428(n+1))` -/
def P3299952365730747364.Spec : Prop :=
  ∀ n, P3299952365730747364.a n = A317839 (n + 1)

end A317839

/-! ## A317839.P1595563380249383196

`1-A051953(n+1)+n-A317841(n+1)`
-/

namespace A317839.P1595563380249383196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ) - A317841 (n + 1)

end

end A317839.P1595563380249383196

namespace A317839

/-- `1-A051953(n+1)+n-A317841(n+1)` -/
def P1595563380249383196.Spec : Prop :=
  ∀ n, P1595563380249383196.a n = A317839 (n + 1)

end A317839

/-! ## A317839.P8588912419185862730

`∑{d}[n+1, A008683(#)*A002487((n+1)/#)]`
-/

namespace A317839.P8588912419185862730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A002487 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317839.P8588912419185862730

namespace A317839

/-- `∑{d}[n+1, A008683(#)*A002487((n+1)/#)]` -/
def P8588912419185862730.Spec : Prop :=
  ∀ n, P8588912419185862730.a n = A317839 (n + 1)

end A317839

/-! ## A317839.P17371659085018084050

`∑{d}[n+1, A007427(#)*A317838((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A317839

/-- `∑{d}[n+1, A007427(#)*A317838((n+1)/#)]` -/
def P17371659085018084050.Spec : Prop :=
  ∀ n, P17371659085018084050.a n = A317839 (n + 1)

theorem P17371659085018084050.correct : P17371659085018084050.Spec := by
  intro n
  simp only [A317839, Nat.add_sub_cancel]

end A317839

/-! ## A317839.P14382072947151494917

`∑{d}[n+1, A092673(#)*A287896((n+1)/#)]`
-/

namespace A317839.P14382072947151494917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A287896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317839.P14382072947151494917

namespace A317839

/-- `∑{d}[n+1, A092673(#)*A287896((n+1)/#)]` -/
def P14382072947151494917.Spec : Prop :=
  ∀ n, P14382072947151494917.a n = A317839 (n + 1)

end A317839

/-! ## A317839.P2224777473943257122

`∏{p}[n+1, #-1]*A003557(n+1)-A317841(n+1)`
-/

namespace A317839.P2224777473943257122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) - A317841 (n + 1)

end

end A317839.P2224777473943257122

namespace A317839

/-- `∏{p}[n+1, #-1]*A003557(n+1)-A317841(n+1)` -/
def P2224777473943257122.Spec : Prop :=
  ∀ n, P2224777473943257122.a n = A317839 (n + 1)

end A317839

/-! ## A317839.P8801184310624945449

`(n+1)/∏{p}[n+1, #]*A173557(n+1)-A317841(n+1)`
-/

namespace A317839.P8801184310624945449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) - (A317841 (n + 1) : ℚ)

end

end A317839.P8801184310624945449

namespace A317839

/-- `(n+1)/∏{p}[n+1, #]*A173557(n+1)-A317841(n+1)` -/
def P8801184310624945449.Spec : Prop :=
  ∀ n, P8801184310624945449.a n = (A317839 (n + 1) : ℚ)

end A317839

/-! ## A317839.P6705030417614540786

`A048864(n+1)+A048865(n+1)-A317841(n+1)`
-/

namespace A317839.P6705030417614540786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) + (A048865 (n + 1) - A317841 (n + 1))

end

end A317839.P6705030417614540786

namespace A317839

/-- `A048864(n+1)+A048865(n+1)-A317841(n+1)` -/
def P6705030417614540786.Spec : Prop :=
  ∀ n, P6705030417614540786.a n = A317839 (n + 1)

end A317839

/-! ## A317839.P6833524567623839900

`A300724(n+1)+A300725(n+1)-A317841(n+1)`
-/

namespace A317839.P6833524567623839900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300724 (n + 1) + (A300725 (n + 1) - A317841 (n + 1))

end

end A317839.P6833524567623839900

namespace A317839

/-- `A300724(n+1)+A300725(n+1)-A317841(n+1)` -/
def P6833524567623839900.Spec : Prop :=
  ∀ n, P6833524567623839900.a n = A317839 (n + 1)

end A317839

/-! ## A317839.P260098880991293272

`A317838(n+1)-(A317840(n+1)+A317837(n+1))`
-/

namespace A317839.P260098880991293272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317838 (n + 1) - (A317840 (n + 1) + A317837 (n + 1))

end

end A317839.P260098880991293272

namespace A317839

/-- `A317838(n+1)-(A317840(n+1)+A317837(n+1))` -/
def P260098880991293272.Spec : Prop :=
  ∀ n, P260098880991293272.a n = A317839 (n + 1)

theorem P260098880991293272.correct : P260098880991293272.Spec := by
  intro n
  simp only [A317839, Nat.add_sub_cancel, A317839.P260098880991293272.a, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A317838, A317838.P14369629829777606586.a, A317840, A317840.P16169374628325330660.a, A002487, A002487.P6236436194084017932.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317839

/-! ## A317839.P8778948901858557390

`A002322(n+1)*A034380(n+1)-A317841(n+1)`
-/

namespace A317839.P8778948901858557390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) * A034380 (n + 1) - A317841 (n + 1)

end

end A317839.P8778948901858557390

namespace A317839

/-- `A002322(n+1)*A034380(n+1)-A317841(n+1)` -/
def P8778948901858557390.Spec : Prop :=
  ∀ n, P8778948901858557390.a n = A317839 (n + 1)

end A317839

/-! ## A317839.P2485398395455751201

`A317840(2*(n+1))-A317840(n+1)`
-/

namespace A317839.P2485398395455751201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (2 * (n + 1)) - A317840 (n + 1)

end

end A317839.P2485398395455751201

namespace A317839

/-- `A317840(2*(n+1))-A317840(n+1)` -/
def P2485398395455751201.Spec : Prop :=
  ∀ n, P2485398395455751201.a n = A317839 (n + 1)

end A317839

/-! ## A317839.P6025351925746455704

`A071017(A266256(n+1))`
-/

namespace A317839.P6025351925746455704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071017 (A266256 (n + 1)).toNat

end

end A317839.P6025351925746455704

namespace A317839

/-- `A071017(A266256(n+1))` -/
def P6025351925746455704.Spec : Prop :=
  ∀ n, P6025351925746455704.a n = A317839 (n + 1)

end A317839

/-! ## A317839.P18436327946198030778

`A049633(n)-(A317841(n+1)+A049632(n))`
-/

namespace A317839.P18436327946198030778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - (A317841 (n + 1) + A049632 n)

end

end A317839.P18436327946198030778

namespace A317839

/-- `A049633(n)-(A317841(n+1)+A049632(n))` -/
def P18436327946198030778.Spec : Prop :=
  ∀ n, P18436327946198030778.a n = A317839 (n + 1)

end A317839

/-!
# A317840: Difference between Stern's Diatomic sequence (A002487) and its Möbius transform (A317839).

The programs for A317840, the canonical program `A317840.P16169374628325330660` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317840 has offset 1).

The definition of A317840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317839, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317840.P16169374628325330660

`A002487(n+1)-A317839(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A317840

/-- `A002487(n+1)-A317839(n+1)` -/
def P16169374628325330660.Spec : Prop :=
  ∀ n, P16169374628325330660.a n = A317840 (n + 1)

theorem P16169374628325330660.correct : P16169374628325330660.Spec := by
  intro n
  simp only [A317840, Nat.add_sub_cancel]

end A317840

/-! ## A317840.P14496376643728195322

`∑{d}[n+1, A002487(#)*A157658((n+1)/#)]`
-/

namespace A317840.P14496376643728195322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002487 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317840.P14496376643728195322

namespace A317840

/-- `∑{d}[n+1, A002487(#)*A157658((n+1)/#)]` -/
def P14496376643728195322.Spec : Prop :=
  ∀ n, P14496376643728195322.a n = A317840 (n + 1)

end A317840

/-! ## A317840.P18041241347469891343

`∑{d}[n+1, A008683(#)*A317837((n+1)/#)]`
-/

namespace A317840.P18041241347469891343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A317837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317840.P18041241347469891343

namespace A317840

/-- `∑{d}[n+1, A008683(#)*A317837((n+1)/#)]` -/
def P18041241347469891343.Spec : Prop :=
  ∀ n, P18041241347469891343.a n = A317840 (n + 1)

end A317840

/-! ## A317840.P9065164372528242103

`∑{d}[n+1, A057427(#-1)*A317839((n+1)/#)]`
-/

namespace A317840.P9065164372528242103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A317839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317840.P9065164372528242103

namespace A317840

/-- `∑{d}[n+1, A057427(#-1)*A317839((n+1)/#)]` -/
def P9065164372528242103.Spec : Prop :=
  ∀ n, P9065164372528242103.a n = A317840 (n + 1)

end A317840

/-! ## A317840.P1743135357223030145

`A245327(A284460(n+1))-A317839(n+1)`
-/

namespace A317840.P1743135357223030145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A284460 (n + 1)).toNat - A317839 (n + 1)

end

end A317840.P1743135357223030145

namespace A317840

/-- `A245327(A284460(n+1))-A317839(n+1)` -/
def P1743135357223030145.Spec : Prop :=
  ∀ n, P1743135357223030145.a n = A317840 (n + 1)

end A317840

/-! ## A317840.P2193930815392507796

`A174868(n+1)-(A317839(n+1)+A174868(n))`
-/

namespace A317840.P2193930815392507796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 (n + 1) - (A317839 (n + 1) + A174868 n)

end

end A317840.P2193930815392507796

namespace A317840

/-- `A174868(n+1)-(A317839(n+1)+A174868(n))` -/
def P2193930815392507796.Spec : Prop :=
  ∀ n, P2193930815392507796.a n = A317840 (n + 1)

end A317840

/-! ## A317840.P9038288569761344685

`A002487(n+1)+A317841(n+1)-A000010(n+1)`
-/

namespace A317840.P9038288569761344685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A317841 (n + 1) - A000010 (n + 1))

end

end A317840.P9038288569761344685

namespace A317840

/-- `A002487(n+1)+A317841(n+1)-A000010(n+1)` -/
def P9038288569761344685.Spec : Prop :=
  ∀ n, P9038288569761344685.a n = A317840 (n + 1)

theorem P9038288569761344685.correct : P9038288569761344685.Spec := by
  intro n
  simp only [A317840, Nat.add_sub_cancel, A317840.P9038288569761344685.a, A317840.P16169374628325330660.a, A000010, A000010.P4673923239450215316.a, A002487, A002487.P6236436194084017932.a, A317839, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A317841, A317841.P1605425394467167167.a, A000120, A000120.P2816527436160941581.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A168081, A168081.P16359451533663323532.a, A173557, A173557.P15666735857375843373.a, A317838, A317838.P14369629829777606586.a, A001221, A001221.P10258181745752134128.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317840

/-! ## A317840.P2917276623008459013

`A317838(n+1)-(A317839(n+1)+A317837(n+1))`
-/

namespace A317840.P2917276623008459013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317838 (n + 1) - (A317839 (n + 1) + A317837 (n + 1))

end

end A317840.P2917276623008459013

namespace A317840

/-- `A317838(n+1)-(A317839(n+1)+A317837(n+1))` -/
def P2917276623008459013.Spec : Prop :=
  ∀ n, P2917276623008459013.a n = A317840 (n + 1)

theorem P2917276623008459013.correct : P2917276623008459013.Spec := by
  intro n
  simp only [A317840, Nat.add_sub_cancel, A317840.P2917276623008459013.a, A317840.P16169374628325330660.a, A002487, A002487.P6236436194084017932.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A317838, A317838.P14369629829777606586.a, A317839, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A000120, A000120.P2816527436160941581.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317840

/-! ## A317840.P6292836828407333247

`A323365(n+1)-(A317843(n+1)+A317839(n+1))`
-/

namespace A317840.P6292836828407333247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323365 (n + 1) - (A317843 (n + 1) + A317839 (n + 1))

end

end A317840.P6292836828407333247

namespace A317840

/-- `A323365(n+1)-(A317843(n+1)+A317839(n+1))` -/
def P6292836828407333247.Spec : Prop :=
  ∀ n, P6292836828407333247.a n = A317840 (n + 1)

end A317840

/-! ## A317840.P18025361645739618939

`A283976(A004277(n+1))-A317839(n+1)`
-/

namespace A317840.P18025361645739618939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (A004277 (n + 1)).toNat - A317839 (n + 1)

end

end A317840.P18025361645739618939

namespace A317840

/-- `A283976(A004277(n+1))-A317839(n+1)` -/
def P18025361645739618939.Spec : Prop :=
  ∀ n, P18025361645739618939.a n = A317840 (n + 1)

end A317840

/-!
# A317841: Möbius transform of A284013 (= n - A002487(n)), where A002487 is Stern's Diatomic sequence.

The programs for A317841, the canonical program `A317841.P1605425394467167167` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317841 has offset 1).

The definition of A317841 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A317839, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317841.P1605425394467167167

`A000010(n+1)-A317839(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A317841

/-- `A000010(n+1)-A317839(n+1)` -/
def P1605425394467167167.Spec : Prop :=
  ∀ n, P1605425394467167167.a n = A317841 (n + 1)

theorem P1605425394467167167.correct : P1605425394467167167.Spec := by
  intro n
  simp only [A317841, Nat.add_sub_cancel]

end A317841

/-! ## A317841.P13450785637989996759

`Δ[A002088(n)]-A317839(n+1)`
-/

namespace A317841.P13450785637989996759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A317839 (n + 1)

end

end A317841.P13450785637989996759

namespace A317841

/-- `Δ[A002088(n)]-A317839(n+1)` -/
def P13450785637989996759.Spec : Prop :=
  ∀ n, P13450785637989996759.a n = A317841 (n + 1)

end A317841

/-! ## A317841.P3368345184682944108

`Δ[A005728(n)]-A317839(n+1)`
-/

namespace A317841.P3368345184682944108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A317839 (n + 1)

end

end A317841.P3368345184682944108

namespace A317841

/-- `Δ[A005728(n)]-A317839(n+1)` -/
def P3368345184682944108.Spec : Prop :=
  ∀ n, P3368345184682944108.a n = A317841 (n + 1)

end A317841

/-! ## A317841.P17201991532586805374

`A039649(n+1)-(A317839(n+1)+1)`
-/

namespace A317841.P17201991532586805374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A317839 (n + 1) + 1)

end

end A317841.P17201991532586805374

namespace A317841

/-- `A039649(n+1)-(A317839(n+1)+1)` -/
def P17201991532586805374.Spec : Prop :=
  ∀ n, P17201991532586805374.a n = A317841 (n + 1)

theorem P17201991532586805374.correct : P17201991532586805374.Spec := by
  intro n
  simp only [A317841, Nat.add_sub_cancel, A317841.P17201991532586805374.a, A317841.P1605425394467167167.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A317839, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A173557, A173557.P15666735857375843373.a, A317838, A317838.P14369629829777606586.a, A001221, A001221.P10258181745752134128.a, A002487, A002487.P6236436194084017932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A000120, A000120.P2816527436160941581.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A168081, A168081.P16359451533663323532.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317841

/-! ## A317841.P12072788202825419399

`A109606(n+1)+1-A317839(n+1)`
-/

namespace A317841.P12072788202825419399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A317839 (n + 1))

end

end A317841.P12072788202825419399

namespace A317841

/-- `A109606(n+1)+1-A317839(n+1)` -/
def P12072788202825419399.Spec : Prop :=
  ∀ n, P12072788202825419399.a n = A317841 (n + 1)

theorem P12072788202825419399.correct : P12072788202825419399.Spec := by
  intro n
  simp only [A317841, Nat.add_sub_cancel, A317841.P12072788202825419399.a, A317841.P1605425394467167167.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A317839, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A173557, A173557.P15666735857375843373.a, A317838, A317838.P14369629829777606586.a, A001221, A001221.P10258181745752134128.a, A002487, A002487.P6236436194084017932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A000120, A000120.P2816527436160941581.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A168081, A168081.P16359451533663323532.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317841

/-! ## A317841.P4304938796601314573

`n-(A317839(n+1)+A219428(n+1))`
-/

namespace A317841.P4304938796601314573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A317839 (n + 1) + A219428 (n + 1))

end

end A317841.P4304938796601314573

namespace A317841

/-- `n-(A317839(n+1)+A219428(n+1))` -/
def P4304938796601314573.Spec : Prop :=
  ∀ n, P4304938796601314573.a n = A317841 (n + 1)

end A317841

/-! ## A317841.P3151155937147505669

`1-A051953(n+1)+n-A317839(n+1)`
-/

namespace A317841.P3151155937147505669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ) - A317839 (n + 1)

end

end A317841.P3151155937147505669

namespace A317841

/-- `1-A051953(n+1)+n-A317839(n+1)` -/
def P3151155937147505669.Spec : Prop :=
  ∀ n, P3151155937147505669.a n = A317841 (n + 1)

end A317841

/-! ## A317841.P3501689211591591337

`∏{p}[n+1, #-1]*A003557(n+1)-A317839(n+1)`
-/

namespace A317841.P3501689211591591337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) - A317839 (n + 1)

end

end A317841.P3501689211591591337

namespace A317841

/-- `∏{p}[n+1, #-1]*A003557(n+1)-A317839(n+1)` -/
def P3501689211591591337.Spec : Prop :=
  ∀ n, P3501689211591591337.a n = A317841 (n + 1)

end A317841

/-! ## A317841.P9458161460325407589

`(n+1)/∏{p}[n+1, #]*A173557(n+1)-A317839(n+1)`
-/

namespace A317841.P9458161460325407589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) - (A317839 (n + 1) : ℚ)

end

end A317841.P9458161460325407589

namespace A317841

/-- `(n+1)/∏{p}[n+1, #]*A173557(n+1)-A317839(n+1)` -/
def P9458161460325407589.Spec : Prop :=
  ∀ n, P9458161460325407589.a n = (A317841 (n + 1) : ℚ)

end A317841

/-! ## A317841.P8053650805815150394

`A000010(n+1)+A317840(n+1)-A002487(n+1)`
-/

namespace A317841.P8053650805815150394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A317840 (n + 1) - A002487 (n + 1))

end

end A317841.P8053650805815150394

namespace A317841

/-- `A000010(n+1)+A317840(n+1)-A002487(n+1)` -/
def P8053650805815150394.Spec : Prop :=
  ∀ n, P8053650805815150394.a n = A317841 (n + 1)

theorem P8053650805815150394.correct : P8053650805815150394.Spec := by
  intro n
  simp only [A317841, Nat.add_sub_cancel, A317841.P8053650805815150394.a, A317841.P1605425394467167167.a, A000010, A000010.P4673923239450215316.a, A002487, A002487.P6236436194084017932.a, A317839, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A317840, A317840.P16169374628325330660.a, A000120, A000120.P2816527436160941581.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A168081, A168081.P16359451533663323532.a, A173557, A173557.P15666735857375843373.a, A317838, A317838.P14369629829777606586.a, A001221, A001221.P10258181745752134128.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317841

/-! ## A317841.P7331702170424263242

`A048864(n+1)+A048865(n+1)-A317839(n+1)`
-/

namespace A317841.P7331702170424263242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) + (A048865 (n + 1) - A317839 (n + 1))

end

end A317841.P7331702170424263242

namespace A317841

/-- `A048864(n+1)+A048865(n+1)-A317839(n+1)` -/
def P7331702170424263242.Spec : Prop :=
  ∀ n, P7331702170424263242.a n = A317841 (n + 1)

end A317841

/-! ## A317841.P9416453032767853337

`A300724(n+1)+A300725(n+1)-A317839(n+1)`
-/

namespace A317841.P9416453032767853337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300724 (n + 1) + (A300725 (n + 1) - A317839 (n + 1))

end

end A317841.P9416453032767853337

namespace A317841

/-- `A300724(n+1)+A300725(n+1)-A317839(n+1)` -/
def P9416453032767853337.Spec : Prop :=
  ∀ n, P9416453032767853337.a n = A317841 (n + 1)

end A317841

/-! ## A317841.P11207077028544829340

`A002322(n+1)*A034380(n+1)-A317839(n+1)`
-/

namespace A317841.P11207077028544829340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) * A034380 (n + 1) - A317839 (n + 1)

end

end A317841.P11207077028544829340

namespace A317841

/-- `A002322(n+1)*A034380(n+1)-A317839(n+1)` -/
def P11207077028544829340.Spec : Prop :=
  ∀ n, P11207077028544829340.a n = A317841 (n + 1)

end A317841

/-! ## A317841.P18048155542040735510

`∑{d}[n+1, A008683(#)*A284013((n+1)/#)]`
-/

namespace A317841.P18048155542040735510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A284013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317841.P18048155542040735510

namespace A317841

/-- `∑{d}[n+1, A008683(#)*A284013((n+1)/#)]` -/
def P18048155542040735510.Spec : Prop :=
  ∀ n, P18048155542040735510.a n = A317841 (n + 1)

end A317841

/-! ## A317841.P9653206719860593106

`A049633(n)-(A317839(n+1)+A049632(n))`
-/

namespace A317841.P9653206719860593106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - (A317839 (n + 1) + A049632 n)

end

end A317841.P9653206719860593106

namespace A317841

/-- `A049633(n)-(A317839(n+1)+A049632(n))` -/
def P9653206719860593106.Spec : Prop :=
  ∀ n, P9653206719860593106.a n = A317841 (n + 1)

end A317841

/-!
# A317842: Dirichlet convolution of A284013 (= n - A002487(n)) with itself, where A002487 is Stern's Diatomic sequence.

The programs for A317842, the canonical program `A317842.P17069676008697325351` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317842 has offset 1).

The definition of A317842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317842.P17069676008697325351

`∑{d}[n+1, A284013(#)*A284013((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A317842

/-- `∑{d}[n+1, A284013(#)*A284013((n+1)/#)]` -/
def P17069676008697325351.Spec : Prop :=
  ∀ n, P17069676008697325351.a n = A317842 (n + 1)

theorem P17069676008697325351.correct : P17069676008697325351.Spec := by
  intro n
  simp only [A317842, Nat.add_sub_cancel]

end A317842

/-! ## A317842.P14610556461434847868

`A006463(A249810(n+1)%A325639(2*n+1))`
-/

namespace A317842.P14610556461434847868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (Int.tmod (A249810 (n + 1)) (A325639 (2 * n + 1))).toNat

end

end A317842.P14610556461434847868

namespace A317842

/-- `A006463(A249810(n+1)%A325639(2*n+1))` -/
def P14610556461434847868.Spec : Prop :=
  ∀ n, P14610556461434847868.a n = A317842 (n + 1)

end A317842

/-! ## A317842.P14539599487174450174

`A252736(n+1)*A338731(A019464(n))`
-/

namespace A317842.P14539599487174450174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1) * A338731 (A019464 n).toNat

end

end A317842.P14539599487174450174

namespace A317842

/-- `A252736(n+1)*A338731(A019464(n))` -/
def P14539599487174450174.Spec : Prop :=
  ∀ n, P14539599487174450174.a n = A317842 (n + 1)

end A317842

/-! ## A317842.P10521770775466120712

`A254926(A097332(n))%A097360(n+1)`
-/

namespace A317842.P10521770775466120712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254926 (A097332 n).toNat) (A097360 (n + 1))

end

end A317842.P10521770775466120712

namespace A317842

/-- `A254926(A097332(n))%A097360(n+1)` -/
def P10521770775466120712.Spec : Prop :=
  ∀ n, P10521770775466120712.a n = A317842 (n + 1)

end A317842

/-!
# A317843: Dirichlet inverse of Stern's diatomic sequence (A002487).

The programs for A317843, there is no canonical definition to state claims against.
-/

/-! ## A317843.P5266016954220674858

`A323365(n+1)-A002487(n+1)`
-/

namespace A317843.P5266016954220674858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323365 (n + 1) - A002487 (n + 1)

end

end A317843.P5266016954220674858

/-! ## A317843.P14570065091861396389

`∑{d}[n+1, A209229(#)*A323899((n+1)/#)]`
-/

namespace A317843.P14570065091861396389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209229 d * A323899 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317843.P14570065091861396389

/-! ## A317843.P13523538991768236172

`∑{d}[n+1, A036987(#-1)*A323899((n+1)/#)]`
-/

namespace A317843.P13523538991768236172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A323899 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317843.P13523538991768236172

/-! ## A317843.P15250885558064437283

`A317837(n+1)+A323365(n+1)-A317838(n+1)`
-/

namespace A317843.P15250885558064437283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317837 (n + 1) + (A323365 (n + 1) - A317838 (n + 1))

end

end A317843.P15250885558064437283

/-! ## A317843.P5590289458226191290

`A323365(n+1)-(A317840(n+1)+A317839(n+1))`
-/

namespace A317843.P5590289458226191290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323365 (n + 1) - (A317840 (n + 1) + A317839 (n + 1))

end

end A317843.P5590289458226191290

/-! ## A317843.P17691662699096522093

`A319687(n+1)+A323365(n+1)-A318509(n+1)`
-/

namespace A317843.P17691662699096522093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319687 (n + 1) + (A323365 (n + 1) - A318509 (n + 1))

end

end A317843.P17691662699096522093

/-! ## A317843.P7076250282764297065

`A323365(n+1)-A287896(n+1)/A001511(n+1)`
-/

namespace A317843.P7076250282764297065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323365 (n + 1) : ℚ) - (A287896 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A317843.P7076250282764297065

/-! ## A317843.P12036611873865078330

`A323365(n+1)-A317840(2*(n+1))`
-/

namespace A317843.P12036611873865078330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323365 (n + 1) - A317840 (2 * (n + 1))

end

end A317843.P12036611873865078330

/-! ## A317843.P16512702753039956391

`A323365(n+1)-A323365(4*(n+1))`
-/

namespace A317843.P16512702753039956391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323365 (n + 1) - A323365 (4 * (n + 1))

end

end A317843.P16512702753039956391

/-!
# A317844: Difference between A294898 and its Möbius transform (A297114).

The programs for A317844, the canonical program `A317844.P7793600775375958411` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317844 has offset 1).

The definition of A317844 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300244, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317844.P7793600775375958411

`A300244(n+1)-A001065(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A317844

/-- `A300244(n+1)-A001065(n+1)` -/
def P7793600775375958411.Spec : Prop :=
  ∀ n, P7793600775375958411.a n = A317844 (n + 1)

theorem P7793600775375958411.correct : P7793600775375958411.Spec := by
  intro n
  simp only [A317844, Nat.add_sub_cancel]

end A317844

/-! ## A317844.P1391837923380195974

`A294898(n+1)-A297114(n+1)`
-/

namespace A317844.P1391837923380195974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (n + 1) - A297114 (n + 1)

end

end A317844.P1391837923380195974

namespace A317844

/-- `A294898(n+1)-A297114(n+1)` -/
def P1391837923380195974.Spec : Prop :=
  ∀ n, P1391837923380195974.a n = A317844 (n + 1)

theorem P1391837923380195974.correct : P1391837923380195974.Spec := by
  intro n
  simp only [A317844, Nat.add_sub_cancel, A317844.P1391837923380195974.a, A317844.P7793600775375958411.a, A001065, A001065.P4097147489331274860.a, A294898, A294898.P11311681912968614755.a, A297114, A297114.P2765220314566008295.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A297111, A297111.P9451184863548072993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317844

/-! ## A317844.P15141046680930786781

`A300244(n+1)-(A237588(n+1)+n)`
-/

namespace A317844.P15141046680930786781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300244 (n + 1) - (A237588 (n + 1) + (n : ℤ))

end

end A317844.P15141046680930786781

namespace A317844

/-- `A300244(n+1)-(A237588(n+1)+n)` -/
def P15141046680930786781.Spec : Prop :=
  ∀ n, P15141046680930786781.a n = A317844 (n + 1)

theorem P15141046680930786781.correct : P15141046680930786781.Spec := by
  intro n
  simp only [A317844, Nat.add_sub_cancel, A317844.P15141046680930786781.a, A317844.P7793600775375958411.a, A001065, A001065.P4097147489331274860.a, A237588, A237588.P7919289499905681947.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A033880, A033880.P6005875780263802708.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317844

/-! ## A317844.P7892026671738512877

`∑{d}[n+1, A008683(#)*A318447((n+1)/#)]`
-/

namespace A317844.P7892026671738512877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A318447 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317844.P7892026671738512877

namespace A317844

/-- `∑{d}[n+1, A008683(#)*A318447((n+1)/#)]` -/
def P7892026671738512877.Spec : Prop :=
  ∀ n, P7892026671738512877.a n = A317844 (n + 1)

end A317844

/-! ## A317844.P177691230028467888

`∑{d}[n+1, A157658(#)*A294898((n+1)/#)]`
-/

namespace A317844.P177691230028467888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A294898 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317844.P177691230028467888

namespace A317844

/-- `∑{d}[n+1, A157658(#)*A294898((n+1)/#)]` -/
def P177691230028467888.Spec : Prop :=
  ∀ n, P177691230028467888.a n = A317844 (n + 1)

end A317844

/-! ## A317844.P3518237025066667043

`A005187(n+1)-(A297114(n+1)+A000203(n+1))`
-/

namespace A317844.P3518237025066667043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - (A297114 (n + 1) + A000203 (n + 1))

end

end A317844.P3518237025066667043

namespace A317844

/-- `A005187(n+1)-(A297114(n+1)+A000203(n+1))` -/
def P3518237025066667043.Spec : Prop :=
  ∀ n, P3518237025066667043.a n = A317844 (n + 1)

theorem P3518237025066667043.correct : P3518237025066667043.Spec := by
  intro n
  simp only [A317844, Nat.add_sub_cancel, A317844.P3518237025066667043.a, A317844.P7793600775375958411.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A297114, A297114.P2765220314566008295.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A297111, A297111.P9451184863548072993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317844

/-! ## A317844.P15511356039204744874

`A005187(n+1)-(A297111(n+1)+A001065(n+1))`
-/

namespace A317844.P15511356039204744874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - (A297111 (n + 1) + A001065 (n + 1))

end

end A317844.P15511356039204744874

namespace A317844

/-- `A005187(n+1)-(A297111(n+1)+A001065(n+1))` -/
def P15511356039204744874.Spec : Prop :=
  ∀ n, P15511356039204744874.a n = A317844 (n + 1)

theorem P15511356039204744874.correct : P15511356039204744874.Spec := by
  intro n
  simp only [A317844, Nat.add_sub_cancel, A317844.P15511356039204744874.a, A317844.P7793600775375958411.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A297111, A297111.P9451184863548072993.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317844

/-! ## A317844.P6450763721623251694

`A294898(n+1)+A300244(n+1)-A011371(n+1)`
-/

namespace A317844.P6450763721623251694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (n + 1) + (A300244 (n + 1) - A011371 (n + 1))

end

end A317844.P6450763721623251694

namespace A317844

/-- `A294898(n+1)+A300244(n+1)-A011371(n+1)` -/
def P6450763721623251694.Spec : Prop :=
  ∀ n, P6450763721623251694.a n = A317844 (n + 1)

end A317844

/-! ## A317844.P12551796030958243526

`A051953(n+1)+A294898(n+1)-A297117(n+1)`
-/

namespace A317844.P12551796030958243526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A294898 (n + 1) - A297117 (n + 1))

end

end A317844.P12551796030958243526

namespace A317844

/-- `A051953(n+1)+A294898(n+1)-A297117(n+1)` -/
def P12551796030958243526.Spec : Prop :=
  ∀ n, P12551796030958243526.a n = A317844 (n + 1)

theorem P12551796030958243526.correct : P12551796030958243526.Spec := by
  intro n
  simp only [A317844, Nat.add_sub_cancel, A317844.P12551796030958243526.a, A317844.P7793600775375958411.a, A001065, A001065.P4097147489331274860.a, A051953, A051953.P12093122754958550118.a, A294898, A294898.P11311681912968614755.a, A297117, A297117.P14003803636479694355.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A005187, A005187.P3874015513960485494.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A297114, A297114.P2765220314566008295.a, A318305, A318305.P17845263951644339002.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A297111, A297111.P9451184863548072993.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317844

/-! ## A317844.P13438084938276988998

`A294898(n+1)+A297115(n+1)-A083254(n+1)`
-/

namespace A317844.P13438084938276988998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (n + 1) + (A297115 (n + 1) - A083254 (n + 1))

end

end A317844.P13438084938276988998

namespace A317844

/-- `A294898(n+1)+A297115(n+1)-A083254(n+1)` -/
def P13438084938276988998.Spec : Prop :=
  ∀ n, P13438084938276988998.a n = A317844 (n + 1)

theorem P13438084938276988998.correct : P13438084938276988998.Spec := by
  intro n
  simp only [A317844, Nat.add_sub_cancel, A317844.P13438084938276988998.a, A317844.P7793600775375958411.a, A001065, A001065.P4097147489331274860.a, A083254, A083254.P14519512853932888104.a, A294898, A294898.P11311681912968614755.a, A297115, A297115.P17041612972225485539.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A051953, A051953.P12093122754958550118.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A297114, A297114.P2765220314566008295.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A297111, A297111.P9451184863548072993.a, A318305, A318305.P17845263951644339002.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317844

/-!
# A317847: Numerators of sequence whose Dirichlet convolution with itself yields A303757, the ordinal transform of function a(1) = 0; a(n) = phi(n) for n > 1, where phi is Euler's totient function (A000010).

The programs for A317847, there is no canonical definition to state claims against.
-/

/-! ## A317847.P4088367251212466138

`A342769(13*A260739(n+1))`
-/

namespace A317847.P4088367251212466138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342769 (13 * A260739 (n + 1)).toNat

end

end A317847.P4088367251212466138

/-! ## A317847.P17069878142330236559

`A342769(lcm(13, A260739(n+1)))`
-/

namespace A317847.P17069878142330236559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342769 (Int.lcm 13 (A260739 (n + 1)))

end

end A317847.P17069878142330236559

/-! ## A317847.P5413071728633416770

`A070408(A070288(n+1)^A070375(n))`
-/

namespace A317847.P5413071728633416770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070408 (SequenceMachineLib.roundAway ((A070288 (n + 1) : ℚ) ^ (A070375 n : ℤ))).toNat

end

end A317847.P5413071728633416770

/-!
# A317848: Multiplicative with a(p^e) = binomial(2*e, e).

The programs for A317848, the canonical program `A317848.P7082509478538958365` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317848 has offset 1).

The definition of A317848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317848.P7082509478538958365

`∏{e}[n+1, C(2*#, #)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317848

/-- `∏{e}[n+1, C(2*#, #)]` -/
def P7082509478538958365.Spec : Prop :=
  ∀ n, (P7082509478538958365.a n : ℤ) = A317848 (n + 1)

theorem P7082509478538958365.correct : P7082509478538958365.Spec := by
  intro n
  simp only [A317848, Nat.add_sub_cancel]

end A317848

/-! ## A317848.P16937560030715365480

`∏{e}[n+1, A000984(#)]`
-/

namespace A317848.P16937560030715365480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000984 (Nat.factorization (f1 n) p)

end

end A317848.P16937560030715365480

namespace A317848

/-- `∏{e}[n+1, A000984(#)]` -/
def P16937560030715365480.Spec : Prop :=
  ∀ n, P16937560030715365480.a n = A317848 (n + 1)

theorem P16937560030715365480.correct : P16937560030715365480.Spec := by
  intro n
  simp only [A317848, Nat.add_sub_cancel, A317848.P16937560030715365480.f1, A317848.P16937560030715365480.a, A317848.P7082509478538958365.f1, A317848.P7082509478538958365.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A317848

/-! ## A317848.P9185617922294523069

`∏{e}[n+1, (#+1)*A000108(#)]`
-/

namespace A317848.P9185617922294523069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1 : ℤ) * A000108 (Nat.factorization (f1 n) p)

end

end A317848.P9185617922294523069

namespace A317848

/-- `∏{e}[n+1, (#+1)*A000108(#)]` -/
def P9185617922294523069.Spec : Prop :=
  ∀ n, P9185617922294523069.a n = A317848 (n + 1)

end A317848

/-! ## A317848.P3747716276731925292

`A000005(n+1)*A069739(n+1)`
-/

namespace A317848.P3747716276731925292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A069739 (n + 1)

end

end A317848.P3747716276731925292

namespace A317848

/-- `A000005(n+1)*A069739(n+1)` -/
def P3747716276731925292.Spec : Prop :=
  ∀ n, P3747716276731925292.a n = A317848 (n + 1)

end A317848

/-! ## A317848.P6541285911287105942

`A037445(n+1)*A046643(n+1)`
-/

namespace A317848.P6541285911287105942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1) * A046643 (n + 1)

end

end A317848.P6541285911287105942

namespace A317848

/-- `A037445(n+1)*A046643(n+1)` -/
def P6541285911287105942.Spec : Prop :=
  ∀ n, P6541285911287105942.a n = A317848 (n + 1)

end A317848

/-! ## A317848.P7410917102143072274

`∏{e}[(n+1)², A001405(#)]`
-/

namespace A317848.P7410917102143072274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001405 (Nat.factorization (f1 n) p)

end

end A317848.P7410917102143072274

namespace A317848

/-- `∏{e}[(n+1)², A001405(#)]` -/
def P7410917102143072274.Spec : Prop :=
  ∀ n, P7410917102143072274.a n = A317848 (n + 1)

end A317848

/-! ## A317848.P5438210914277007859

`∏{e}[(n+1)², A056040(#)]`
-/

namespace A317848.P5438210914277007859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056040 (Nat.factorization (f1 n) p)

end

end A317848.P5438210914277007859

namespace A317848

/-- `∏{e}[(n+1)², A056040(#)]` -/
def P5438210914277007859.Spec : Prop :=
  ∀ n, P5438210914277007859.a n = A317848 (n + 1)

end A317848

/-! ## A317848.P6868344743180895721

`∏{e}[(n+1)², A063886(#)]`
-/

namespace A317848.P6868344743180895721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A063886 (Nat.factorization (f1 n) p)

end

end A317848.P6868344743180895721

namespace A317848

/-- `∏{e}[(n+1)², A063886(#)]` -/
def P6868344743180895721.Spec : Prop :=
  ∀ n, P6868344743180895721.a n = A317848 (n + 1)

end A317848

/-! ## A317848.P8305821657699059851

`∏{e}[(n+1)², A081668(#)]`
-/

namespace A317848.P8305821657699059851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A081668 (Nat.factorization (f1 n) p)

end

end A317848.P8305821657699059851

namespace A317848

/-- `∏{e}[(n+1)², A081668(#)]` -/
def P8305821657699059851.Spec : Prop :=
  ∀ n, P8305821657699059851.a n = A317848 (n + 1)

end A317848

/-! ## A317848.P17293643254756088257

`∏{e}[(n+1)², A089849(#)]`
-/

namespace A317848.P17293643254756088257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A089849 (Nat.factorization (f1 n) p)

end

end A317848.P17293643254756088257

namespace A317848

/-- `∏{e}[(n+1)², A089849(#)]` -/
def P17293643254756088257.Spec : Prop :=
  ∀ n, P17293643254756088257.a n = A317848 (n + 1)

end A317848

/-! ## A317848.P3968800917339095382

`∏{e}[(n+1)², A126869(#)]`
-/

namespace A317848.P3968800917339095382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A126869 (Nat.factorization (f1 n) p)

end

end A317848.P3968800917339095382

namespace A317848

/-- `∏{e}[(n+1)², A126869(#)]` -/
def P3968800917339095382.Spec : Prop :=
  ∀ n, P3968800917339095382.a n = A317848 (n + 1)

end A317848

/-! ## A317848.P14744415260054634168

`∏{e}[(n+1)², A126930(#)]`
-/

namespace A317848.P14744415260054634168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A126930 (Nat.factorization (f1 n) p)

end

end A317848.P14744415260054634168

namespace A317848

/-- `∏{e}[(n+1)², A126930(#)]` -/
def P14744415260054634168.Spec : Prop :=
  ∀ n, P14744415260054634168.a n = A317848 (n + 1)

end A317848

/-! ## A317848.P1311611625914406908

`∏{e}[(n+1)², A128014(#)]`
-/

namespace A317848.P1311611625914406908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A128014 (Nat.factorization (f1 n) p)

end

end A317848.P1311611625914406908

namespace A317848

/-- `∏{e}[(n+1)², A128014(#)]` -/
def P1311611625914406908.Spec : Prop :=
  ∀ n, P1311611625914406908.a n = A317848 (n + 1)

end A317848

/-! ## A317848.P16544715379367715690

`∏{e}[(n+1)², A129383(#)]`
-/

namespace A317848.P16544715379367715690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A129383 (Nat.factorization (f1 n) p)

end

end A317848.P16544715379367715690

namespace A317848

/-- `∏{e}[(n+1)², A129383(#)]` -/
def P16544715379367715690.Spec : Prop :=
  ∀ n, P16544715379367715690.a n = A317848 (n + 1)

end A317848

/-!
# A317849: Number of states of the Finite State Automaton Gn accepting the language of maximal (or minimal) lexicographic representatives of elements in the positive braid monoid An.

The programs for A317849, the canonical program `A317849.P6957443756652081945` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317849 has offset 1).

The definition of A317849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317849.P1611570769744747101

`∑[∑[∑[ceil(ϕ²*a(n-1))]]]` with `a(0)=1, a(1)=2`
-/

namespace A317849.P1611570769744747101
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  ⌈Real.goldenRatio ^ 2 * (f3 (n - 1) : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P1611570769744747101

namespace A317849

/-- `∑[∑[∑[ceil(ϕ²*a(n-1))]]]` -/
def P1611570769744747101.Spec : Prop :=
  ∀ n, P1611570769744747101.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P7082339659889970918

`∑[∑[floor(ϕ²*a(n-1))+2]]` with `a(0)=1, a(1)=3`
-/

namespace A317849.P7082339659889970918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  ⌊Real.goldenRatio ^ 2 * (f2 (n - 1) : ℝ)⌋ + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P7082339659889970918

namespace A317849

/-- `∑[∑[floor(ϕ²*a(n-1))+2]]` -/
def P7082339659889970918.Spec : Prop :=
  ∀ n, P7082339659889970918.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P6957443756652081945

`∑[3*a(n-1)-a(n-2)+n]` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317849

/-- `∑[3*a(n-1)-a(n-2)+n]` -/
def P6957443756652081945.Spec : Prop :=
  ∀ n, P6957443756652081945.a n = A317849 (n + 1)

theorem P6957443756652081945.correct : P6957443756652081945.Spec := by
  intro n
  simp only [A317849, Nat.add_sub_cancel]

end A317849

/-! ## A317849.P17435986219581353313

`∑[3*a(n-1)-(a(n-2)-n)]` with `a(0)=1, a(1)=4`
-/

namespace A317849.P17435986219581353313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 * f1 (n - 1) - (f1 (n - 2) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P17435986219581353313

namespace A317849

/-- `∑[3*a(n-1)-(a(n-2)-n)]` -/
def P17435986219581353313.Spec : Prop :=
  ∀ n, P17435986219581353313.a n = A317849 (n + 1)

theorem P17435986219581353313.correct : P17435986219581353313.Spec := by
  intro n
  simp only [A317849, Nat.add_sub_cancel, A317849.P17435986219581353313.f1, A317849.P17435986219581353313.a, A317849.P6957443756652081945.f1, A317849.P6957443756652081945.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A317849

/-! ## A317849.P17657099645372616743

`∑[∑[A069403(n)]]`
-/

namespace A317849.P17657099645372616743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069403 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P17657099645372616743

namespace A317849

/-- `∑[∑[A069403(n)]]` -/
def P17657099645372616743.Spec : Prop :=
  ∀ n, P17657099645372616743.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P8183966482688254935

`∑[A281362(2*n)]`
-/

namespace A317849.P8183966482688254935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281362 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P8183966482688254935

namespace A317849

/-- `∑[A281362(2*n)]` -/
def P8183966482688254935.Spec : Prop :=
  ∀ n, P8183966482688254935.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P407816703063615026

`∑[∑[A001595(2*n)]]`
-/

namespace A317849.P407816703063615026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P407816703063615026

namespace A317849

/-- `∑[∑[A001595(2*n)]]` -/
def P407816703063615026.Spec : Prop :=
  ∀ n, P407816703063615026.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P1692785677511466937

`∑[∑[A126358(n)]-n]`
-/

namespace A317849.P1692785677511466937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P1692785677511466937

namespace A317849

/-- `∑[∑[A126358(n)]-n]` -/
def P1692785677511466937.Spec : Prop :=
  ∀ n, P1692785677511466937.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P12921322272256576082

`∑[A141752(n+1)-1]`
-/

namespace A317849.P12921322272256576082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141752 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P12921322272256576082

namespace A317849

/-- `∑[A141752(n+1)-1]` -/
def P12921322272256576082.Spec : Prop :=
  ∀ n, P12921322272256576082.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P7249382511053700018

`∑[A025169(n)-(n+1)]`
-/

namespace A317849.P7249382511053700018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P7249382511053700018

namespace A317849

/-- `∑[A025169(n)-(n+1)]` -/
def P7249382511053700018.Spec : Prop :=
  ∀ n, P7249382511053700018.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P6981122040480887875

`∑[A131269(2*n)+n]`
-/

namespace A317849.P6981122040480887875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131269 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P6981122040480887875

namespace A317849

/-- `∑[A131269(2*n)+n]` -/
def P6981122040480887875.Spec : Prop :=
  ∀ n, P6981122040480887875.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P11331423668344399315

`∑[A066629(2*n)-n]`
-/

namespace A317849.P11331423668344399315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P11331423668344399315

namespace A317849

/-- `∑[A066629(2*n)-n]` -/
def P11331423668344399315.Spec : Prop :=
  ∀ n, P11331423668344399315.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P6614247725878557209

`∑[∑[A062114(2*n+1)]]`
-/

namespace A317849.P6614247725878557209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P6614247725878557209

namespace A317849

/-- `∑[∑[A062114(2*n+1)]]` -/
def P6614247725878557209.Spec : Prop :=
  ∀ n, P6614247725878557209.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P5132976666911471858

`A154691(2*n)-A000096(n)`
-/

namespace A317849.P5132976666911471858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 (2 * n) - A000096 n

end

end A317849.P5132976666911471858

namespace A317849

/-- `A154691(2*n)-A000096(n)` -/
def P5132976666911471858.Spec : Prop :=
  ∀ n, P5132976666911471858.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P11999587807087422603

`A126358(n+1)-A089071(n+3)`
-/

namespace A317849.P11999587807087422603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126358 (n + 1) - A089071 (n + 3)

end

end A317849.P11999587807087422603

namespace A317849

/-- `A126358(n+1)-A089071(n+3)` -/
def P11999587807087422603.Spec : Prop :=
  ∀ n, P11999587807087422603.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P8333580643220136032

`A099572(2*n)-A054452(n+1)`
-/

namespace A317849.P8333580643220136032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099572 (2 * n) - A054452 (n + 1)

end

end A317849.P8333580643220136032

namespace A317849

/-- `A099572(2*n)-A054452(n+1)` -/
def P8333580643220136032.Spec : Prop :=
  ∀ n, P8333580643220136032.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P10528221358578806266

`A215005(2*n+1)-A000217(n)`
-/

namespace A317849.P10528221358578806266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215005 (2 * n + 1) - A000217 n

end

end A317849.P10528221358578806266

namespace A317849

/-- `A215005(2*n+1)-A000217(n)` -/
def P10528221358578806266.Spec : Prop :=
  ∀ n, P10528221358578806266.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P14345537895049914399

`A215006(2*n+1)+∑[A215006(2*n)]`
-/

namespace A317849.P14345537895049914399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317849.P14345537895049914399

namespace A317849

/-- `A215006(2*n+1)+∑[A215006(2*n)]` -/
def P14345537895049914399.Spec : Prop :=
  ∀ n, P14345537895049914399.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P11539525531343520710

`A152891(n+2)-(A001906(n+1)+A000217(n))`
-/

namespace A317849.P11539525531343520710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152891 (n + 2) - (A001906 (n + 1) + A000217 n)

end

end A317849.P11539525531343520710

namespace A317849

/-- `A152891(n+2)-(A001906(n+1)+A000217(n))` -/
def P11539525531343520710.Spec : Prop :=
  ∀ n, P11539525531343520710.a n = A317849 (n + 1)

end A317849

/-! ## A317849.P10585964170442166368

`A027941(n+1)+A027941(n+1)-A000217(n+1)`
-/

namespace A317849.P10585964170442166368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1) + (A027941 (n + 1) - A000217 (n + 1))

end

end A317849.P10585964170442166368

namespace A317849

/-- `A027941(n+1)+A027941(n+1)-A000217(n+1)` -/
def P10585964170442166368.Spec : Prop :=
  ∀ n, P10585964170442166368.a n = A317849 (n + 1)

end A317849

/-!
# A317851: Primes p such that A090086(p+1) < p.

The programs for A317851, there is no canonical definition to state claims against.
-/

/-! ## A317851.P9101616844660147413

`p?[lt[A090086(n+1), n^(n%2)]]`
-/

namespace A317851.P9101616844660147413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090086 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A317851.P9101616844660147413

/-! ## A317851.P15257423959830630139

`p?[lt[A090087(n+1), A093411(n)]]`
-/

namespace A317851.P15257423959830630139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090087 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A317851.P15257423959830630139

/-! ## A317851.P7047168357941204790

`p?[lt[A090086(n+1), A351078(n)]]`
-/

namespace A317851.P7047168357941204790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090086 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A317851.P7047168357941204790

/-! ## A317851.P18242340377811369785

`p?[lt[A090087(n+1), A105222(n+1)]]`
-/

namespace A317851.P18242340377811369785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090087 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A317851.P18242340377811369785

/-! ## A317851.P6625912734186633880

`p?[lt[A090086(n+1), A088491(n+2)]]`
-/

namespace A317851.P6625912734186633880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090086 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088491 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A317851.P6625912734186633880

/-!
# A317852: Number of plane trees with n nodes where the sequence of branches directly under any given node is aperiodic, meaning its cyclic permutations are all different.

The programs for A317852, there is no canonical definition to state claims against.
-/

/-! ## A317852.P7457848172618756695

`A083896(A000984(n))+A022553(n)`
-/

namespace A317852.P7457848172618756695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A000984 n).toNat + A022553 n

end

end A317852.P7457848172618756695

/-! ## A317852.P6465170749952099948

`A224782(A103620(n))+A022553(n)`
-/

namespace A317852.P6465170749952099948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (A103620 n).toNat + A022553 n

end

end A317852.P6465170749952099948

/-! ## A317852.P14298833236737311813

`A089617(A019546(n+1))+A022553(n)`
-/

namespace A317852.P14298833236737311813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089617 (A019546 (n + 1)).toNat + A022553 n

end

end A317852.P14298833236737311813

/-! ## A317852.P2421588319912139257

`A055641(A275593(n+1))+A022553(n)`
-/

namespace A317852.P2421588319912139257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A275593 (n + 1)).toNat + A022553 n

end

end A317852.P2421588319912139257

/-!
# A317854: Let b(1) = b(2) = 1; for n >= 3, b(n) = n - b(t(n)) - b(n-t(n)) where t = A287422. a(n) = 2*b(n) - n.

The programs for A317854, there is no canonical definition to state claims against.
-/

/-! ## A317854.P9687853137070153402

`A033999(A000523(n+1))*A317742(n+1)`
-/

namespace A317854.P9687853137070153402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000523 (n + 1)).toNat * A317742 (n + 1)

end

end A317854.P9687853137070153402

/-! ## A317854.P12395133403455301152

`or(A317742(A031285(n)), A317754(n+1))`
-/

namespace A317854.P12395133403455301152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A317742 (A031285 n).toNat) (A317754 (n + 1))

end

end A317854.P12395133403455301152

/-! ## A317854.P15007104590954569597

`A349797(A046530(3*n+1))+A317754(n+1)`
-/

namespace A317854.P15007104590954569597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A046530 (3 * n + 1)).toNat + A317754 (n + 1)

end

end A317854.P15007104590954569597

/-! ## A317854.P4750973039534754261

`or(A317754(n+1)%A317766(n+1), A317742(n+1))`
-/

namespace A317854.P4750973039534754261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A317754 (n + 1)) (A317766 (n + 1))) (A317742 (n + 1))

end

end A317854.P4750973039534754261

/-!
# A317856: Number of nXn 0..1 arrays with every element unequal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317856, there is no canonical definition to state claims against.
-/

/-! ## A317856.P14768272683687521426

`A317863(∑[4*n]+1)`
-/

namespace A317856.P14768272683687521426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317856.P14768272683687521426

/-! ## A317856.P16456713596431145126

`record[A003982(n)*A317863(n+1)]`
-/

namespace A317856.P16456713596431145126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317856.P16456713596431145126

/-! ## A317856.P17013796504472588477

`record[A214505(n)*A317863(n+1)]`
-/

namespace A317856.P17013796504472588477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A317863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317856.P17013796504472588477

/-! ## A317856.P1321583356333914831

`((-1)^n)²*A317863(A001844(n))`
-/

namespace A317856.P1321583356333914831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A317863 (A001844 n).toNat

end

end A317856.P1321583356333914831

/-! ## A317856.P15653015621773374230

`A317863(A001844(n))+A025442(n)`
-/

namespace A317856.P15653015621773374230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A001844 n).toNat + A025442 n

end

end A317856.P15653015621773374230

/-!
# A317857: Number of nX2 0..1 arrays with every element unequal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317857, there is no canonical definition to state claims against.
-/

/-! ## A317857.P6721708384019006869

`A317863(∑[n+1]+2)`
-/

namespace A317857.P6721708384019006869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A317857.P6721708384019006869

/-! ## A317857.P11867376754015417075

`or(char[1], A317863(A167487(n)-5))`
-/

namespace A317857.P11867376754015417075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317863 (A167487 n - 5).toNat)

end

end A317857.P11867376754015417075

/-! ## A317857.P4569142355405584077

`record[A010054(n)*A317863(n+2)]`
-/

namespace A317857.P4569142355405584077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A317863 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317857.P4569142355405584077

/-! ## A317857.P5659249738572070169

`record[A317863(n+2)/A047020(n)]`
-/

namespace A317857.P5659249738572070169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317863 (n + 2) : ℚ) / (A047020 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317857.P5659249738572070169

/-! ## A317857.P12852235787388034661

`record[A317863(n+3)/A127895(n)]`
-/

namespace A317857.P12852235787388034661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317863 (n + 3) : ℚ) / (A127895 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317857.P12852235787388034661

/-!
# A317858: Number of nX3 0..1 arrays with every element unequal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317858, there is no canonical definition to state claims against.
-/

/-! ## A317858.P8520611427892138098

`A317863(∑[n+2]+4)`
-/

namespace A317858.P8520611427892138098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317858.P8520611427892138098

/-! ## A317858.P13730713894136585025

`A317863(A167614(n+1))+char[29]`
-/

namespace A317858.P13730713894136585025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317858.P13730713894136585025

/-! ## A317858.P12764787458115151682

`A317863(A055998(n)+6)+char[43]`
-/

namespace A317858.P12764787458115151682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317858.P12764787458115151682

/-! ## A317858.P17471832466668318038

`or(char[3], A317863(A000217(n+2)+3))`
-/

namespace A317858.P17471832466668318038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317863 (A000217 (n + 2) + 3).toNat)

end

end A317858.P17471832466668318038

/-! ## A317858.P14672754989829636304

`gcd(A000038(n), A317863(A167614(n+1)))`
-/

namespace A317858.P14672754989829636304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A317863 (A167614 (n + 1)).toNat)

end

end A317858.P14672754989829636304

/-!
# A317859: Number of nX4 0..1 arrays with every element unequal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317859, there is no canonical definition to state claims against.
-/

/-! ## A317859.P10890837702639517701

`A317863(∑[n+3]+7)`
-/

namespace A317859.P10890837702639517701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317859.P10890837702639517701

/-! ## A317859.P3002653661204656998

`A317863(Δ[A008778(n)]+6)+char[25]`
-/

namespace A317859.P3002653661204656998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317859.P3002653661204656998

/-! ## A317859.P11886901724365508646

`A317863(A167614(n+2)+1)+n%-1`
-/

namespace A317859.P11886901724365508646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A167614 (n + 2) + 1).toNat + Int.tmod (n : ℤ) (-1)

end

end A317859.P11886901724365508646

/-! ## A317859.P3432620824223861203

`A317863(Δ[A008778(n)]+6)%A000108(n+3)`
-/

namespace A317859.P3432620824223861203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317863 (f1 (n + 1) - f1 n + 6).toNat) (A000108 (n + 3))

end

end A317859.P3432620824223861203

/-! ## A317859.P3291325054244802531

`A014963(12*(n+1))*A317863(Δ[A008778(n)]+6)`
-/

namespace A317859.P3291325054244802531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A317863 (f1 (n + 1) - f1 n + 6).toNat

end

end A317859.P3291325054244802531

/-!
# A317860: Number of nX5 0..1 arrays with every element unequal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317860, there is no canonical definition to state claims against.
-/

/-! ## A317860.P14922047098627968051

`A317863(A374005(n+1))`
-/

namespace A317860.P14922047098627968051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A374005 (n + 1)).toNat

end

end A317860.P14922047098627968051

/-! ## A317860.P9781398872831023544

`A317863(A155212(n)+13)`
-/

namespace A317860.P9781398872831023544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A155212 n + 13).toNat

end

end A317860.P9781398872831023544

/-! ## A317860.P13630560755700525645

`A317863(A056000(n)+15)`
-/

namespace A317860.P13630560755700525645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A056000 n + 15).toNat

end

end A317860.P13630560755700525645

/-! ## A317860.P2474427368758004886

`A317863(eq[7, A066657(n)])`
-/

namespace A317860.P2474427368758004886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317860.P2474427368758004886

/-! ## A317860.P15459885449718907761

`A317863(A167614(n+3)+2)`
-/

namespace A317860.P15459885449718907761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A167614 (n + 3) + 2).toNat

end

end A317860.P15459885449718907761

/-!
# A317861: Number of nX6 0..1 arrays with every element unequal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317861, there is no canonical definition to state claims against.
-/

/-! ## A317861.P3758175670526227294

`A317863(A374007(n+1))`
-/

namespace A317861.P3758175670526227294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A374007 (n + 1)).toNat

end

end A317861.P3758175670526227294

/-! ## A317861.P14752474268387768329

`A317863(A056115(n)+21)`
-/

namespace A317861.P14752474268387768329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A056115 n + 21).toNat

end

end A317861.P14752474268387768329

/-! ## A317861.P13329766786816312088

`A317863(Δ[A111396(n)]+9)`
-/

namespace A317861.P13329766786816312088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (f1 (n + 1) - f1 n + 9).toNat

end

end A317861.P13329766786816312088

/-! ## A317861.P12359613109110438166

`A317863(A167499(n+4)+1)`
-/

namespace A317861.P12359613109110438166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A167499 (n + 4) + 1).toNat

end

end A317861.P12359613109110438166

/-! ## A317861.P12133355246702338397

`A317863(A000124(n+5)+5)`
-/

namespace A317861.P12133355246702338397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A000124 (n + 5) + 5).toNat

end

end A317861.P12133355246702338397

/-!
# A317862: Number of nX7 0..1 arrays with every element unequal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317862, there is no canonical definition to state claims against.
-/

/-! ## A317862.P10560681242093712663

`A317863(A374008(n+1))`
-/

namespace A317862.P10560681242093712663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A374008 (n + 1)).toNat

end

end A317862.P10560681242093712663

/-! ## A317862.P12686659727642965394

`A317863(A302537(n)+27)`
-/

namespace A317862.P12686659727642965394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A302537 n + 27).toNat

end

end A317862.P12686659727642965394

/-! ## A317862.P8706205787415869322

`A317863(A056119(n)+28)`
-/

namespace A317862.P8706205787415869322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A056119 n + 28).toNat

end

end A317862.P8706205787415869322

/-! ## A317862.P13462589364098910750

`A317863(eq[11, A066657(n)])`
-/

namespace A317862.P13462589364098910750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317862.P13462589364098910750

/-! ## A317862.P11563666975108694584

`A317863(A166136(n+5)+1)`
-/

namespace A317862.P11563666975108694584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (A166136 (n + 5) + 1).toNat

end

end A317862.P11563666975108694584

/-!
# A317863: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317863, there is no canonical definition to state claims against.
-/

/-! ## A317863.P5294055277589722530

`A318552(n+1)-A184159(A099594(n))`
-/

namespace A317863.P5294055277589722530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (n + 1) - A184159 (A099594 n).toNat

end

end A317863.P5294055277589722530

/-! ## A317863.P10294217147429868808

`A318552(n+1)-A163510(A157273(n))`
-/

namespace A317863.P10294217147429868808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (n + 1) - A163510 (A157273 n).toNat

end

end A317863.P10294217147429868808

/-! ## A317863.P12688857576635531051

`A318552(n+1)-A173920(A173917(n))`
-/

namespace A317863.P12688857576635531051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (n + 1) - A173920 (A173917 n).toNat

end

end A317863.P12688857576635531051

/-! ## A317863.P16895887592853234871

`A318214(n+1)%A180414(n+4)`
-/

namespace A317863.P16895887592853234871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318214 (n + 1)) (A180414 (n + 4))

end

end A317863.P16895887592853234871

/-! ## A317863.P8438411534482173474

`A318214(n+1)+A128975(A000079(n))`
-/

namespace A317863.P8438411534482173474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (n + 1) + A128975 (A000079 n).toNat

end

end A317863.P8438411534482173474

/-!
# A317865: Number of nXn 0..1 arrays with every element unequal to 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317865, there is no canonical definition to state claims against.
-/

/-! ## A317865.P13474428548462919936

`A317871(∑[4*n]+1)`
-/

namespace A317865.P13474428548462919936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317865.P13474428548462919936

/-! ## A317865.P10421193100255395046

`A317871(A001844(n))+char[10]`
-/

namespace A317865.P10421193100255395046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317865.P10421193100255395046

/-! ## A317865.P17611348945044834217

`A057427(n)*A317871(A001844(n))`
-/

namespace A317865.P17611348945044834217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317871 (A001844 n).toNat

end

end A317865.P17611348945044834217

/-! ## A317865.P14251337734658809089

`A111332(n)!*A317871(A001844(n))`
-/

namespace A317865.P14251337734658809089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A111332 n).toNat : ℤ) * A317871 (A001844 n).toNat

end

end A317865.P14251337734658809089

/-! ## A317865.P1092364739501880325

`A007318(∑[n])*A317871(A001844(n))`
-/

namespace A317865.P1092364739501880325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A317871 (A001844 n).toNat

end

end A317865.P1092364739501880325

/-!
# A317866: Number of nX3 0..1 arrays with every element unequal to 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317866, there is no canonical definition to state claims against.
-/

/-! ## A317866.P14068806371835649475

`A317871(∑[n+2]+4)`
-/

namespace A317866.P14068806371835649475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317866.P14068806371835649475

/-! ## A317866.P4123523721143043575

`A317871(A167614(n+1))+char[20]`
-/

namespace A317866.P4123523721143043575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317866.P4123523721143043575

/-! ## A317866.P4886825687171254456

`A317871(A000096(n+1)+4)+char[20]`
-/

namespace A317866.P4886825687171254456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317866.P4886825687171254456

/-! ## A317866.P6462703336213544331

`A057427(n)*A317871(A167614(n+1))`
-/

namespace A317866.P6462703336213544331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317871 (A167614 (n + 1)).toNat

end

end A317866.P6462703336213544331

/-! ## A317866.P12413405324633847176

`A317871(A167614(n+1))%A000079(n)`
-/

namespace A317866.P12413405324633847176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317871 (A167614 (n + 1)).toNat) (A000079 n)

end

end A317866.P12413405324633847176

/-!
# A317867: Number of nX4 0..1 arrays with every element unequal to 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317867, there is no canonical definition to state claims against.
-/

/-! ## A317867.P13499247059061560869

`A317871(∑[n+3]+7)`
-/

namespace A317867.P13499247059061560869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317867.P13499247059061560869

/-! ## A317867.P6584061899935377821

`A317871(Δ[A008778(n)]+6)+char[27]`
-/

namespace A317867.P6584061899935377821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317867.P6584061899935377821

/-! ## A317867.P338845820956580115

`A057427(n)*A317871(Δ[A008778(n)]+6)`
-/

namespace A317867.P338845820956580115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317871 (f1 (n + 1) - f1 n + 6).toNat

end

end A317867.P338845820956580115

/-! ## A317867.P3875585300462296977

`A317871(Δ[A008778(n)]+6)/A014963(4*n+10)`
-/

namespace A317867.P3875585300462296977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317871 (f1 (n + 1) - f1 n + 6).toNat : ℚ) / (A014963 (4 * n + 10) : ℚ)

end

end A317867.P3875585300462296977

/-! ## A317867.P17745806912349058745

`A014963(12*n+6)*A317871(Δ[A008778(n)]+6)`
-/

namespace A317867.P17745806912349058745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A317871 (f1 (n + 1) - f1 n + 6).toNat

end

end A317867.P17745806912349058745

/-!
# A317868: Number of n X 5 0..1 arrays with every element unequal to 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317868, there is no canonical definition to state claims against.
-/

/-! ## A317868.P5226324853067703250

`A317871(A374005(n+1))`
-/

namespace A317868.P5226324853067703250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A374005 (n + 1)).toNat

end

end A317868.P5226324853067703250

/-! ## A317868.P6713131439215451229

`A317871(A167499(n+3))`
-/

namespace A317868.P6713131439215451229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A167499 (n + 3)).toNat

end

end A317868.P6713131439215451229

/-! ## A317868.P9932565672162394569

`A317871(A155212(n)+13)`
-/

namespace A317868.P9932565672162394569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A155212 n + 13).toNat

end

end A317868.P9932565672162394569

/-! ## A317868.P9100577015772223623

`A317871(A056000(n)+15)`
-/

namespace A317868.P9100577015772223623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A056000 n + 15).toNat

end

end A317868.P9100577015772223623

/-! ## A317868.P412693305081034997

`A317871(eq[7, A066657(n)])`
-/

namespace A317868.P412693305081034997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317868.P412693305081034997

/-!
# A317869: Number of n X 6 0..1 arrays with every element unequal to 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317869, there is no canonical definition to state claims against.
-/

/-! ## A317869.P13186838322622050035

`A317871(A374007(n+1))`
-/

namespace A317869.P13186838322622050035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A374007 (n + 1)).toNat

end

end A317869.P13186838322622050035

/-! ## A317869.P14835949752540709201

`A317871(A056115(n)+21)`
-/

namespace A317869.P14835949752540709201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A056115 n + 21).toNat

end

end A317869.P14835949752540709201

/-! ## A317869.P178851231968049383

`A317871(A167499(n+4)+1)`
-/

namespace A317869.P178851231968049383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A167499 (n + 4) + 1).toNat

end

end A317869.P178851231968049383

/-! ## A317869.P10406101027353504010

`A317871(A167614(n+4)+3)`
-/

namespace A317869.P10406101027353504010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A167614 (n + 4) + 3).toNat

end

end A317869.P10406101027353504010

/-! ## A317869.P7106967956726376969

`A317871(A133263(n+5)+4)`
-/

namespace A317869.P7106967956726376969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A133263 (n + 5) + 4).toNat

end

end A317869.P7106967956726376969

/-!
# A317870: Number of nX7 0..1 arrays with every element unequal to 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317870, there is no canonical definition to state claims against.
-/

/-! ## A317870.P873964724953836682

`A317871(C(n+7, 2)+7)`
-/

namespace A317870.P873964724953836682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (Nat.choose (n + 7) 2 + 7)

end

end A317870.P873964724953836682

/-! ## A317870.P8898982579023745072

`A317871(A374008(n+1))`
-/

namespace A317870.P8898982579023745072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A374008 (n + 1)).toNat

end

end A317870.P8898982579023745072

/-! ## A317870.P4576714726871022661

`A317871(A056119(n)+28)`
-/

namespace A317870.P4576714726871022661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A056119 n + 28).toNat

end

end A317870.P4576714726871022661

/-! ## A317870.P15078571249497108205

`A317871(eq[11, A066657(n)])`
-/

namespace A317870.P15078571249497108205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317870.P15078571249497108205

/-! ## A317870.P5109118416588494524

`A317871(A167499(n+5)+2)`
-/

namespace A317870.P5109118416588494524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (A167499 (n + 5) + 2).toNat

end

end A317870.P5109118416588494524

/-!
# A317871: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317871, there is no canonical definition to state claims against.
-/

/-! ## A317871.P8664345927398024304

`A055642(A007318(n))*A086068(2^A317902(n+1))`
-/

namespace A317871.P8664345927398024304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007318 n).toNat * A086068 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A317902 (n + 1) : ℤ))).toNat

end

end A317871.P8664345927398024304

/-! ## A317871.P14450316304604768778

`A001222(3^A317902(n+1))*A055642(A007318(n))`
-/

namespace A317871.P14450316304604768778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A317902 (n + 1) : ℤ))).toNat * A055642 (A007318 n).toNat

end

end A317871.P14450316304604768778

/-! ## A317871.P17907876019234843269

`A318091(n+1)-A111332(n)!`
-/

namespace A317871.P17907876019234843269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (n + 1) - (Nat.factorial (A111332 n).toNat : ℤ)

end

end A317871.P17907876019234843269

/-!
# A317873: Number of digits in 2^(n!).

The programs for A317873, the canonical program `A317873.P14961294624964069725` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317873 has offset 0).

The definition of A317873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317873.P14961294624964069725

`A034887(n!)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A317873

/-- `A034887(n!)` -/
def P14961294624964069725.Spec : Prop :=
  ∀ n, P14961294624964069725.a n = A317873 n

theorem P14961294624964069725.correct : P14961294624964069725.Spec := by
  intro n
  simp only [A317873]

end A317873

/-! ## A317873.P10187298841555371507

`ceil(n!/log2(10))`
-/

namespace A317873.P10187298841555371507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A317873.P10187298841555371507

namespace A317873

/-- `ceil(n!/log2(10))` -/
def P10187298841555371507.Spec : Prop :=
  ∀ n, P10187298841555371507.a n = A317873 n

end A317873

/-! ## A317873.P4612942108814210629

`A034887(A000142(n))`
-/

namespace A317873.P4612942108814210629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A000142 n).toNat

end

end A317873.P4612942108814210629

namespace A317873

/-- `A034887(A000142(n))` -/
def P4612942108814210629.Spec : Prop :=
  ∀ n, P4612942108814210629.a n = A317873 n

end A317873

/-! ## A317873.P8490437217781936429

`A034887(A033646(n))`
-/

namespace A317873.P8490437217781936429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A033646 n).toNat

end

end A317873.P8490437217781936429

namespace A317873

/-- `A034887(A033646(n))` -/
def P8490437217781936429.Spec : Prop :=
  ∀ n, P8490437217781936429.a n = A317873 n

end A317873

/-!
# A317875: Number of achiral free pure multifunctions with n unlabeled leaves.

The programs for A317875, there is no canonical definition to state claims against.
-/

/-! ## A317875.P15623614059888671615

`A004526(A316974(n)+A218209(n+1))`
-/

namespace A317875.P15623614059888671615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A316974 n + A218209 (n + 1)).toNat

end

end A317875.P15623614059888671615

/-! ## A317875.P9658047717241623716

`A162741(n+2)+A057354(A087944(n))`
-/

namespace A317875.P9658047717241623716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162741 (n + 2) + A057354 (A087944 n).toNat

end

end A317875.P9658047717241623716

/-! ## A317875.P5381607423087550004

`A256502(A149938(n))`
-/

namespace A317875.P5381607423087550004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A149938 n).toNat

end

end A317875.P5381607423087550004

/-!
# A317876: Number of free pure symmetric identity multifunctions (with empty expressions allowed) with one atom and n positions.

The programs for A317876, there is no canonical definition to state claims against.
-/

/-! ## A317876.P13807845159054957775

`A261104(A364908(n))`
-/

namespace A317876.P13807845159054957775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A364908 n).toNat

end

end A317876.P13807845159054957775

/-! ## A317876.P12058054092639999285

`A000267(floor(A008981(n)/4))`
-/

namespace A317876.P12058054092639999285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 ⌊(A008981 n : ℚ) / 4⌋.toNat

end

end A317876.P12058054092639999285

/-! ## A317876.P8337763810480429352

`A184955(2*n+1)+A124500(n)`
-/

namespace A317876.P8337763810480429352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (2 * n + 1) + A124500 n

end

end A317876.P8337763810480429352

/-!
# A317879: Number of free pure identity multifunctions (with empty expressions allowed) with one atom and n positions.

The programs for A317879, there is no canonical definition to state claims against.
-/

/-! ## A317879.P16244323626019039681

`A024417(A148941(n))`
-/

namespace A317879.P16244323626019039681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148941 n).toNat

end

end A317879.P16244323626019039681

/-! ## A317879.P16460910769099083960

`A156689(A148409(n))`
-/

namespace A317879.P16460910769099083960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A148409 n).toNat

end

end A317879.P16460910769099083960

/-! ## A317879.P927834546731806606

`A218980(A239555(n+1))`
-/

namespace A317879.P927834546731806606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (A239555 (n + 1)).toNat

end

end A317879.P927834546731806606

/-! ## A317879.P6903685408352566871

`A024417(or(1, A148936(n)))`
-/

namespace A317879.P6903685408352566871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.lor 1 (A148936 n)).toNat

end

end A317879.P6903685408352566871

/-!
# A317880: Number of series-reduced free pure symmetric identity multifunctions (with empty expressions allowed) with one atom and n positions.

The programs for A317880, there is no canonical definition to state claims against.
-/

/-! ## A317880.P16091730999537993048

`∑[A358062(6*a(n-2)-a(n-4))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=2`
-/

namespace A317880.P16091730999537993048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 2] fun n f1 =>
  A358062 (6 * f1 (n - 2) - f1 (n - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317880.P16091730999537993048

/-! ## A317880.P18022352580228011497

`∏{e}[A006516(n), A110334(#)]`
-/

namespace A317880.P18022352580228011497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A110334 (Nat.factorization (f1 n).natAbs p)

end

end A317880.P18022352580228011497

/-! ## A317880.P5200103786282812334

`A051889(A129519(abs(1-n)))`
-/

namespace A317880.P5200103786282812334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A129519 |1 - (n : ℤ)|.toNat).toNat

end

end A317880.P5200103786282812334

/-! ## A317880.P10868825410738441516

`A051889(A101890(n)+2-n)`
-/

namespace A317880.P10868825410738441516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A101890 n + (2 - (n : ℤ))).toNat

end

end A317880.P10868825410738441516

/-! ## A317880.P13663651103950773199

`A051889(2-(n-A101890(n)))`
-/

namespace A317880.P13663651103950773199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (2 - ((n : ℤ) - A101890 n)).toNat

end

end A317880.P13663651103950773199

/-!
# A317881: Number of series-reduced free pure identity multifunctions (with empty expressions allowed) with one atom and n positions.

The programs for A317881, there is no canonical definition to state claims against.
-/

/-! ## A317881.P16837920477808068323

`or(1, A055679(A036765(n)))`
-/

namespace A317881.P16837920477808068323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055679 (A036765 n).toNat)

end

end A317881.P16837920477808068323

/-! ## A317881.P15757391939413567711

`or(A100196(A216246(n)), A190783(n))`
-/

namespace A317881.P15757391939413567711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100196 (A216246 n).toNat) (A190783 n)

end

end A317881.P15757391939413567711

/-! ## A317881.P6775059011360271130

`A005043(n)-A075553(A025178(n+1))`
-/

namespace A317881.P6775059011360271130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n - A075553 (A025178 (n + 1)).toNat

end

end A317881.P6775059011360271130

/-! ## A317881.P9738692534443838146

`or(A038001(n+1), A100196(A216246(n)))`
-/

namespace A317881.P9738692534443838146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038001 (n + 1)) (A100196 (A216246 n).toNat)

end

end A317881.P9738692534443838146

/-! ## A317881.P1996859142241731077

`A230999(A072168(n))`
-/

namespace A317881.P1996859142241731077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230999 (A072168 n).toNat

end

end A317881.P1996859142241731077

/-!
# A317882: Number of free pure achiral multifunctions (with empty expressions allowed) with one atom and n positions.

The programs for A317882, there is no canonical definition to state claims against.
-/

/-! ## A317882.P6483474999123020022

`A265359(A020127(n))`
-/

namespace A317882.P6483474999123020022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A020127 n).toNat

end

end A317882.P6483474999123020022

/-! ## A317882.P6475964835916042105

`A023193(Δ[A149811(n)])`
-/

namespace A317882.P6475964835916042105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (f1 (n + 1) - f1 n).toNat

end

end A317882.P6475964835916042105

/-! ## A317882.P14716809295795709458

`A241920(A196709(n+1))`
-/

namespace A317882.P14716809295795709458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (A196709 (n + 1)).toNat

end

end A317882.P14716809295795709458

/-! ## A317882.P1160684898076845228

`A003114(eq[0, A060638(n)])`
-/

namespace A317882.P1160684898076845228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317882.P1160684898076845228

/-!
# A317883: Number of free pure achiral multifunctions with one atom and n positions.

The programs for A317883, there is no canonical definition to state claims against.
-/

/-! ## A317883.P2843517538747457145

`A000007(n)+Δ[A185712(3*A221950(n))]`
-/

namespace A317883.P2843517538747457145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (3 * A221950 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A317883.P2843517538747457145

/-! ## A317883.P6119541124535587258

`Δ[A339153(n+1)%A143874(n)]`
-/

namespace A317883.P6119541124535587258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339153 (n + 1)) (A143874 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317883.P6119541124535587258

/-! ## A317883.P263482455345507269

`A189672(A293606(n)+A003106(n))`
-/

namespace A317883.P263482455345507269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189672 (A293606 n + A003106 n).toNat

end

end A317883.P263482455345507269

/-! ## A317883.P7676365334741039137

`A000194(A171966(n)*A320665(n))`
-/

namespace A317883.P7676365334741039137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A171966 n * A320665 n).toNat

end

end A317883.P7676365334741039137

/-!
# A317884: Number of series-reduced achiral free pure multifunctions (with empty expressions allowed) with one atom and n positions.

The programs for A317884, there is no canonical definition to state claims against.
-/

/-! ## A317884.P3241541830652932629

`A276571(A101786(n))`
-/

namespace A317884.P3241541830652932629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A101786 n).toNat

end

end A317884.P3241541830652932629

/-! ## A317884.P5929487754979638482

`A276581(A398110(n))`
-/

namespace A317884.P5929487754979638482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A398110 n).toNat

end

end A317884.P5929487754979638482

/-! ## A317884.P6578090423005160155

`A278814(A218551(n)-A218552(n))`
-/

namespace A317884.P6578090423005160155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A218551 n - A218552 n).toNat

end

end A317884.P6578090423005160155

/-! ## A317884.P10373753891541883742

`A172471(A343663(n+1)-A002262(n))`
-/

namespace A317884.P10373753891541883742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A343663 (n + 1) - A002262 n).toNat

end

end A317884.P10373753891541883742

/-! ## A317884.P12938890272868410109

`A166018(a(n-1))+n-2` with `a(0)=1, a(1)=1`
-/

namespace A317884.P12938890272868410109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A166018 (a (n - 1)).toNat + ((n : ℤ) - 2)

end

end A317884.P12938890272868410109

/-!
# A317885: Number of series-reduced free pure achiral multifunctions with one atom and n positions.

The programs for A317885, there is no canonical definition to state claims against.
-/

/-! ## A317885.P13789019729479317886

`A273190(A132408(n+1)-A087509(n))`
-/

namespace A317885.P13789019729479317886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A132408 (n + 1) - A087509 n).toNat

end

end A317885.P13789019729479317886

/-! ## A317885.P13713186741025131530

`A273190(A132408(n+1)-A274923(n+1))`
-/

namespace A317885.P13713186741025131530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A132408 (n + 1) - A274923 (n + 1)).toNat

end

end A317885.P13713186741025131530

/-!
# A317886: Numbers m such that 11^m + 6 is prime.

The programs for A317886, there is no canonical definition to state claims against.
-/

/-! ## A317886.P6375401314524047012

`eq[A127797(n), A134201(n+1)]`
-/

namespace A317886.P6375401314524047012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127797 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317886.P6375401314524047012

/-! ## A317886.P8709126953309670953

`eq[A127797(n), A283466(A127780(n+1))]`
-/

namespace A317886.P8709126953309670953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127797 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283466 (A127780 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317886.P8709126953309670953

/-!
# A317888: 

The programs for A317888, there is no canonical definition to state claims against.
-/

/-! ## A317888.P2566453925298871148

`(∑[A000079(n)]+2)!`
-/

namespace A317888.P2566453925298871148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A317888.P2566453925298871148

/-!
# A317889: Number of nXn 0..1 arrays with every element unequal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317889, there is no canonical definition to state claims against.
-/

/-! ## A317889.P503326277381607876

`A317896(∑[4*n]+1)`
-/

namespace A317889.P503326277381607876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317889.P503326277381607876

/-! ## A317889.P7716472179622210893

`record[A317896(∑[A266981(n)])]`
-/

namespace A317889.P7716472179622210893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317889.P7716472179622210893

/-! ## A317889.P7476579591211028519

`A015660(n)*A317896(A001844(n))`
-/

namespace A317889.P7476579591211028519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015660 n * A317896 (A001844 n).toNat

end

end A317889.P7476579591211028519

/-! ## A317889.P13684258655314822214

`A178334(n)*A317896(A001844(n))`
-/

namespace A317889.P13684258655314822214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A317896 (A001844 n).toNat

end

end A317889.P13684258655314822214

/-! ## A317889.P18252650307944435857

`A317896(A001844(n))%A316333(n)`
-/

namespace A317889.P18252650307944435857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317896 (A001844 n).toNat) (A316333 n)

end

end A317889.P18252650307944435857

/-!
# A317890: Number of nX2 0..1 arrays with every element unequal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317890, the canonical program `A317890.P16603075614630160358` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317890 has offset 1).

The definition of A317890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317890.P16603075614630160358

`2*a(n-1)+a(n-2)+2*a(n-3)+3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=5, a(5)=16`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317890

/-- `2*a(n-1)+a(n-2)+2*a(n-3)+3*a(n-4)+a(n-5)` -/
def P16603075614630160358.Spec : Prop :=
  ∀ n, (P16603075614630160358.a n : ℤ) = A317890 (n + 1)

theorem P16603075614630160358.correct : P16603075614630160358.Spec := by
  intro n
  simp only [A317890, Nat.add_sub_cancel]

end A317890

/-! ## A317890.P10440575290285146344

`A318039(n+1)-1`
-/

namespace A317890.P10440575290285146344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318039 (n + 1) - 1

end

end A317890.P10440575290285146344

namespace A317890

/-- `A318039(n+1)-1` -/
def P10440575290285146344.Spec : Prop :=
  ∀ n, P10440575290285146344.a n = A317890 (n + 1)

theorem P10440575290285146344.correct : P10440575290285146344.Spec := by
  intro n
  simp only [A317890, Nat.add_sub_cancel, A317890.P10440575290285146344.a, A317890.P16603075614630160358.a, A318039, A318039.P7161067264386899341.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317890

/-! ## A317890.P2439499567644158997

`A321804(∑{digits}[6*n, #])+A318039(n+1)`
-/

namespace A317890.P2439499567644158997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + A318039 (n + 1)

end

end A317890.P2439499567644158997

namespace A317890

/-- `A321804(∑{digits}[6*n, #])+A318039(n+1)` -/
def P2439499567644158997.Spec : Prop :=
  ∀ n, P2439499567644158997.a n = A317890 (n + 1)

end A317890

/-! ## A317890.P5801712430486233718

`A321804(A001316(n))+A318039(n+1)`
-/

namespace A317890.P5801712430486233718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A001316 n).toNat + A318039 (n + 1)

end

end A317890.P5801712430486233718

namespace A317890

/-- `A321804(A001316(n))+A318039(n+1)` -/
def P5801712430486233718.Spec : Prop :=
  ∀ n, P5801712430486233718.a n = A317890 (n + 1)

end A317890

/-! ## A317890.P1035456030157291255

`A321804(A004016(n))+A318039(n+1)`
-/

namespace A317890.P1035456030157291255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A004016 n).toNat + A318039 (n + 1)

end

end A317890.P1035456030157291255

namespace A317890

/-- `A321804(A004016(n))+A318039(n+1)` -/
def P1035456030157291255.Spec : Prop :=
  ∀ n, P1035456030157291255.a n = A317890 (n + 1)

end A317890

/-! ## A317890.P10428605039171069775

`A321804(A114021(n))+A318039(n+1)`
-/

namespace A317890.P10428605039171069775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A114021 n).toNat + A318039 (n + 1)

end

end A317890.P10428605039171069775

namespace A317890

/-- `A321804(A114021(n))+A318039(n+1)` -/
def P10428605039171069775.Spec : Prop :=
  ∀ n, P10428605039171069775.a n = A317890 (n + 1)

end A317890

/-! ## A317890.P15403054719000967007

`A321804(A178334(n))+A318039(n+1)`
-/

namespace A317890.P15403054719000967007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A178334 n).toNat + A318039 (n + 1)

end

end A317890.P15403054719000967007

namespace A317890

/-- `A321804(A178334(n))+A318039(n+1)` -/
def P15403054719000967007.Spec : Prop :=
  ∀ n, P15403054719000967007.a n = A317890 (n + 1)

end A317890

/-! ## A317890.P16576197262625178213

`A321804(A000005(n+1))+A318039(n+1)`
-/

namespace A317890.P16576197262625178213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A000005 (n + 1)).toNat + A318039 (n + 1)

end

end A317890.P16576197262625178213

namespace A317890

/-- `A321804(A000005(n+1))+A318039(n+1)` -/
def P16576197262625178213.Spec : Prop :=
  ∀ n, P16576197262625178213.a n = A317890 (n + 1)

end A317890

/-! ## A317890.P2545824768161211828

`A321804(A001222(n+1))+A318039(n+1)`
-/

namespace A317890.P2545824768161211828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A001222 (n + 1)).toNat + A318039 (n + 1)

end

end A317890.P2545824768161211828

namespace A317890

/-- `A321804(A001222(n+1))+A318039(n+1)` -/
def P2545824768161211828.Spec : Prop :=
  ∀ n, P2545824768161211828.a n = A317890 (n + 1)

end A317890

/-! ## A317890.P13833886842832719590

`A321804(A024155(n+1))+A318039(n+1)`
-/

namespace A317890.P13833886842832719590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A024155 (n + 1)).toNat + A318039 (n + 1)

end

end A317890.P13833886842832719590

namespace A317890

/-- `A321804(A024155(n+1))+A318039(n+1)` -/
def P13833886842832719590.Spec : Prop :=
  ∀ n, P13833886842832719590.a n = A317890 (n + 1)

end A317890

/-! ## A317890.P315593198368424042

`A321804(C(A000010(n+1), n))+A318039(n+1)`
-/

namespace A317890.P315593198368424042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (Nat.choose (A000010 (n + 1)).toNat n) + A318039 (n + 1)

end

end A317890.P315593198368424042

namespace A317890

/-- `A321804(C(A000010(n+1), n))+A318039(n+1)` -/
def P315593198368424042.Spec : Prop :=
  ∀ n, P315593198368424042.a n = A317890 (n + 1)

end A317890

/-!
# A317891: Number of nX3 0..1 arrays with every element unequal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317891, there is no canonical definition to state claims against.
-/

/-! ## A317891.P1135835943139034372

`A317896(∑[n+2]+4)`
-/

namespace A317891.P1135835943139034372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317891.P1135835943139034372

/-! ## A317891.P18096506356929843240

`A317896(A167614(n+1))+A025469(n)`
-/

namespace A317891.P18096506356929843240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A167614 (n + 1)).toNat + A025469 n

end

end A317891.P18096506356929843240

/-! ## A317891.P1593922223514540949

`A057427(n)*A317896(A167614(n+1))`
-/

namespace A317891.P1593922223514540949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317896 (A167614 (n + 1)).toNat

end

end A317891.P1593922223514540949

/-! ## A317891.P6590375126050673262

`A317896(A167614(n+1))%A026671(n)`
-/

namespace A317891.P6590375126050673262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317896 (A167614 (n + 1)).toNat) (A026671 n)

end

end A317891.P6590375126050673262

/-! ## A317891.P18141765735425613899

`or(A024155(n+1), A317896(A167614(n+1)))`
-/

namespace A317891.P18141765735425613899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024155 (n + 1)) (A317896 (A167614 (n + 1)).toNat)

end

end A317891.P18141765735425613899

/-!
# A317892: Number of nX4 0..1 arrays with every element unequal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317892, there is no canonical definition to state claims against.
-/

/-! ## A317892.P4181472984462032351

`A317896(A374004(n+1))`
-/

namespace A317892.P4181472984462032351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A374004 (n + 1)).toNat

end

end A317892.P4181472984462032351

/-! ## A317892.P12655593871801712573

`A317896(A141214(n)+7)`
-/

namespace A317892.P12655593871801712573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A141214 n + 7).toNat

end

end A317892.P12655593871801712573

/-! ## A317892.P11100785054418055186

`A317896(A052905(n)+9)`
-/

namespace A317892.P11100785054418055186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A052905 n + 9).toNat

end

end A317892.P11100785054418055186

/-! ## A317892.P7945596945432360402

`A317896(A055999(n)+10)`
-/

namespace A317892.P7945596945432360402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A055999 n + 10).toNat

end

end A317892.P7945596945432360402

/-! ## A317892.P17650641270394221182

`A317896(A167614(n+2)+1)`
-/

namespace A317892.P17650641270394221182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A167614 (n + 2) + 1).toNat

end

end A317892.P17650641270394221182

/-!
# A317893: Number of nX5 0..1 arrays with every element unequal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317893, there is no canonical definition to state claims against.
-/

/-! ## A317893.P13472228475260672825

`A317896(A374005(n+1))`
-/

namespace A317893.P13472228475260672825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A374005 (n + 1)).toNat

end

end A317893.P13472228475260672825

/-! ## A317893.P11126428491198234389

`A317896(A167499(n+3))`
-/

namespace A317893.P11126428491198234389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A167499 (n + 3)).toNat

end

end A317893.P11126428491198234389

/-! ## A317893.P7811002961390028067

`A317896(eq[7, A066657(n)])`
-/

namespace A317893.P7811002961390028067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317893.P7811002961390028067

/-! ## A317893.P8974649136238580504

`A317896(A038722(Δ[A264443(n)]))`
-/

namespace A317893.P8974649136238580504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A317893.P8974649136238580504

/-! ## A317893.P17814806011956938984

`A317896(A038722(Δ[A023545(n+1)]))`
-/

namespace A317893.P17814806011956938984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A317893.P17814806011956938984

/-!
# A317894: Number of n X 6 0..1 arrays with every element unequal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317894, there is no canonical definition to state claims against.
-/

/-! ## A317894.P7982498052794913108

`A317896(A374007(n+1))`
-/

namespace A317894.P7982498052794913108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A374007 (n + 1)).toNat

end

end A317894.P7982498052794913108

/-! ## A317894.P6144965431611431248

`A317896(Δ[A111396(n)]+9)`
-/

namespace A317894.P6144965431611431248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (f1 (n + 1) - f1 n + 9).toNat

end

end A317894.P6144965431611431248

/-! ## A317894.P15357036142769099818

`A317896(eq[7, A131818(n+1)])`
-/

namespace A317894.P15357036142769099818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317894.P15357036142769099818

/-! ## A317894.P182727619708331837

`A317896(A000096(n+5)-(n-1))`
-/

namespace A317894.P182727619708331837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A317894.P182727619708331837

/-! ## A317894.P7898204830247879900

`A317896(A052905(n+3))`
-/

namespace A317894.P7898204830247879900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A052905 (n + 3)).toNat

end

end A317894.P7898204830247879900

/-!
# A317895: Number of n X 7 0..1 arrays with every element unequal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317895, there is no canonical definition to state claims against.
-/

/-! ## A317895.P16422493922712618172

`A317896(A374008(n+1))`
-/

namespace A317895.P16422493922712618172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A374008 (n + 1)).toNat

end

end A317895.P16422493922712618172

/-! ## A317895.P17016182849957495762

`A317896(eq[8, A131818(n+1)])`
-/

namespace A317895.P17016182849957495762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317895.P17016182849957495762

/-! ## A317895.P7658424277083619963

`A317896(A055999(n+4))`
-/

namespace A317895.P7658424277083619963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A055999 (n + 4)).toNat

end

end A317895.P7658424277083619963

/-! ## A317895.P3524617370084582074

`A317896(Δ[A103145(n)]+6)`
-/

namespace A317895.P3524617370084582074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (f1 (n + 1) - f1 n + 6).toNat

end

end A317895.P3524617370084582074

/-! ## A317895.P14414213100915193239

`A317896(Δ[A059605(n)]-n)`
-/

namespace A317895.P14414213100915193239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A317895.P14414213100915193239

/-!
# A317896: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317896, there is no canonical definition to state claims against.
-/

/-! ## A317896.P17411511773687687502

`A113221(A320364(n+1))`
-/

namespace A317896.P17411511773687687502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A320364 (n + 1)).toNat

end

end A317896.P17411511773687687502

/-! ## A317896.P4221503490563579886

`A320364(n+1)+A178798(A172359(n))`
-/

namespace A317896.P4221503490563579886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (n + 1) + A178798 (A172359 n).toNat

end

end A317896.P4221503490563579886

/-! ## A317896.P2610334739547600894

`A320364(n+1)-A185284(A320317(n))`
-/

namespace A317896.P2610334739547600894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (n + 1) - A185284 (A320317 n).toNat

end

end A317896.P2610334739547600894

/-! ## A317896.P269079348799787804

`A320364(n+1)-A025466(A184761(n+1))`
-/

namespace A317896.P269079348799787804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (n + 1) - A025466 (A184761 (n + 1)).toNat

end

end A317896.P269079348799787804

/-! ## A317896.P17849611982071448821

`A320364(n+1)-A178798(A320364(n+1)+1)`
-/

namespace A317896.P17849611982071448821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (n + 1) - A178798 (A320364 (n + 1) + 1).toNat

end

end A317896.P17849611982071448821

/-!
# A317897: Number of nXn 0..1 arrays with every element unequal to 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317897, there is no canonical definition to state claims against.
-/

/-! ## A317897.P11563351308669296273

`A317902(∑[4*n]+1)`
-/

namespace A317897.P11563351308669296273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317897.P11563351308669296273

/-! ## A317897.P15062080261617661452

`A317902(A001844(n))+char[14]`
-/

namespace A317897.P15062080261617661452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317897.P15062080261617661452

/-! ## A317897.P12729777466269310034

`A015148(n)*A317902(A001844(n))`
-/

namespace A317897.P12729777466269310034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015148 n * A317902 (A001844 n).toNat

end

end A317897.P12729777466269310034

/-! ## A317897.P4217071585232596970

`A057427(n)*A317902(A001844(n))`
-/

namespace A317897.P4217071585232596970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317902 (A001844 n).toNat

end

end A317897.P4217071585232596970

/-! ## A317897.P216573126986485266

`A317902(A001844(n))%A086331(n)`
-/

namespace A317897.P216573126986485266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317902 (A001844 n).toNat) (A086331 n)

end

end A317897.P216573126986485266

/-!
# A317898: Number of nX4 0..1 arrays with every element unequal to 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317898, there is no canonical definition to state claims against.
-/

/-! ## A317898.P13125118656376203525

`A317902(∑[n+3]+7)`
-/

namespace A317898.P13125118656376203525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317898.P13125118656376203525

/-! ## A317898.P4432725007460259240

`A317902(A052905(n)+9)+char[26]`
-/

namespace A317898.P4432725007460259240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317898.P4432725007460259240

/-! ## A317898.P3080754538382153641

`A317902(A052905(n)+9)%A000032(2*n)`
-/

namespace A317898.P3080754538382153641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317902 (A052905 n + 9).toNat) (A000032 (2 * n))

end

end A317898.P3080754538382153641

/-! ## A317898.P12448330604171927894

`A007318(C(2, n))*A317902(A052905(n)+9)`
-/

namespace A317898.P12448330604171927894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A317902 (A052905 n + 9).toNat

end

end A317898.P12448330604171927894

/-! ## A317898.P12813380108494771247

`A317902(A052905(n)+9)/A007318(C(n, 2))`
-/

namespace A317898.P12813380108494771247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317902 (A052905 n + 9).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A317898.P12813380108494771247

/-!
# A317899: Number of nX5 0..1 arrays with every element unequal to 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317899, there is no canonical definition to state claims against.
-/

/-! ## A317899.P12910152591384999920

`A317902(∑[n+4]+11)`
-/

namespace A317899.P12910152591384999920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A317899.P12910152591384999920

/-! ## A317899.P4203518985503583903

`A057427(n)*A317902(A374005(n+1))`
-/

namespace A317899.P4203518985503583903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317902 (A374005 (n + 1)).toNat

end

end A317899.P4203518985503583903

/-! ## A317899.P1745493367686499506

`A057427(n)*A317902(A167499(n+3))`
-/

namespace A317899.P1745493367686499506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317902 (A167499 (n + 3)).toNat

end

end A317899.P1745493367686499506

/-! ## A317899.P12029982357191197941

`A317902(A167499(n+3))%A034474(n)`
-/

namespace A317899.P12029982357191197941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317902 (A167499 (n + 3)).toNat) (A034474 n)

end

end A317899.P12029982357191197941

/-! ## A317899.P5100880542881225984

`A317902(A000124(n+4)+4)%A339909(n+1)`
-/

namespace A317899.P5100880542881225984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317902 (A000124 (n + 4) + 4).toNat) (A339909 (n + 1))

end

end A317899.P5100880542881225984

