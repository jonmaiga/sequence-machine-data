import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
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
import Seq.Opaque.C014
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
# A366200: G.f. A(x) satisfies A(x) = 1 + x*(1 + x)^3*A(x)^3.

The programs for A366200, there is no canonical definition to state claims against.
-/

/-! ## A366200.P15361112234450687818

`A364336(n)-a(n-1)` with `a(0)=1`
-/

namespace A366200.P15361112234450687818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A364336 n - a (n - 1)

end

end A366200.P15361112234450687818

/-! ## A366200.P13626868335092484778

`A302604(A000172(n))+A002293(n)`
-/

namespace A366200.P13626868335092484778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302604 (A000172 n).toNat + A002293 n

end

end A366200.P13626868335092484778

/-!
# A366201: Number x such that triangular(x) AND x^2 = 0, where AND is the bitwise logical-and operation.

The programs for A366201, there is no canonical definition to state claims against.
-/

/-! ## A366201.P12341672917148389970

`eq[0, and(n², ∑[n])]`
-/

namespace A366201.P12341672917148389970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n ^ 2) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366201.P12341672917148389970

/-! ## A366201.P5538696412048225447

`lt[and(n², ∑[n]), 1]`
-/

namespace A366201.P5538696412048225447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n ^ 2) (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A366201.P5538696412048225447

/-! ## A366201.P8311205769495664223

`eq[A005449(n), A226470(n)]`
-/

namespace A366201.P8311205769495664223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226470 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366201.P8311205769495664223

/-! ## A366201.P6214780969467920540

`eq[A286949(A286471(2*(n+2))), A352450(n)]`
-/

namespace A366201.P6214780969467920540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286949 (A286471 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352450 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366201.P6214780969467920540

/-! ## A366201.P8278948592372213222

`record[and(n, A137752(2*(n+1)))]`
-/

namespace A366201.P8278948592372213222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A137752 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366201.P8278948592372213222

/-!
# A366202: Numbers x such that (x^2 AND x) is not a square, where AND is the bitwise logical-and operation.

The programs for A366202, the canonical program `A366202.P3672782071348663471` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366202 has offset 1).

The definition of A366202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366202.P3672782071348663471

`lt[A000122(and(n, n²)), 1]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A366202

/-- `lt[A000122(and(n, n²)), 1]` -/
def P3672782071348663471.Spec : Prop :=
  ∀ n, (P3672782071348663471.a n : ℤ) = A366202 (n + 1)

theorem P3672782071348663471.correct : P3672782071348663471.Spec := by
  intro n
  simp only [A366202, Nat.add_sub_cancel]

end A366202

/-! ## A366202.P3210520720508636729

`lt[A010052(and(n, n²)), 1]`
-/

namespace A366202.P3210520720508636729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Nat.land n (n ^ 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366202.P3210520720508636729

namespace A366202

/-- `lt[A010052(and(n, n²)), 1]` -/
def P3210520720508636729.Spec : Prop :=
  ∀ n, (P3210520720508636729.a n : ℤ) = A366202 (n + 1)

end A366202

/-! ## A366202.P6346521469678679559

`lt[A000122(or(1-n, n²)+n-1), 1]`
-/

namespace A366202.P6346521469678679559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.lor (1 - (n : ℤ)) (n ^ 2 : ℤ) + ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366202.P6346521469678679559

namespace A366202

/-- `lt[A000122(or(1-n, n²)+n-1), 1]` -/
def P6346521469678679559.Spec : Prop :=
  ∀ n, (P6346521469678679559.a n : ℤ) = A366202 (n + 1)

end A366202

/-! ## A366202.P12107794848952636568

`lt[A010052(or(1-n, n²)+n-1), 1]`
-/

namespace A366202.P12107794848952636568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Int.lor (1 - (n : ℤ)) (n ^ 2 : ℤ) + ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366202.P12107794848952636568

namespace A366202

/-- `lt[A010052(or(1-n, n²)+n-1), 1]` -/
def P12107794848952636568.Spec : Prop :=
  ∀ n, (P12107794848952636568.a n : ℤ) = A366202 (n + 1)

end A366202

/-! ## A366202.P8373924673618810863

`lt[A000122(abs(or(-(n+1), n²)+n+1)), 1]`
-/

namespace A366202.P8373924673618810863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 |Int.lor (-(n + 1 : ℤ)) (n ^ 2 : ℤ) + (n + 1 : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366202.P8373924673618810863

namespace A366202

/-- `lt[A000122(abs(or(-(n+1), n²)+n+1)), 1]` -/
def P8373924673618810863.Spec : Prop :=
  ∀ n, (P8373924673618810863.a n : ℤ) = A366202 (n + 1)

end A366202

/-! ## A366202.P14773395708957332194

`lt[A010052(abs(or(-(n+1), n²)+n+1)), 1]`
-/

namespace A366202.P14773395708957332194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 |Int.lor (-(n + 1 : ℤ)) (n ^ 2 : ℤ) + (n + 1 : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366202.P14773395708957332194

namespace A366202

/-- `lt[A010052(abs(or(-(n+1), n²)+n+1)), 1]` -/
def P14773395708957332194.Spec : Prop :=
  ∀ n, (P14773395708957332194.a n : ℤ) = A366202 (n + 1)

end A366202

/-! ## A366202.P3126472518456745170

`lt[A010052(A213541(n)), 1]`
-/

namespace A366202.P3126472518456745170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A213541 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366202.P3126472518456745170

namespace A366202

/-- `lt[A010052(A213541(n)), 1]` -/
def P3126472518456745170.Spec : Prop :=
  ∀ n, (P3126472518456745170.a n : ℤ) = A366202 (n + 1)

end A366202

/-! ## A366202.P1935807645407050552

`eq[A000038(n), A010052(A213541(n))]`
-/

namespace A366202.P1935807645407050552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A213541 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366202.P1935807645407050552

namespace A366202

/-- `eq[A000038(n), A010052(A213541(n))]` -/
def P1935807645407050552.Spec : Prop :=
  ∀ n, (P1935807645407050552.a n : ℤ) = A366202 (n + 1)

end A366202

/-! ## A366202.P15567345148846491336

`eq[A000007(3*n+2), A000122(A213541(n))]`
-/

namespace A366202.P15567345148846491336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A213541 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366202.P15567345148846491336

namespace A366202

/-- `eq[A000007(3*n+2), A000122(A213541(n))]` -/
def P15567345148846491336.Spec : Prop :=
  ∀ n, (P15567345148846491336.a n : ℤ) = A366202 (n + 1)

end A366202

/-!
# A366203: a(n) = (1/n) * Sum_{k=0..n-1} binomial(n+k-1,k) * binomial(3*n,n-k-1) * (n-3)^k.

The programs for A366203, there is no canonical definition to state claims against.
-/

/-! ## A366203.P17620421298015391779

`A370497(A370054(n))`
-/

namespace A366203.P17620421298015391779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370497 (A370054 n).toNat

end

end A366203.P17620421298015391779

/-!
# A366205: Average of a twin prime pair which is the sum of the first k primes, for some k.

The programs for A366205, there is no canonical definition to state claims against.
-/

/-! ## A366205.P5107531839154337352

`A007504(A366206(n+1))`
-/

namespace A366205.P5107531839154337352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A366206 (n + 1)).toNat

end

end A366205.P5107531839154337352

/-!
# A366206: Numbers k such that the sum of the first k primes is the average of a twin prime pair.

The programs for A366206, there is no canonical definition to state claims against.
-/

/-! ## A366206.P2705504419123129733

`∩[A089228(n+1), A388066(n+1)]`
-/

namespace A366206.P2705504419123129733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366206.P2705504419123129733

/-!
# A366207: Numbers whose median of the digits is equal to 1.

The programs for A366207, there is no canonical definition to state claims against.
-/

/-! ## A366207.P13961266016694782690

`eq[A007953(n), A124769(A028310(n))]`
-/

namespace A366207.P13961266016694782690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366207.P13961266016694782690

/-! ## A366207.P15667039437473317683

`eq[A051424(A007953(n)), A124769(n)]`
-/

namespace A366207.P15667039437473317683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366207.P15667039437473317683

/-!
# A366210: Numbers whose median of the digits is equal to 4.

The programs for A366210, there is no canonical definition to state claims against.
-/

/-! ## A366210.P2202837480090505821

`A111660(A034550(3*n+5))+A061387(n+1)`
-/

namespace A366210.P2202837480090505821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A034550 (3 * n + 5)).toNat + A061387 (n + 1)

end

end A366210.P2202837480090505821

/-!
# A366215: G.f. A(x) satisfies A(x) = 1/(1 - x)^4 + x*(1 - x)^4*A(x)^4.

The programs for A366215, there is no canonical definition to state claims against.
-/

/-! ## A366215.P2358540921527812849

`∑[∑[A364630(n)]]`
-/

namespace A366215.P2358540921527812849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364630 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366215.P2358540921527812849

/-!
# A366216: G.f. A(x) satisfies A(x) = 1 + x*(1 + x)^4*A(x)^4.

The programs for A366216, there is no canonical definition to state claims against.
-/

/-! ## A366216.P17216458946709790477

`A364337(n)-a(n-1)` with `a(0)=1`
-/

namespace A366216.P17216458946709790477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A364337 n - a (n - 1)

end

end A366216.P17216458946709790477

/-!
# A366217: a(n) is the least semiprime > a(n-2) + a(n-1), with a(1) = 4 and a(2) = 6.

The programs for A366217, there is no canonical definition to state claims against.
-/

/-! ## A366217.P11743295209685054776

`A368100(n+1)+A070083(A202519(n))`
-/

namespace A366217.P11743295209685054776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (n + 1) + A070083 (A202519 n).toNat

end

end A366217.P11743295209685054776

/-! ## A366217.P4889515999180491819

`xor(A171945(A337078(n+1)), A280051(n+6))`
-/

namespace A366217.P4889515999180491819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171945 (A337078 (n + 1)).toNat) (A280051 (n + 6))

end

end A366217.P4889515999180491819

/-!
# A366220: Number of unlabeled graphs on n vertices without 4-cycles or 5-cycles.

The programs for A366220, there is no canonical definition to state claims against.
-/

/-! ## A366220.P2566606322340650807

`A318229(n+1)+record[A122180(n+1)]`
-/

namespace A366220.P2566606322340650807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366220.P2566606322340650807

/-! ## A366220.P7662895954428837412

`A318229(n+1)+A284263(A284298(n))`
-/

namespace A366220.P7662895954428837412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1) + A284263 (A284298 n).toNat

end

end A366220.P7662895954428837412

/-!
# A366221: G.f. A(x) satisfies A(x) = 1 + x*(1 + x)^2*A(x)^3.

The programs for A366221, there is no canonical definition to state claims against.
-/

/-! ## A366221.P14644517045261822178

`A366266(n)-a(n-1)` with `a(0)=1`
-/

namespace A366221.P14644517045261822178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366266 n - a (n - 1)

end

end A366221.P14644517045261822178

/-! ## A366221.P16224881254105724615

`A066603(2*A130293(n+1))`
-/

namespace A366221.P16224881254105724615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066603 (2 * A130293 (n + 1)).toNat

end

end A366221.P16224881254105724615

/-!
# A366222: G.f. A(x) satisfies A(x) = 1 + x*(1 + x)^4*A(x)^3.

The programs for A366222, there is no canonical definition to state claims against.
-/

/-! ## A366222.P2763590178259425250

`A366239(n)-a(n-1)` with `a(0)=1`
-/

namespace A366222.P2763590178259425250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366239 n - a (n - 1)

end

end A366222.P2763590178259425250

/-! ## A366222.P1338577362663962065

`A020915(A126390(n)-A057958(n+1))`
-/

namespace A366222.P1338577362663962065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A126390 n - A057958 (n + 1)).toNat

end

end A366222.P1338577362663962065

/-!
# A366224: Number of unlabeled 3-connected graphs on n vertices with girth at least 5.

The programs for A366224, there is no canonical definition to state claims against.
-/

/-! ## A366224.P18263377650078058299

`A231348(2*(2*a(n-2)-a(n-4)))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A366224.P18263377650078058299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 4] fun n a =>
  A231348 (2 * (2 * a (n - 2) - a (n - 4))).toNat

end

end A366224.P18263377650078058299

/-! ## A366224.P6793357343051652841

`A353504(A222542(n+1))`
-/

namespace A366224.P6793357343051652841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353504 (A222542 (n + 1)).toNat

end

end A366224.P6793357343051652841

/-!
# A366227: O.g.f. A(x) satisfies: A(x) = 1 + x*Sum_{n>=0} 3^n * log( A(2^n*x) )^n / n!.

The programs for A366227, there is no canonical definition to state claims against.
-/

/-! ## A366227.P6187544888977459106

`A005185(A295763(n))*A098746(n)`
-/

namespace A366227.P6187544888977459106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A295763 n).toNat * A098746 n

end

end A366227.P6187544888977459106

/-!
# A366228: Expansion of e.g.f. A(x) satisfying A(x) = 1 + Integral A(x)^A(x) dx.

The programs for A366228, there is no canonical definition to state claims against.
-/

/-! ## A366228.P7797592780002347905

`A062490(A056323(n))`
-/

namespace A366228.P7797592780002347905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062490 (A056323 n).toNat

end

end A366228.P7797592780002347905

/-! ## A366228.P4664404092958139373

`A008621(A232499(n!))`
-/

namespace A366228.P4664404092958139373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A232499 (Nat.factorial n)).toNat

end

end A366228.P4664404092958139373

/-!
# A366229: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} x^n * (x^(3*n+1) - A(x))^n.

The programs for A366229, there is no canonical definition to state claims against.
-/

/-! ## A366229.P14530272305196627197

`A002024(A181997(n))`
-/

namespace A366229.P14530272305196627197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A181997 n).toNat

end

end A366229.P14530272305196627197

/-! ## A366229.P9635505219907971105

`A160512(A210112(n+3))`
-/

namespace A366229.P9635505219907971105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160512 (A210112 (n + 3)).toNat

end

end A366229.P9635505219907971105

/-! ## A366229.P10663110307247284111

`A173532(n)+A003056(A000257(n))`
-/

namespace A366229.P10663110307247284111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173532 n + A003056 (A000257 n).toNat

end

end A366229.P10663110307247284111

/-! ## A366229.P468359910491958631

`A003056(A181997(n)+A052980(n))`
-/

namespace A366229.P468359910491958631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A181997 n + A052980 n).toNat

end

end A366229.P468359910491958631

/-!
# A366230: Expansion of e.g.f. A(x,y) satisfying A(x,y) = 1 + x*A(x,y) * exp(x*y * A(x,y)), as a triangle read by rows.

The programs for A366230, the canonical program `A366230.P12664001952588649047` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366230 has offset 0).

The definition of A366230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366230.P12664001952588649047

`row(n)!*C(row(n)+1, row(n)-col(n))/(row(n)+1)*(row(n)-col(n))^col(n)/col(n)!`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366230

/-- `row(n)!*C(row(n)+1, row(n)-col(n))/(row(n)+1)*(row(n)-col(n))^col(n)/col(n)!` -/
def P12664001952588649047.Spec : Prop :=
  ∀ n, P12664001952588649047.a n = (A366230 n : ℚ)

end A366230

/-! ## A366230.P13113316848989147228

`A059299(n)*A213936(n+1)`
-/

namespace A366230.P13113316848989147228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059299 n * A213936 (n + 1)

end

end A366230.P13113316848989147228

namespace A366230

/-- `A059299(n)*A213936(n+1)` -/
def P13113316848989147228.Spec : Prop :=
  ∀ n, P13113316848989147228.a n = A366230 n

end A366230

/-!
# A366231: Expansion of g.f. A(x) satisfying 1 = Sum_{n>=0} (-1)^n * x^n * A(x)^(2*n+1) * Product_{k=1..n} (1 + x^k).

The programs for A366231, there is no canonical definition to state claims against.
-/

/-! ## A366231.P13285250553404478850

`A008621(A168494(n)+A162551(n))`
-/

namespace A366231.P13285250553404478850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A168494 n + A162551 n).toNat

end

end A366231.P13285250553404478850

/-! ## A366231.P18014572468375251764

`A109081(n+1)+A025456(A001563(n))`
-/

namespace A366231.P18014572468375251764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109081 (n + 1) + A025456 (A001563 n).toNat

end

end A366231.P18014572468375251764

/-! ## A366231.P9018348887912925721

`A294927(A001147(n))+A109081(n+1)`
-/

namespace A366231.P9018348887912925721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294927 (A001147 n).toNat + A109081 (n + 1)

end

end A366231.P9018348887912925721

/-!
# A366232: Expansion of e.g.f. A(x) satisfying A(x) = 1 + x*A(x) * exp(2*x*A(x)).

The programs for A366232, there is no canonical definition to state claims against.
-/

/-! ## A366232.P16923710948097771857

`A333489(A303064(n)+A000258(n))`
-/

namespace A366232.P16923710948097771857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A303064 n + A000258 n).toNat

end

end A366232.P16923710948097771857

/-!
# A366233: Expansion of e.g.f. A(x) satisfying A(x) = 1 + x*A(x) * exp(3*x*A(x)).

The programs for A366233, there is no canonical definition to state claims against.
-/

/-! ## A366233.P9742880805497064268

`A349125(A355781(n))+(n+1)*∑{e}[n+1, #]`
-/

namespace A366233.P9742880805497064268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349125 (A355781 n).toNat + (((n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℕ) : ℤ)

end

end A366233.P9742880805497064268

/-!
# A366234: Expansion of e.g.f. A(x) satisfying A(x) = 1 + x*A(x) * exp(4*x*A(x)).

The programs for A366234, there is no canonical definition to state claims against.
-/

/-! ## A366234.P3809972634728670718

`A075177(A229002(n)+2)-1-n`
-/

namespace A366234.P3809972634728670718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (A229002 n + 2).toNat - 1 - (n : ℤ)

end

end A366234.P3809972634728670718

/-!
# A366235: Expansion of e.g.f. A(x) satisfying A(x) = 1 + x*A(x) * exp(5*x*A(x)).

The programs for A366235, there is no canonical definition to state claims against.
-/

/-! ## A366235.P12155578658411307971

`A075177(A381984(n))-A381967(n)`
-/

namespace A366235.P12155578658411307971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (A381984 n).toNat - A381967 n

end

end A366235.P12155578658411307971

/-!
# A366236: G.f. A(x) satisfies A(x) = 1 + x + x*(1 + x)^2*A(x)^2.

The programs for A366236, there is no canonical definition to state claims against.
-/

/-! ## A366236.P8050198743852873306

`A008615(A150864(n+1))`
-/

namespace A366236.P8050198743852873306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A150864 (n + 1)).toNat

end

end A366236.P8050198743852873306

/-! ## A366236.P11739004059099680230

`A103221(A225254(n)+A099504(n))`
-/

namespace A366236.P11739004059099680230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A225254 n + A099504 n).toNat

end

end A366236.P11739004059099680230

/-!
# A366237: G.f. A(x) satisfies A(x) = 1 + x + x*(1 + x)^3*A(x)^2.

The programs for A366237, there is no canonical definition to state claims against.
-/

/-! ## A366237.P8950623364559067438

`A226994(n)+A056977(n^n)`
-/

namespace A366237.P8950623364559067438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n + A056977 (n ^ n)

end

end A366237.P8950623364559067438

/-! ## A366237.P7100662046939920563

`A097026(A000110(n))+A047665(n)`
-/

namespace A366237.P7100662046939920563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097026 (A000110 n).toNat + A047665 n

end

end A366237.P7100662046939920563

/-!
# A366238: G.f. A(x) satisfies A(x) = 1 + x + x*(1 + x)^4*A(x)^2.

The programs for A366238, there is no canonical definition to state claims against.
-/

/-! ## A366238.P6765516246650254286

`A100618(A059398(n)*A326078(n))`
-/

namespace A366238.P6765516246650254286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100618 (A059398 n * A326078 n).toNat

end

end A366238.P6765516246650254286

/-! ## A366238.P5262161101085898068

`A214763(n)+A086073(A000071(3*n+4))`
-/

namespace A366238.P5262161101085898068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214763 n + A086073 (A000071 (3 * n + 4)).toNat

end

end A366238.P5262161101085898068

/-!
# A366239: G.f. A(x) satisfies A(x) = 1 + x + x*(1 + x)^2*A(x)^3.

The programs for A366239, there is no canonical definition to state claims against.
-/

/-! ## A366239.P9676672433221477820

`A366696(n)-a(n-1)` with `a(0)=1`
-/

namespace A366239.P9676672433221477820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366696 n - a (n - 1)

end

end A366239.P9676672433221477820

/-!
# A366240: G.f. A(x) satisfies A(x) = 1 + x + x*(1 + x)^3*A(x)^3.

The programs for A366240, there is no canonical definition to state claims against.
-/

/-! ## A366240.P39967922957523489

`A233776(C(2*n, n+1))`
-/

namespace A366240.P39967922957523489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233776 (Nat.choose (2 * n) (n + 1))

end

end A366240.P39967922957523489

/-!
# A366241: G.f. A(x) satisfies A(x) = 1 + x + x*(1 + x)^4*A(x)^3.

The programs for A366241, there is no canonical definition to state claims against.
-/

/-! ## A366241.P17892910942737923369

`A076707((n+2)*2^(n-1)-eq[0, floor(2*sqrt(n))%2])`
-/

namespace A366241.P17892910942737923369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076707 (SequenceMachineLib.roundAway ((n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ))).toNat

end

end A366241.P17892910942737923369

/-!
# A366242: 

The programs for A366242, there is no canonical definition to state claims against.
-/

/-! ## A366242.P15199185044716374740

`sqrt(A366243(n+1))`
-/

namespace A366242.P15199185044716374740
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A366243 (n + 1) : ℝ)

end

end A366242.P15199185044716374740

/-! ## A366242.P1429404644417893111

`sqrt(sqrt(A366307(n+1)))`
-/

namespace A366242.P1429404644417893111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A366307 (n + 1) : ℝ))

end

end A366242.P1429404644417893111

/-! ## A366242.P8161938655400141540

`filter[A144972(n+1), A353519(#)]`
-/

namespace A366242.P8161938655400141540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A366242.P8161938655400141540

/-! ## A366242.P14757493289736878754

`record[A366244(n+1)]`
-/

namespace A366242.P14757493289736878754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366242.P14757493289736878754

/-! ## A366242.P5499573960008949601

`eq[A285142(2*(n+1)), A366247(n+1)]+1`
-/

namespace A366242.P5499573960008949601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A366242.P5499573960008949601

/-!
# A366243: Numbers that are products of "Fermi-Dirac primes" (A050376) that are powers of primes with exponents that are not powers of 4.

The programs for A366243, there is no canonical definition to state claims against.
-/

/-! ## A366243.P144364333156049888

`sqrt(A366307(n+1))`
-/

namespace A366243.P144364333156049888
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A366307 (n + 1) : ℝ)

end

end A366243.P144364333156049888

/-! ## A366243.P2006837904555895668

`record[A366244(n+1)²]`
-/

namespace A366243.P2006837904555895668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366244 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366243.P2006837904555895668

/-! ## A366243.P2396977861543417510

`A252895(A019554((n+1)²))²`
-/

namespace A366243.P2396977861543417510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252895 (A019554 ((n + 1) ^ 2)).toNat ^ 2

end

end A366243.P2396977861543417510

/-! ## A366243.P1554073103902969364

`A252895(A057918((n+2)²))²`
-/

namespace A366243.P1554073103902969364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252895 (A057918 ((n + 2) ^ 2)).toNat ^ 2

end

end A366243.P1554073103902969364

/-!
# A366244: The largest infinitary divisor of n that is a term of A366242.

The programs for A366244, there is no canonical definition to state claims against.
-/

/-! ## A366244.P11824503854537685813

`A007913(n+1)*A062379(A372329(n+1))`
-/

namespace A366244.P11824503854537685813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A062379 (A372329 (n + 1)).toNat

end

end A366244.P11824503854537685813

/-! ## A366244.P13474104355461507129

`A053143(A053143(n+1))/A053165(n+1)`
-/

namespace A366244.P13474104355461507129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (A053143 (n + 1)).toNat : ℚ) / (A053165 (n + 1) : ℚ)

end

end A366244.P13474104355461507129

/-!
# A366245: 

The programs for A366245, there is no canonical definition to state claims against.
-/

/-! ## A366245.P14879837155139206710

`(n+1)/A366244(n+1)`
-/

namespace A366245.P14879837155139206710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A366244 (n + 1) : ℚ)

end

end A366245.P14879837155139206710

/-!
# A366246: The number of infinitary divisors of n that are "Fermi-Dirac primes" (A050376) and terms of A366242.

The programs for A366246, the canonical program `A366246.P5159459724350524259` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366246 has offset 1).

The definition of A366246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366246.P9104514647344834293

`A064547(A366244(n+1))`
-/

namespace A366246.P9104514647344834293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A366244 (n + 1)).toNat

end

end A366246.P9104514647344834293

namespace A366246

/-- `A064547(A366244(n+1))` -/
def P9104514647344834293.Spec : Prop :=
  ∀ n, P9104514647344834293.a n = A366246 (n + 1)

end A366246

/-! ## A366246.P12635901658213859579

`A064547(n+1)-A366247(n+1)`
-/

namespace A366246.P12635901658213859579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) - A366247 (n + 1)

end

end A366246.P12635901658213859579

namespace A366246

/-- `A064547(n+1)-A366247(n+1)` -/
def P12635901658213859579.Spec : Prop :=
  ∀ n, P12635901658213859579.a n = A366246 (n + 1)

theorem P12635901658213859579.correct : P12635901658213859579.Spec := by
  intro n
  simp only [A366246, Nat.add_sub_cancel, A366246.P12635901658213859579.a, A366246.P5159459724350524259.f1, A366246.P5159459724350524259.a, A064547, A064547.P11832440237822956980.a, A366247, A366247.P12546709701483345304.a, A037445, A037445.P13224315450337883063.f1, A037445.P13224315450337883063.a, A001316, A001316.P6850078358198232129.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366246

/-! ## A366246.P5159459724350524259

`∑{e}[n+1, and(5, #)%3]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366246

/-- `∑{e}[n+1, and(5, #)%3]` -/
def P5159459724350524259.Spec : Prop :=
  ∀ n, (P5159459724350524259.a n : ℤ) = A366246 (n + 1)

theorem P5159459724350524259.correct : P5159459724350524259.Spec := by
  intro n
  simp only [A366246, Nat.add_sub_cancel]

end A366246

/-! ## A366246.P10832568173310345290

`log2(A366308(n+1))`
-/

namespace A366246.P10832568173310345290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A366308 (n + 1) : ℝ)

end

end A366246.P10832568173310345290

namespace A366246

/-- `log2(A366308(n+1))` -/
def P10832568173310345290.Spec : Prop :=
  ∀ n, P10832568173310345290.a n = (A366246 (n + 1) : ℝ)

end A366246

/-! ## A366246.P9155877339460394780

`A139352(A366308(n+1)²-1)`
-/

namespace A366246.P9155877339460394780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A366308 (n + 1) ^ 2 - 1).toNat

end

end A366246.P9155877339460394780

namespace A366246

/-- `A139352(A366308(n+1)²-1)` -/
def P9155877339460394780.Spec : Prop :=
  ∀ n, P9155877339460394780.a n = A366246 (n + 1)

end A366246

/-! ## A366246.P1520031813797977854

`A139354(A366308(n+1)²-1)`
-/

namespace A366246.P1520031813797977854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A366308 (n + 1) ^ 2 - 1).toNat

end

end A366246.P1520031813797977854

namespace A366246

/-- `A139354(A366308(n+1)²-1)` -/
def P1520031813797977854.Spec : Prop :=
  ∀ n, P1520031813797977854.a n = A366246 (n + 1)

end A366246

/-! ## A366246.P17845879049154479843

`A139354(A139373(A366308(n+1)²))`
-/

namespace A366246.P17845879049154479843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A139373 (A366308 (n + 1) ^ 2).toNat).toNat

end

end A366246.P17845879049154479843

namespace A366246

/-- `A139354(A139373(A366308(n+1)²))` -/
def P17845879049154479843.Spec : Prop :=
  ∀ n, P17845879049154479843.a n = A366246 (n + 1)

end A366246

/-! ## A366246.P13028037809596305636

`A139352(A366243(A366308(n+1)²))`
-/

namespace A366246.P13028037809596305636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A366243 (A366308 (n + 1) ^ 2).toNat).toNat

end

end A366246.P13028037809596305636

namespace A366246

/-- `A139352(A366243(A366308(n+1)²))` -/
def P13028037809596305636.Spec : Prop :=
  ∀ n, P13028037809596305636.a n = A366246 (n + 1)

end A366246

/-! ## A366246.P12902947754488814520

`A366247(A278254(n+1))`
-/

namespace A366246.P12902947754488814520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366247 (A278254 (n + 1)).toNat

end

end A366246.P12902947754488814520

namespace A366246

/-- `A366247(A278254(n+1))` -/
def P12902947754488814520.Spec : Prop :=
  ∀ n, P12902947754488814520.a n = A366246 (n + 1)

end A366246

/-! ## A366246.P3419648231554412404

`A366247((n+1)²)`
-/

namespace A366246.P3419648231554412404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366247 ((n + 1) ^ 2)

end

end A366246.P3419648231554412404

namespace A366246

/-- `A366247((n+1)²)` -/
def P3419648231554412404.Spec : Prop :=
  ∀ n, P3419648231554412404.a n = A366246 (n + 1)

end A366246

/-! ## A366246.P14765315477886233648

`log2(A366309((n+1)²))`
-/

namespace A366246.P14765315477886233648
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A366309 ((n + 1) ^ 2) : ℝ)

end

end A366246.P14765315477886233648

namespace A366246

/-- `log2(A366309((n+1)²))` -/
def P14765315477886233648.Spec : Prop :=
  ∀ n, P14765315477886233648.a n = (A366246 (n + 1) : ℝ)

end A366246

/-!
# A366247: The number of infinitary divisors of n that are "Fermi-Dirac primes" (A050376) and terms of A366243.

The programs for A366247, the canonical program `A366247.P12546709701483345304` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366247 has offset 1).

The definition of A366247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A366246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366247.P12546709701483345304

`A064547(n+1)-A366246(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366247

/-- `A064547(n+1)-A366246(n+1)` -/
def P12546709701483345304.Spec : Prop :=
  ∀ n, P12546709701483345304.a n = A366247 (n + 1)

theorem P12546709701483345304.correct : P12546709701483345304.Spec := by
  intro n
  simp only [A366247, Nat.add_sub_cancel]

end A366247

/-! ## A366247.P16862050807023274944

`log2(A366309(n+1))`
-/

namespace A366247.P16862050807023274944
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A366309 (n + 1) : ℝ)

end

end A366247.P16862050807023274944

namespace A366247

/-- `log2(A366309(n+1))` -/
def P16862050807023274944.Spec : Prop :=
  ∀ n, P16862050807023274944.a n = (A366247 (n + 1) : ℝ)

end A366247

/-! ## A366247.P16874675958734191217

`A065339(A293442(n+1))`
-/

namespace A366247.P16874675958734191217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A293442 (n + 1)).toNat

end

end A366247.P16874675958734191217

namespace A366247

/-- `A065339(A293442(n+1))` -/
def P16874675958734191217.Spec : Prop :=
  ∀ n, P16874675958734191217.a n = A366247 (n + 1)

end A366247

/-! ## A366247.P14811699648138449000

`A007814(A179873(n+1)*A366309(n+1))`
-/

namespace A366247.P14811699648138449000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A179873 (n + 1) * A366309 (n + 1)).toNat

end

end A366247.P14811699648138449000

namespace A366247

/-- `A007814(A179873(n+1)*A366309(n+1))` -/
def P14811699648138449000.Spec : Prop :=
  ∀ n, P14811699648138449000.a n = A366247 (n + 1)

end A366247

/-! ## A366247.P2723626904170744807

`A007814(A227157(n+1)*A366309(n+1))`
-/

namespace A366247.P2723626904170744807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A227157 (n + 1) * A366309 (n + 1)).toNat

end

end A366247.P2723626904170744807

namespace A366247

/-- `A007814(A227157(n+1)*A366309(n+1))` -/
def P2723626904170744807.Spec : Prop :=
  ∀ n, P2723626904170744807.a n = A366247 (n + 1)

end A366247

/-! ## A366247.P2576377720298675550

`A366246(A335324(n+1)²)`
-/

namespace A366247.P2576377720298675550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366246 (A335324 (n + 1) ^ 2).toNat

end

end A366247.P2576377720298675550

namespace A366247

/-- `A366246(A335324(n+1)²)` -/
def P2576377720298675550.Spec : Prop :=
  ∀ n, P2576377720298675550.a n = A366247 (n + 1)

end A366247

/-! ## A366247.P10970592235688736863

`and(A191825(n), A362412(n+1))`
-/

namespace A366247.P10970592235688736863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A191825 n) (A362412 (n + 1))

end

end A366247.P10970592235688736863

namespace A366247

/-- `and(A191825(n), A362412(n+1))` -/
def P10970592235688736863.Spec : Prop :=
  ∀ n, P10970592235688736863.a n = A366247 (n + 1)

end A366247

/-! ## A366247.P5478661487725724543

`A366246((n+1)²)`
-/

namespace A366247.P5478661487725724543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366246 ((n + 1) ^ 2)

end

end A366247.P5478661487725724543

namespace A366247

/-- `A366246((n+1)²)` -/
def P5478661487725724543.Spec : Prop :=
  ∀ n, P5478661487725724543.a n = A366247 (n + 1)

end A366247

/-! ## A366247.P16560190206093053169

`A064547(A025487(A366308((n+1)²)))`
-/

namespace A366247.P16560190206093053169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A025487 (A366308 ((n + 1) ^ 2)).toNat).toNat

end

end A366247.P16560190206093053169

namespace A366247

/-- `A064547(A025487(A366308((n+1)²)))` -/
def P16560190206093053169.Spec : Prop :=
  ∀ n, P16560190206093053169.a n = A366247 (n + 1)

end A366247

/-!
# A366250: Numbers k that are not powerful and do not have a strictly superior squarefree divisor.

The programs for A366250, the canonical program `A366250.P1848522872160911425` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366250 has offset 1).

The definition of A366250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366250.P14465443092386354856

`filter[A364702(n+1), A380439(#)]`
-/

namespace A366250.P14465443092386354856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A366250.P14465443092386354856

namespace A366250

/-- `filter[A364702(n+1), A380439(#)]` -/
def P14465443092386354856.Spec : Prop :=
  ∀ n, P14465443092386354856.a n = A366250 (n + 1)

end A366250

/-! ## A366250.P12616315031479071804

`filter[A364702(n+1), A380440(#)]`
-/

namespace A366250.P12616315031479071804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A366250.P12616315031479071804

namespace A366250

/-- `filter[A364702(n+1), A380440(#)]` -/
def P12616315031479071804.Spec : Prop :=
  ∀ n, P12616315031479071804.a n = A366250 (n + 1)

end A366250

/-! ## A366250.P16628947225286189100

`∩[A059172(n+1), A364702(n+1)]`
-/

namespace A366250.P16628947225286189100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366250.P16628947225286189100

namespace A366250

/-- `∩[A059172(n+1), A364702(n+1)]` -/
def P16628947225286189100.Spec : Prop :=
  ∀ n, (P16628947225286189100.a n : ℤ) = A366250 (n + 1)

end A366250

/-! ## A366250.P9716288298978747046

`∩[A341645(n+1), A364702(n+1)]`
-/

namespace A366250.P9716288298978747046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366250.P9716288298978747046

namespace A366250

/-- `∩[A341645(n+1), A364702(n+1)]` -/
def P9716288298978747046.Spec : Prop :=
  ∀ n, (P9716288298978747046.a n : ℤ) = A366250 (n + 1)

end A366250

/-! ## A366250.P15748172854829917100

`∩[A364702(n+1), A370266(n+1)]`
-/

namespace A366250.P15748172854829917100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366250.P15748172854829917100

namespace A366250

/-- `∩[A364702(n+1), A370266(n+1)]` -/
def P15748172854829917100.Spec : Prop :=
  ∀ n, (P15748172854829917100.a n : ℤ) = A366250 (n + 1)

end A366250

/-! ## A366250.P7309589096795577706

`∩[A364702(n+1), A389528(n+1)]`
-/

namespace A366250.P7309589096795577706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366250.P7309589096795577706

namespace A366250

/-- `∩[A364702(n+1), A389528(n+1)]` -/
def P7309589096795577706.Spec : Prop :=
  ∀ n, (P7309589096795577706.a n : ℤ) = A366250 (n + 1)

end A366250

/-! ## A366250.P3001140731948260695

`∩[A364702(n+1), A389752(n+1)]`
-/

namespace A366250.P3001140731948260695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366250.P3001140731948260695

namespace A366250

/-- `∩[A364702(n+1), A389752(n+1)]` -/
def P3001140731948260695.Spec : Prop :=
  ∀ n, (P3001140731948260695.a n : ℤ) = A366250 (n + 1)

end A366250

/-! ## A366250.P8372461121166817019

`∩[A364702(n+1), A389753(n+1)]`
-/

namespace A366250.P8372461121166817019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366250.P8372461121166817019

namespace A366250

/-- `∩[A364702(n+1), A389753(n+1)]` -/
def P8372461121166817019.Spec : Prop :=
  ∀ n, (P8372461121166817019.a n : ℤ) = A366250 (n + 1)

end A366250

/-! ## A366250.P14441085973015113512

`filter[A059172(n+1), A389905(#)]`
-/

namespace A366250.P14441085973015113512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A366250.P14441085973015113512

namespace A366250

/-- `filter[A059172(n+1), A389905(#)]` -/
def P14441085973015113512.Spec : Prop :=
  ∀ n, P14441085973015113512.a n = A366250 (n + 1)

end A366250

/-! ## A366250.P14514561200369936795

`filter[A341645(n+1), A389905(#)]`
-/

namespace A366250.P14514561200369936795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A366250.P14514561200369936795

namespace A366250

/-- `filter[A341645(n+1), A389905(#)]` -/
def P14514561200369936795.Spec : Prop :=
  ∀ n, P14514561200369936795.a n = A366250 (n + 1)

end A366250

/-! ## A366250.P7283883060823855475

`filter[A370266(n+1), A389905(#)]`
-/

namespace A366250.P7283883060823855475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A366250.P7283883060823855475

namespace A366250

/-- `filter[A370266(n+1), A389905(#)]` -/
def P7283883060823855475.Spec : Prop :=
  ∀ n, P7283883060823855475.a n = A366250 (n + 1)

end A366250

/-! ## A366250.P15303011442706738860

`filter[A389528(n+1), A389905(#)]`
-/

namespace A366250.P15303011442706738860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A366250.P15303011442706738860

namespace A366250

/-- `filter[A389528(n+1), A389905(#)]` -/
def P15303011442706738860.Spec : Prop :=
  ∀ n, P15303011442706738860.a n = A366250 (n + 1)

end A366250

/-! ## A366250.P11115385925960594445

`filter[A389752(n+1), A389905(#)]`
-/

namespace A366250.P11115385925960594445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A366250.P11115385925960594445

namespace A366250

/-- `filter[A389752(n+1), A389905(#)]` -/
def P11115385925960594445.Spec : Prop :=
  ∀ n, P11115385925960594445.a n = A366250 (n + 1)

end A366250

/-! ## A366250.P698669831383288094

`filter[A389753(n+1), A389905(#)]`
-/

namespace A366250.P698669831383288094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A366250.P698669831383288094

namespace A366250

/-- `filter[A389753(n+1), A389905(#)]` -/
def P698669831383288094.Spec : Prop :=
  ∀ n, P698669831383288094.a n = A366250 (n + 1)

end A366250

/-! ## A366250.P1848522872160911425

`filter[A391319(n+1), A380439(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A366250

/-- `filter[A391319(n+1), A380439(#)]` -/
def P1848522872160911425.Spec : Prop :=
  ∀ n, P1848522872160911425.a n = A366250 (n + 1)

theorem P1848522872160911425.correct : P1848522872160911425.Spec := by
  intro n
  simp only [A366250, Nat.add_sub_cancel]

end A366250

/-! ## A366250.P727984823384810586

`filter[A391319(n+1), A380440(#)]`
-/

namespace A366250.P727984823384810586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A366250.P727984823384810586

namespace A366250

/-- `filter[A391319(n+1), A380440(#)]` -/
def P727984823384810586.Spec : Prop :=
  ∀ n, P727984823384810586.a n = A366250 (n + 1)

end A366250

/-! ## A366250.P14487244787391507891

`∩[A059172(n+1), A391319(n+1)]`
-/

namespace A366250.P14487244787391507891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366250.P14487244787391507891

namespace A366250

/-- `∩[A059172(n+1), A391319(n+1)]` -/
def P14487244787391507891.Spec : Prop :=
  ∀ n, (P14487244787391507891.a n : ℤ) = A366250 (n + 1)

end A366250

/-! ## A366250.P17585321664689061044

`∩[A341645(n+1), A391319(n+1)]`
-/

namespace A366250.P17585321664689061044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366250.P17585321664689061044

namespace A366250

/-- `∩[A341645(n+1), A391319(n+1)]` -/
def P17585321664689061044.Spec : Prop :=
  ∀ n, (P17585321664689061044.a n : ℤ) = A366250 (n + 1)

end A366250

/-! ## A366250.P8964081630003133781

`∩[A370266(n+1), A391319(n+1)]`
-/

namespace A366250.P8964081630003133781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366250.P8964081630003133781

namespace A366250

/-- `∩[A370266(n+1), A391319(n+1)]` -/
def P8964081630003133781.Spec : Prop :=
  ∀ n, (P8964081630003133781.a n : ℤ) = A366250 (n + 1)

end A366250

/-! ## A366250.P16852572699580127348

`∩[A389528(n+1), A391319(n+1)]`
-/

namespace A366250.P16852572699580127348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366250.P16852572699580127348

namespace A366250

/-- `∩[A389528(n+1), A391319(n+1)]` -/
def P16852572699580127348.Spec : Prop :=
  ∀ n, (P16852572699580127348.a n : ℤ) = A366250 (n + 1)

end A366250

/-!
# A366251: Numbers with a coprime divisor shift.

The programs for A366251, there is no canonical definition to state claims against.
-/

/-! ## A366251.P15027786556156561143

`filter[A111615(2*n+1), A325964(#)]`
-/

namespace A366251.P15027786556156561143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111615 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A366251.P15027786556156561143

/-! ## A366251.P10088187629861865182

`filter[A133945(2*n+1), A325964(#)]`
-/

namespace A366251.P10088187629861865182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133945 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A366251.P10088187629861865182

/-! ## A366251.P13342906542604120145

`record[A095202(n+3)-A009194(n+1)]`
-/

namespace A366251.P13342906542604120145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095202 (n + 3) - A009194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366251.P13342906542604120145

/-! ## A366251.P6079507997323998877

`record[A095202(n+3)-A325813(n+1)]`
-/

namespace A366251.P6079507997323998877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095202 (n + 3) - A325813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366251.P6079507997323998877

/-! ## A366251.P2287076330892858398

`record[A017666(2*n+1)]%A050969(n+4)`
-/

namespace A366251.P2287076330892858398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A050969 (n + 4))

end

end A366251.P2287076330892858398

/-!
# A366254: Binary weight of May code (A303767).

The programs for A366254, there is no canonical definition to state claims against.
-/

/-! ## A366254.P11195400726354387620

`A000120(A303767(n))`
-/

namespace A366254.P11195400726354387620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A303767 n).toNat

end

end A366254.P11195400726354387620

/-! ## A366254.P8219963374648610700

`A001222(A366261(n))`
-/

namespace A366254.P8219963374648610700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A366261 n).toNat

end

end A366254.P8219963374648610700

/-! ## A366254.P14954362952859684933

`A001221(A303760(n))`
-/

namespace A366254.P14954362952859684933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A303760 n).toNat

end

end A366254.P14954362952859684933

/-! ## A366254.P3769000505195579582

`A064547(A303771(n))`
-/

namespace A366254.P3769000505195579582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A303771 n).toNat

end

end A366254.P3769000505195579582

/-! ## A366254.P3577420802564103086

`∑{e}[A366260(n), #]`
-/

namespace A366254.P3577420802564103086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366260 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366254.P3577420802564103086

/-! ## A366254.P7807203559366750708

`A001222(A366260(n))`
-/

namespace A366254.P7807203559366750708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A366260 n).toNat

end

end A366254.P7807203559366750708

/-! ## A366254.P2318704694250441613

`A001222(A303760(2*n-n))`
-/

namespace A366254.P2318704694250441613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A303760 (2 * n - n)).toNat

end

end A366254.P2318704694250441613

/-!
# A366255: Parity of May code (A303767).

The programs for A366255, the canonical program `A366255.P8099353301085392430` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366255 has offset 0).

The definition of A366255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366255.P14712236670735119828

`A303767(n)%2`
-/

namespace A366255.P14712236670735119828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303767 n) 2

end

end A366255.P14712236670735119828

namespace A366255

/-- `A303767(n)%2` -/
def P14712236670735119828.Spec : Prop :=
  ∀ n, P14712236670735119828.a n = A366255 n

end A366255

/-! ## A366255.P16835056029492457222

`A000035(A303767(n))`
-/

namespace A366255.P16835056029492457222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A303767 n).toNat

end

end A366255.P16835056029492457222

namespace A366255

/-- `A000035(A303767(n))` -/
def P16835056029492457222.Spec : Prop :=
  ∀ n, P16835056029492457222.a n = A366255 n

end A366255

/-! ## A366255.P17504568219342218545

`A304747(n)%2`
-/

namespace A366255.P17504568219342218545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304747 n) 2

end

end A366255.P17504568219342218545

namespace A366255

/-- `A304747(n)%2` -/
def P17504568219342218545.Spec : Prop :=
  ∀ n, P17504568219342218545.a n = A366255 n

end A366255

/-! ## A366255.P4175132394844389902

`val(A303760(n), 2)`
-/

namespace A366255.P4175132394844389902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A303760 n).toNat 2

end

end A366255.P4175132394844389902

namespace A366255

/-- `val(A303760(n), 2)` -/
def P4175132394844389902.Spec : Prop :=
  ∀ n, (P4175132394844389902.a n : ℤ) = A366255 n

end A366255

/-! ## A366255.P10780531013271522041

`char[A366256(n+1)]`
-/

namespace A366255.P10780531013271522041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A366255.P10780531013271522041

namespace A366255

/-- `char[A366256(n+1)]` -/
def P10780531013271522041.Spec : Prop :=
  ∀ n, (P10780531013271522041.a n : ℤ) = A366255 n

end A366255

/-! ## A366255.P16475485530606870139

`and(A054977(n), A303767(n))`
-/

namespace A366255.P16475485530606870139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A303767 n)

end

end A366255.P16475485530606870139

namespace A366255

/-- `and(A054977(n), A303767(n))` -/
def P16475485530606870139.Spec : Prop :=
  ∀ n, P16475485530606870139.a n = A366255 n

end A366255

/-! ## A366255.P11871718398378605392

`and(A054977(n), A304747(n))`
-/

namespace A366255.P11871718398378605392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A304747 n)

end

end A366255.P11871718398378605392

namespace A366255

/-- `and(A054977(n), A304747(n))` -/
def P11871718398378605392.Spec : Prop :=
  ∀ n, P11871718398378605392.a n = A366255 n

end A366255

/-! ## A366255.P15082326645782970182

`and(A057427(n), A303767(n))`
-/

namespace A366255.P15082326645782970182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A303767 n)

end

end A366255.P15082326645782970182

namespace A366255

/-- `and(A057427(n), A303767(n))` -/
def P15082326645782970182.Spec : Prop :=
  ∀ n, P15082326645782970182.a n = A366255 n

end A366255

/-! ## A366255.P16850253050185047308

`and(A057427(n), A304747(n))`
-/

namespace A366255.P16850253050185047308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A304747 n)

end

end A366255.P16850253050185047308

namespace A366255

/-- `and(A057427(n), A304747(n))` -/
def P16850253050185047308.Spec : Prop :=
  ∀ n, P16850253050185047308.a n = A366255 n

end A366255

/-! ## A366255.P17608859997285441154

`1-char[A303768(2*n)]`
-/

namespace A366255.P17608859997285441154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303768 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A366255.P17608859997285441154

namespace A366255

/-- `1-char[A303768(2*n)]` -/
def P17608859997285441154.Spec : Prop :=
  ∀ n, P17608859997285441154.a n = A366255 n

end A366255

/-! ## A366255.P8099353301085392430

`char[A303768(2*n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A366255

/-- `char[A303768(2*n+1)]` -/
def P8099353301085392430.Spec : Prop :=
  ∀ n, (P8099353301085392430.a n : ℤ) = A366255 n

theorem P8099353301085392430.correct : P8099353301085392430.Spec := by
  intro n
  simp only [A366255]

end A366255

/-! ## A366255.P3068576694875148464

`and(A077860(n), A303767(n))`
-/

namespace A366255.P3068576694875148464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A303767 n)

end

end A366255.P3068576694875148464

namespace A366255

/-- `and(A077860(n), A303767(n))` -/
def P3068576694875148464.Spec : Prop :=
  ∀ n, P3068576694875148464.a n = A366255 n

end A366255

/-! ## A366255.P5466474898747865682

`and(A000051(n), A303767(n))`
-/

namespace A366255.P5466474898747865682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A303767 n)

end

end A366255.P5466474898747865682

namespace A366255

/-- `and(A000051(n), A303767(n))` -/
def P5466474898747865682.Spec : Prop :=
  ∀ n, P5466474898747865682.a n = A366255 n

end A366255

/-! ## A366255.P7644239290686034014

`and(A083318(n), A303767(n))`
-/

namespace A366255.P7644239290686034014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A303767 n)

end

end A366255.P7644239290686034014

namespace A366255

/-- `and(A083318(n), A303767(n))` -/
def P7644239290686034014.Spec : Prop :=
  ∀ n, P7644239290686034014.a n = A366255 n

end A366255

/-! ## A366255.P14479116941333035026

`and(A048578(n), A303767(n))`
-/

namespace A366255.P14479116941333035026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A303767 n)

end

end A366255.P14479116941333035026

namespace A366255

/-- `and(A048578(n), A303767(n))` -/
def P14479116941333035026.Spec : Prop :=
  ∀ n, P14479116941333035026.a n = A366255 n

end A366255

/-! ## A366255.P3974584621335626977

`and(A114001(n), A303767(n))`
-/

namespace A366255.P3974584621335626977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114001 n) (A303767 n)

end

end A366255.P3974584621335626977

namespace A366255

/-- `and(A114001(n), A303767(n))` -/
def P3974584621335626977.Spec : Prop :=
  ∀ n, P3974584621335626977.a n = A366255 n

end A366255

/-! ## A366255.P12045357276324069004

`and(A020737(n), A303767(n))`
-/

namespace A366255.P12045357276324069004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A303767 n)

end

end A366255.P12045357276324069004

namespace A366255

/-- `and(A020737(n), A303767(n))` -/
def P12045357276324069004.Spec : Prop :=
  ∀ n, P12045357276324069004.a n = A366255 n

end A366255

/-! ## A366255.P6712416729469467273

`and(A083575(n), A303767(n))`
-/

namespace A366255.P6712416729469467273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083575 n) (A303767 n)

end

end A366255.P6712416729469467273

namespace A366255

/-- `and(A083575(n), A303767(n))` -/
def P6712416729469467273.Spec : Prop :=
  ∀ n, P6712416729469467273.a n = A366255 n

end A366255

/-! ## A366255.P2299311438903198815

`and(A083686(n), A303767(n))`
-/

namespace A366255.P2299311438903198815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083686 n) (A303767 n)

end

end A366255.P2299311438903198815

namespace A366255

/-- `and(A083686(n), A303767(n))` -/
def P2299311438903198815.Spec : Prop :=
  ∀ n, P2299311438903198815.a n = A366255 n

end A366255

/-! ## A366255.P17886766001794092903

`and(A083705(n), A303767(n))`
-/

namespace A366255.P17886766001794092903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083705 n) (A303767 n)

end

end A366255.P17886766001794092903

namespace A366255

/-- `and(A083705(n), A303767(n))` -/
def P17886766001794092903.Spec : Prop :=
  ∀ n, P17886766001794092903.a n = A366255 n

end A366255

/-!
# A366256: Positions of odd numbers in May code (A303767).

The programs for A366256, the canonical program `A366256.P9552359015136623183` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366256 has offset 1).

The definition of A366256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366256.P9552359015136623183

`eq[1, A366255(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366256

/-- `eq[1, A366255(n)]` -/
def P9552359015136623183.Spec : Prop :=
  ∀ n, (P9552359015136623183.a n : ℤ) = A366256 (n + 1)

theorem P9552359015136623183.correct : P9552359015136623183.Spec := by
  intro n
  simp only [A366256, Nat.add_sub_cancel]

end A366256

/-! ## A366256.P13326997106075725215

`comp[A366257(n+1)]`
-/

namespace A366256.P13326997106075725215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A366256.P13326997106075725215

namespace A366256

/-- `comp[A366257(n+1)]` -/
def P13326997106075725215.Spec : Prop :=
  ∀ n, (P13326997106075725215.a n : ℤ) = A366256 (n + 1)

end A366256

/-! ## A366256.P9252103320332104993

`eq[1, A303767(n)%2]`
-/

namespace A366256.P9252103320332104993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303767 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366256.P9252103320332104993

namespace A366256

/-- `eq[1, A303767(n)%2]` -/
def P9252103320332104993.Spec : Prop :=
  ∀ n, (P9252103320332104993.a n : ℤ) = A366256 (n + 1)

end A366256

/-! ## A366256.P13059108177056829667

`lt[0, A304747(n)%2]`
-/

namespace A366256.P13059108177056829667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304747 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A366256.P13059108177056829667

namespace A366256

/-- `lt[0, A304747(n)%2]` -/
def P13059108177056829667.Spec : Prop :=
  ∀ n, (P13059108177056829667.a n : ℤ) = A366256 (n + 1)

end A366256

/-! ## A366256.P9917770474656918959

`eq[0, A035363(A303767(n))]`
-/

namespace A366256.P9917770474656918959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A303767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366256.P9917770474656918959

namespace A366256

/-- `eq[0, A035363(A303767(n))]` -/
def P9917770474656918959.Spec : Prop :=
  ∀ n, (P9917770474656918959.a n : ℤ) = A366256 (n + 1)

end A366256

/-! ## A366256.P17158354784368738184

`lt[A022003(n), A001057(A303767(n))]`
-/

namespace A366256.P17158354784368738184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A303767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366256.P17158354784368738184

namespace A366256

/-- `lt[A022003(n), A001057(A303767(n))]` -/
def P17158354784368738184.Spec : Prop :=
  ∀ n, (P17158354784368738184.a n : ℤ) = A366256 (n + 1)

end A366256

/-! ## A366256.P746189411323084387

`lt[A025456(n), A001057(A303767(n))]`
-/

namespace A366256.P746189411323084387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A303767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366256.P746189411323084387

namespace A366256

/-- `lt[A025456(n), A001057(A303767(n))]` -/
def P746189411323084387.Spec : Prop :=
  ∀ n, (P746189411323084387.a n : ℤ) = A366256 (n + 1)

end A366256

/-! ## A366256.P10890894106355626111

`eq[n+1, A322315(A366260(n)+1)+n]`
-/

namespace A366256.P10890894106355626111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (A366260 n + 1).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366256.P10890894106355626111

namespace A366256

/-- `eq[n+1, A322315(A366260(n)+1)+n]` -/
def P10890894106355626111.Spec : Prop :=
  ∀ n, (P10890894106355626111.a n : ℤ) = A366256 (n + 1)

end A366256

/-! ## A366256.P6387365276232481531

`lt[A000035(A366260(n)), 1]`
-/

namespace A366256.P6387365276232481531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A366260 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366256.P6387365276232481531

namespace A366256

/-- `lt[A000035(A366260(n)), 1]` -/
def P6387365276232481531.Spec : Prop :=
  ∀ n, (P6387365276232481531.a n : ℤ) = A366256 (n + 1)

end A366256

/-! ## A366256.P5828539891204988940

`lt[A201163(A366260(n)), A073791(n)]`
-/

namespace A366256.P5828539891204988940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201163 (A366260 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366256.P5828539891204988940

namespace A366256

/-- `lt[A201163(A366260(n)), A073791(n)]` -/
def P5828539891204988940.Spec : Prop :=
  ∀ n, (P5828539891204988940.a n : ℤ) = A366256 (n + 1)

end A366256

/-! ## A366256.P7732458720634356965

`lt[A201163(A366260(n)), A292602(n)]`
-/

namespace A366256.P7732458720634356965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201163 (A366260 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366256.P7732458720634356965

namespace A366256

/-- `lt[A201163(A366260(n)), A292602(n)]` -/
def P7732458720634356965.Spec : Prop :=
  ∀ n, (P7732458720634356965.a n : ℤ) = A366256 (n + 1)

end A366256

/-!
# A366257: Positions of even numbers in May code (A303767).

The programs for A366257, the canonical program `A366257.P194233725417520756` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366257 has offset 1).

The definition of A366257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366257.P194233725417520756

`eq[0, A366255(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366257

/-- `eq[0, A366255(n)]` -/
def P194233725417520756.Spec : Prop :=
  ∀ n, (P194233725417520756.a n : ℤ) = A366257 (n + 1)

theorem P194233725417520756.correct : P194233725417520756.Spec := by
  intro n
  simp only [A366257, Nat.add_sub_cancel]

end A366257

/-! ## A366257.P14168905570324616980

`comp[A366256(n+1)]`
-/

namespace A366257.P14168905570324616980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A366257.P14168905570324616980

namespace A366257

/-- `comp[A366256(n+1)]` -/
def P14168905570324616980.Spec : Prop :=
  ∀ n, (P14168905570324616980.a n : ℤ) = A366257 (n + 1)

end A366257

/-! ## A366257.P13347026532569616956

`eq[0, A303767(n)%2]`
-/

namespace A366257.P13347026532569616956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303767 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366257.P13347026532569616956

namespace A366257

/-- `eq[0, A303767(n)%2]` -/
def P13347026532569616956.Spec : Prop :=
  ∀ n, (P13347026532569616956.a n : ℤ) = A366257 (n + 1)

end A366257

/-! ## A366257.P15768928350201442255

`lt[and(A057427(n), A303767(n)), 1]`
-/

namespace A366257.P15768928350201442255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A303767 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366257.P15768928350201442255

namespace A366257

/-- `lt[and(A057427(n), A303767(n)), 1]` -/
def P15768928350201442255.Spec : Prop :=
  ∀ n, (P15768928350201442255.a n : ℤ) = A366257 (n + 1)

end A366257

/-! ## A366257.P3002809398546463721

`eq[1, A000034(A303767(n))]`
-/

namespace A366257.P3002809398546463721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A303767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366257.P3002809398546463721

namespace A366257

/-- `eq[1, A000034(A303767(n))]` -/
def P3002809398546463721.Spec : Prop :=
  ∀ n, (P3002809398546463721.a n : ℤ) = A366257 (n + 1)

end A366257

/-! ## A366257.P9695855507793488530

`lt[A366255(n), A009531(A017533(n))]`
-/

namespace A366257.P9695855507793488530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A017533 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366257.P9695855507793488530

namespace A366257

/-- `lt[A366255(n), A009531(A017533(n))]` -/
def P9695855507793488530.Spec : Prop :=
  ∀ n, (P9695855507793488530.a n : ℤ) = A366257 (n + 1)

end A366257

/-! ## A366257.P1552831272367516208

`lt[A366255(n), A009531(A017329(2*n))]`
-/

namespace A366257.P1552831272367516208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A017329 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366257.P1552831272367516208

namespace A366257

/-- `lt[A366255(n), A009531(A017329(2*n))]` -/
def P1552831272367516208.Spec : Prop :=
  ∀ n, (P1552831272367516208.a n : ℤ) = A366257 (n + 1)

end A366257

/-! ## A366257.P2084443254961070619

`lt[A323879(A366260(n)), 1]`
-/

namespace A366257.P2084443254961070619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323879 (A366260 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366257.P2084443254961070619

namespace A366257

/-- `lt[A323879(A366260(n)), 1]` -/
def P2084443254961070619.Spec : Prop :=
  ∀ n, (P2084443254961070619.a n : ℤ) = A366257 (n + 1)

end A366257

/-! ## A366257.P16243023485303279581

`lt[A000035(n), A201163(A366260(n))]`
-/

namespace A366257.P16243023485303279581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201163 (A366260 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366257.P16243023485303279581

namespace A366257

/-- `lt[A000035(n), A201163(A366260(n))]` -/
def P16243023485303279581.Spec : Prop :=
  ∀ n, (P16243023485303279581.a n : ℤ) = A366257 (n + 1)

end A366257

/-! ## A366257.P2713257040484839660

`lt[A091204(n), A201163(A366260(n))]`
-/

namespace A366257.P2713257040484839660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201163 (A366260 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366257.P2713257040484839660

namespace A366257

/-- `lt[A091204(n), A201163(A366260(n))]` -/
def P2713257040484839660.Spec : Prop :=
  ∀ n, (P2713257040484839660.a n : ℤ) = A366257 (n + 1)

end A366257

/-! ## A366257.P1094407871145444749

`lt[A053645(n+1), A201163(A366260(n))]`
-/

namespace A366257.P1094407871145444749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201163 (A366260 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366257.P1094407871145444749

namespace A366257

/-- `lt[A053645(n+1), A201163(A366260(n))]` -/
def P1094407871145444749.Spec : Prop :=
  ∀ n, (P1094407871145444749.a n : ℤ) = A366257 (n + 1)

end A366257

/-! ## A366257.P3892739718197441907

`lt[A056239(n+1), A201163(A366260(n))]`
-/

namespace A366257.P3892739718197441907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201163 (A366260 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366257.P3892739718197441907

namespace A366257

/-- `lt[A056239(n+1), A201163(A366260(n))]` -/
def P3892739718197441907.Spec : Prop :=
  ∀ n, (P3892739718197441907.a n : ℤ) = A366257 (n + 1)

end A366257

/-! ## A366257.P10774045958524531269

`lt[A360614(n+1), A201163(A366260(n))]`
-/

namespace A366257.P10774045958524531269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201163 (A366260 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366257.P10774045958524531269

namespace A366257

/-- `lt[A360614(n+1), A201163(A366260(n))]` -/
def P10774045958524531269.Spec : Prop :=
  ∀ n, (P10774045958524531269.a n : ℤ) = A366257 (n + 1)

end A366257

/-!
# A366260: Doudna sequence permuted by May code: a(n) = A005940(1+A303767(n)).

The programs for A366260, there is no canonical definition to state claims against.
-/

/-! ## A366260.P13838205824187520785

`A005940(1+A303767(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366260.P13838205824187520785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A303767 n).toNat

end

end A366260.P13838205824187520785

/-! ## A366260.P9991893245103817251

`A005940(∑{p}[A303760(n), A048676(#)]+1)`
-/

namespace A366260.P9991893245103817251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p + 1).toNat

end

end A366260.P9991893245103817251

/-! ## A366260.P10065438561691568809

`A302024(A303771(n))`
-/

namespace A366260.P10065438561691568809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (A303771 n).toNat

end

end A366260.P10065438561691568809

/-! ## A366260.P10401172945674841161

`A335423(A303760(n))`
-/

namespace A366260.P10401172945674841161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335423 (A303760 n).toNat

end

end A366260.P10401172945674841161

/-! ## A366260.P7648571749213632348

`A347120(A303760(n)%A056987(n+1))`
-/

namespace A366260.P7648571749213632348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (Int.tmod (A303760 n) (A056987 (n + 1))).toNat

end

end A366260.P7648571749213632348

/-!
# A366261: The least number with the same prime signature as A366260, where A366260 is Doudna sequence permuted by May code.

The programs for A366261, there is no canonical definition to state claims against.
-/

/-! ## A366261.P9910926722452862609

`A278222(A303767(n))`
-/

namespace A366261.P9910926722452862609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A303767 n).toNat

end

end A366261.P9910926722452862609

/-! ## A366261.P14231376327294691756

`A046523(A366260(n))`
-/

namespace A366261.P14231376327294691756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A366260 n).toNat

end

end A366261.P14231376327294691756

/-!
# A366263: Doudna sequence permuted by Blue code: a(n) = A005940(1+A193231(n)).

The programs for A366263, there is no canonical definition to state claims against.
-/

/-! ## A366263.P6109914877333710251

`A005940(1+A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366263.P6109914877333710251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A193231 n).toNat

end

end A366263.P6109914877333710251

/-! ## A366263.P17814658051070787153

`A332450(A005940(1+n))`
-/

namespace A366263.P17814658051070787153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332450 (A005940 (1 + n)).toNat

end

end A366263.P17814658051070787153

/-! ## A366263.P11782050752491109306

`A243353(A234613(n))`
-/

namespace A366263.P11782050752491109306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A234613 n).toNat

end

end A366263.P11782050752491109306

/-! ## A366263.P17034429390398787344

`A163511(A234025(n))`
-/

namespace A366263.P17034429390398787344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A234025 n).toNat

end

end A366263.P17034429390398787344

/-! ## A366263.P10846992654722110122

`A005940(A234612(floor(xor(n, 2*n)/2))+1)`
-/

namespace A366263.P10846992654722110122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A234612 ⌊(Nat.xor n (2 * n) : ℚ) / 2⌋.toNat + 1).toNat

end

end A366263.P10846992654722110122

/-! ## A366263.P13970951353846077358

`A005940(A234612(xor(n, (or(1, n)-1)/2))+1)`
-/

namespace A366263.P13970951353846077358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A234612 (Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))).toNat + 1).toNat

end

end A366263.P13970951353846077358

/-!
# A366264: Inverse of A366263, where A366263 is the Doudna sequence permuted by Blue code.

The programs for A366264, there is no canonical definition to state claims against.
-/

/-! ## A366264.P16537207450051479430

`A193231(A156552(n+1))`
-/

namespace A366264.P16537207450051479430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A156552 (n + 1)).toNat

end

end A366264.P16537207450051479430

/-! ## A366264.P4437885605657945982

`A193231(A005941(n+1)-1)`
-/

namespace A366264.P4437885605657945982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A005941 (n + 1) - 1).toNat

end

end A366264.P4437885605657945982

/-! ## A366264.P15416947477598869403

`A193231(A364559(n+1)+n)`
-/

namespace A366264.P15416947477598869403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A364559 (n + 1) + (n : ℤ)).toNat

end

end A366264.P15416947477598869403

/-! ## A366264.P10889195238063395529

`A193231(∑{d}[n+1, A297112(#)])`
-/

namespace A366264.P10889195238063395529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (∑ d ∈ Nat.divisors (f1 n), A297112 d).toNat

end

end A366264.P10889195238063395529

/-! ## A366264.P18138487727229531930

`A193231((A322993(2*(n+1))-1)/2)`
-/

namespace A366264.P18138487727229531930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (SequenceMachineLib.roundAway ((A322993 (2 * (n + 1)) - 1 : ℚ) / 2)).toNat

end

end A366264.P18138487727229531930

/-!
# A366266: G.f. A(x) satisfies A(x) = 1 + x + x*A(x)^3.

The programs for A366266, there is no canonical definition to state claims against.
-/

/-! ## A366266.P17695589590638074253

`A378318(∑[n+1]+n)`
-/

namespace A366266.P17695589590638074253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378318 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A366266.P17695589590638074253

/-! ## A366266.P2622595131733810882

`A367640(n)-a(n-1)` with `a(0)=1`
-/

namespace A366266.P2622595131733810882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A367640 n - a (n - 1)

end

end A366266.P2622595131733810882

/-! ## A366266.P645719607328624376

`record[A378318(A061579(n))]`
-/

namespace A366266.P645719607328624376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378318 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366266.P645719607328624376

/-! ## A366266.P16868648669965315499

`record[A158821(n+1)*A378318(n)]`
-/

namespace A366266.P16868648669965315499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 (n + 1) * A378318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366266.P16868648669965315499

/-! ## A366266.P7237070919271325248

`A367640(n+1)-(A366221(n+1)+A366221(n))`
-/

namespace A366266.P7237070919271325248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367640 (n + 1) - (A366221 (n + 1) + A366221 n)

end

end A366266.P7237070919271325248

/-! ## A366266.P9591207283952031884

`record[A378318(n)/A008277(n+2)]`
-/

namespace A366266.P9591207283952031884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378318 n : ℚ) / (A008277 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366266.P9591207283952031884

/-!
# A366267: G.f. A(x) satisfies A(x) = 1 + x + x*A(x)^4.

The programs for A366267, there is no canonical definition to state claims against.
-/

/-! ## A366267.P13477625146481236847

`A367641(n)-a(n-1)` with `a(0)=1`
-/

namespace A366267.P13477625146481236847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A367641 n - a (n - 1)

end

end A366267.P13477625146481236847

/-! ## A366267.P14811732966023615649

`A367641(n+1)-(A366272(n+1)+A366272(n))`
-/

namespace A366267.P14811732966023615649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367641 (n + 1) - (A366272 (n + 1) + A366272 n)

end

end A366267.P14811732966023615649

/-!
# A366268: G.f. A(x) satisfies A(x) = 1 + x + x*A(x)^5.

The programs for A366268, there is no canonical definition to state claims against.
-/

/-! ## A366268.P12142724452718249956

`Δ[A189441(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A366268.P12142724452718249956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A189441 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366268.P12142724452718249956

/-!
# A366272: G.f. A(x) satisfies A(x) = 1 + x*(1 + x)^3*A(x)^4.

The programs for A366272, there is no canonical definition to state claims against.
-/

/-! ## A366272.P5613925965999173124

`A366267(n)-a(n-1)` with `a(0)=1`
-/

namespace A366272.P5613925965999173124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366267 n - a (n - 1)

end

end A366272.P5613925965999173124

/-!
# A366273: G.f. A(x) satisfies A(x) = 1 + x*(1 + x)^4*A(x)^5.

The programs for A366273, there is no canonical definition to state claims against.
-/

/-! ## A366273.P17035471432456163755

`A366268(n)-a(n-1)` with `a(0)=1`
-/

namespace A366273.P17035471432456163755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366268 n - a (n - 1)

end

end A366273.P17035471432456163755

/-!
# A366274: a(n) is the least k such that prime(n+1+k) >= prime(n)+prime(n+1).

The programs for A366274, the canonical program `A366274.P11829202406764329078` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366274 has offset 1).

The definition of A366274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076273, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366274.P11829202406764329078

`A000720(A076273(n+2))-(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366274

/-- `A000720(A076273(n+2))-(n+1)` -/
def P11829202406764329078.Spec : Prop :=
  ∀ n, P11829202406764329078.a n = A366274 (n + 1)

theorem P11829202406764329078.correct : P11829202406764329078.Spec := by
  intro n
  simp only [A366274, Nat.add_sub_cancel]

end A366274

/-! ## A366274.P1443320680693351214

`A000720(A001043(n+1)-1)-(n+1)`
-/

namespace A366274.P1443320680693351214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001043 (n + 1) - 1).toNat - (n + 1 : ℤ)

end

end A366274.P1443320680693351214

namespace A366274

/-- `A000720(A001043(n+1)-1)-(n+1)` -/
def P1443320680693351214.Spec : Prop :=
  ∀ n, P1443320680693351214.a n = A366274 (n + 1)

end A366274

/-! ## A366274.P16934592448886738816

`A000720(A000040(n+1)+A000040(n+2)-1)-(n+1)`
-/

namespace A366274.P16934592448886738816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) + A000040 (n + 2) - 1).toNat - (n + 1 : ℤ)

end

end A366274.P16934592448886738816

namespace A366274

/-- `A000720(A000040(n+1)+A000040(n+2)-1)-(n+1)` -/
def P16934592448886738816.Spec : Prop :=
  ∀ n, P16934592448886738816.a n = A366274 (n + 1)

end A366274

/-! ## A366274.P7505809687077203246

`A035250(A162735(n+1))`
-/

namespace A366274.P7505809687077203246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A162735 (n + 1)).toNat

end

end A366274.P7505809687077203246

namespace A366274

/-- `A035250(A162735(n+1))` -/
def P7505809687077203246.Spec : Prop :=
  ∀ n, P7505809687077203246.a n = A366274 (n + 1)

end A366274

/-! ## A366274.P14841801001603974774

`A060715(A162800(n+1))`
-/

namespace A366274.P14841801001603974774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A162800 (n + 1)).toNat

end

end A366274.P14841801001603974774

namespace A366274

/-- `A060715(A162800(n+1))` -/
def P14841801001603974774.Spec : Prop :=
  ∀ n, P14841801001603974774.a n = A366274 (n + 1)

end A366274

/-! ## A366274.P14028981339573466989

`A294108(A001043(n+1))`
-/

namespace A366274.P14028981339573466989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294108 (A001043 (n + 1)).toNat

end

end A366274.P14028981339573466989

namespace A366274

/-- `A294108(A001043(n+1))` -/
def P14028981339573466989.Spec : Prop :=
  ∀ n, P14028981339573466989.a n = A366274 (n + 1)

end A366274

/-! ## A366274.P4535651312011504454

`A294602(A092949(n+1))`
-/

namespace A366274.P4535651312011504454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (A092949 (n + 1)).toNat

end

end A366274.P4535651312011504454

namespace A366274

/-- `A294602(A092949(n+1))` -/
def P4535651312011504454.Spec : Prop :=
  ∀ n, P4535651312011504454.a n = A366274 (n + 1)

end A366274

/-! ## A366274.P11398682493574251150

`A294108(A011974(n+2))`
-/

namespace A366274.P11398682493574251150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294108 (A011974 (n + 2)).toNat

end

end A366274.P11398682493574251150

namespace A366274

/-- `A294108(A011974(n+2))` -/
def P11398682493574251150.Spec : Prop :=
  ∀ n, P11398682493574251150.a n = A366274 (n + 1)

end A366274

/-! ## A366274.P3873399312538299200

`A000720(A098085(n+1))-(n+2)`
-/

namespace A366274.P3873399312538299200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A098085 (n + 1)).toNat - (n + 2 : ℤ)

end

end A366274.P3873399312538299200

namespace A366274

/-- `A000720(A098085(n+1))-(n+2)` -/
def P3873399312538299200.Spec : Prop :=
  ∀ n, P3873399312538299200.a n = A366274 (n + 1)

end A366274

/-!
# A366275: The Cat's tongue permutation: a(n) = A163511(A057889(n)).

The programs for A366275, the canonical program `A366275.P12360444593326866610` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366275 has offset 0).

The definition of A366275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366275.P12360444593326866610

`A163511(A057889(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A366275

/-- `A163511(A057889(n))` -/
def P12360444593326866610.Spec : Prop :=
  ∀ n, P12360444593326866610.a n = A366275 n

theorem P12360444593326866610.correct : P12360444593326866610.Spec := by
  intro n
  simp only [A366275]

end A366275

/-! ## A366275.P5114384582160872845

`A366282(n)+n`
-/

namespace A366275.P5114384582160872845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366282 n + (n : ℤ)

end

end A366275.P5114384582160872845

namespace A366275

/-- `A366282(n)+n` -/
def P5114384582160872845.Spec : Prop :=
  ∀ n, P5114384582160872845.a n = A366275 n

theorem P5114384582160872845.correct : P5114384582160872845.Spec := by
  intro n
  simp only [A366275, Nat.add_sub_cancel, A366275.P5114384582160872845.a, A366275.P12360444593326866610.a, A057889, A057889.P1698969628910927929.a, A163511, A163511.P5635496813650871695.a, A366282, A366282.P5690967040154622966.a, A006519, A006519.P10435570611646570274.a, A028310, A028310.P18130301328277559831.a, A030101, A030101.P16184294017372777612.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A055945, A055945.P5963763732554067333.a, A145341, A145341.P17834554394848515737.a, A171977, A171977.P14092944863121073856.a, A005187, A005187.P3874015513960485494.a, A038572, A038572.P9289042872142352092.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366275

/-! ## A366275.P7293526103460388251

`A366283(n)*A366285(n)`
-/

namespace A366275.P7293526103460388251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366283 n * A366285 n

end

end A366275.P7293526103460388251

namespace A366275

/-- `A366283(n)*A366285(n)` -/
def P7293526103460388251.Spec : Prop :=
  ∀ n, P7293526103460388251.a n = A366275 n

end A366275

/-! ## A366275.P5331679391966998212

`A163511(xor(n, A280508(n)))`
-/

namespace A366275.P5331679391966998212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (Int.xor (n : ℤ) (A280508 n)).toNat

end

end A366275.P5331679391966998212

namespace A366275

/-- `A163511(xor(n, A280508(n)))` -/
def P5331679391966998212.Spec : Prop :=
  ∀ n, P5331679391966998212.a n = A366275 n

end A366275

/-! ## A366275.P17337877279058221860

`A163511(A366276(A163511(n)))`
-/

namespace A366275.P17337877279058221860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A366276 (A163511 n).toNat).toNat

end

end A366275.P17337877279058221860

namespace A366275

/-- `A163511(A366276(A163511(n)))` -/
def P17337877279058221860.Spec : Prop :=
  ∀ n, P17337877279058221860.a n = A366275 n

end A366275

/-!
# A366276: Permutation of nonnegative integers: a(n) = A057889(A243071(n)).

The programs for A366276, the canonical program `A366276.P1012939785362767709` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366276 has offset 1).

The definition of A366276 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A243071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366276.P1012939785362767709

`A057889(A243071(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A366276

/-- `A057889(A243071(n+1))` -/
def P1012939785362767709.Spec : Prop :=
  ∀ n, P1012939785362767709.a n = A366276 (n + 1)

theorem P1012939785362767709.correct : P1012939785362767709.Spec := by
  intro n
  simp only [A366276, Nat.add_sub_cancel]

end A366276

/-! ## A366276.P12160007252588421297

`A057889(n+1-A364288(n+1))`
-/

namespace A366276.P12160007252588421297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 ((n + 1 : ℤ) - A364288 (n + 1)).toNat

end

end A366276.P12160007252588421297

namespace A366276

/-- `A057889(n+1-A364288(n+1))` -/
def P12160007252588421297.Spec : Prop :=
  ∀ n, P12160007252588421297.a n = A366276 (n + 1)

end A366276

/-! ## A366276.P15260537462557945354

`A057889(A292941(n+1)+A292945(n+1)+A292943(n+1))`
-/

namespace A366276.P15260537462557945354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A292941 (n + 1) + (A292945 (n + 1) + A292943 (n + 1))).toNat

end

end A366276.P15260537462557945354

namespace A366276

/-- `A057889(A292941(n+1)+A292945(n+1)+A292943(n+1))` -/
def P15260537462557945354.Spec : Prop :=
  ∀ n, P15260537462557945354.a n = A366276 (n + 1)

end A366276

/-! ## A366276.P14867137403440819932

`A243071(A366275(A243071(A054429(A054429(n+1)))))`
-/

namespace A366276.P14867137403440819932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A366275 (A243071 (A054429 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A366276.P14867137403440819932

namespace A366276

/-- `A243071(A366275(A243071(A054429(A054429(n+1)))))` -/
def P14867137403440819932.Spec : Prop :=
  ∀ n, P14867137403440819932.a n = A366276 (n + 1)

end A366276

/-! ## A366276.P494064600252298775

`lcm(A030101(A243071(n+1)), A364256(n+1))`
-/

namespace A366276.P494064600252298775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030101 (A243071 (n + 1)).toNat) (A364256 (n + 1))

end

end A366276.P494064600252298775

namespace A366276

/-- `lcm(A030101(A243071(n+1)), A364256(n+1))` -/
def P494064600252298775.Spec : Prop :=
  ∀ n, (P494064600252298775.a n : ℤ) = A366276 (n + 1)

end A366276

/-!
# A366277: Fixed points of map n -> A366275(n).

The programs for A366277, there is no canonical definition to state claims against.
-/

/-! ## A366277.P17691372688446201306

`filter[A191283(n+1), A365421(#)]`
-/

namespace A366277.P17691372688446201306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365421 (f1 j).toNat = 1) n)

end

end A366277.P17691372688446201306

/-! ## A366277.P8104645447159248753

`eq[n, A366275(n)]`
-/

namespace A366277.P8104645447159248753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366277.P8104645447159248753

/-! ## A366277.P14008384052182413402

`eq[0, A366282(n)]`
-/

namespace A366277.P14008384052182413402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366282 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366277.P14008384052182413402

/-! ## A366277.P1907491074406900477

`eq[A057889(n), A269385(n)]`
-/

namespace A366277.P1907491074406900477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366277.P1907491074406900477

/-! ## A366277.P10294457020036267122

`eq[A011586(n), A366285(n)]`
-/

namespace A366277.P10294457020036267122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366277.P10294457020036267122

/-!
# A366279: The least number with same prime signature as A366275, where A366275(n) = A163511(A057889(n)).

The programs for A366279, the canonical program `A366279.P1626075147796417593` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366279 has offset 0).

The definition of A366279 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A278531, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366279.P1626075147796417593

`A278531(A057889(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A366279

/-- `A278531(A057889(n))` -/
def P1626075147796417593.Spec : Prop :=
  ∀ n, P1626075147796417593.a n = A366279 n

theorem P1626075147796417593.correct : P1626075147796417593.Spec := by
  intro n
  simp only [A366279]

end A366279

/-! ## A366279.P4831472747078962239

`A046523(A366275(n))`
-/

namespace A366279.P4831472747078962239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A366275 n).toNat

end

end A366279.P4831472747078962239

namespace A366279

/-- `A046523(A366275(n))` -/
def P4831472747078962239.Spec : Prop :=
  ∀ n, P4831472747078962239.a n = A366279 n

end A366279

/-! ## A366279.P1488458975212263207

`A278531(A333692(n))`
-/

namespace A366279.P1488458975212263207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A333692 n).toNat

end

end A366279.P1488458975212263207

namespace A366279

/-- `A278531(A333692(n))` -/
def P1488458975212263207.Spec : Prop :=
  ∀ n, P1488458975212263207.a n = A366279 n

end A366279

/-! ## A366279.P9265528782900038551

`A278531(A235027(n))%A059802(n+1)`
-/

namespace A366279.P9265528782900038551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278531 (A235027 n).toNat) (A059802 (n + 1))

end

end A366279.P9265528782900038551

namespace A366279

/-- `A278531(A235027(n))%A059802(n+1)` -/
def P9265528782900038551.Spec : Prop :=
  ∀ n, P9265528782900038551.a n = A366279 n

end A366279

/-! ## A366279.P15158089828642857451

`A278531(lt[A209382(n+1), A241008(3*(n+1))])`
-/

namespace A366279.P15158089828642857451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241008 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A366279.P15158089828642857451

namespace A366279

/-- `A278531(lt[A209382(n+1), A241008(3*(n+1))])` -/
def P15158089828642857451.Spec : Prop :=
  ∀ n, P15158089828642857451.a n = A366279 n

end A366279

/-!
# A366280: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366279(i) = A366279(j) for all i, j >= 0.

The programs for A366280, there is no canonical definition to state claims against.
-/

/-! ## A366280.P15328988445791170081

`A335460(A000041(n))+A286531(n)`
-/

namespace A366280.P15328988445791170081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A000041 n).toNat + A286531 n

end

end A366280.P15328988445791170081

/-! ## A366280.P152603808824874990

`A286531(n)+A275812(A022185(n))`
-/

namespace A366280.P152603808824874990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 n + A275812 (A022185 n).toNat

end

end A366280.P152603808824874990

/-! ## A366280.P13624076791271401905

`A351453(n+1)+A317948(A154985(n))`
-/

namespace A366280.P13624076791271401905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351453 (n + 1) + A317948 (A154985 n).toNat

end

end A366280.P13624076791271401905

/-! ## A366280.P7536321511379771125

`A365388(n+1)+A051903(A056292(n+1))`
-/

namespace A366280.P7536321511379771125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365388 (n + 1) + A051903 (A056292 (n + 1)).toNat

end

end A366280.P7536321511379771125

/-! ## A366280.P11094841768419502571

`A073093(A262212(n+2)^A003602(n+1))`
-/

namespace A366280.P11094841768419502571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (SequenceMachineLib.roundAway ((A262212 (n + 2) : ℚ) ^ (A003602 (n + 1) : ℤ))).toNat

end

end A366280.P11094841768419502571

/-!
# A366281: a(n) = largest exponent m for which a representation of the form A366275(n) = k^m exists (for some k). a(0) = 0 by convention.

The programs for A366281, the canonical program `A366281.P7181137604346336267` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366281 has offset 0).

The definition of A366281 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A365805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366281.P7181137604346336267

`A365805(A057889(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A366281

/-- `A365805(A057889(n))` -/
def P7181137604346336267.Spec : Prop :=
  ∀ n, P7181137604346336267.a n = A366281 n

theorem P7181137604346336267.correct : P7181137604346336267.Spec := by
  intro n
  simp only [A366281]

end A366281

/-! ## A366281.P4661134084145533073

`A052409(A366275(n))`
-/

namespace A366281.P4661134084145533073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A366275 n).toNat

end

end A366281.P4661134084145533073

namespace A366281

/-- `A052409(A366275(n))` -/
def P4661134084145533073.Spec : Prop :=
  ∀ n, P4661134084145533073.a n = A366281 n

end A366281

/-! ## A366281.P4519214703223061031

`A365805(A333692(n))`
-/

namespace A366281.P4519214703223061031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365805 (A333692 n).toNat

end

end A366281.P4519214703223061031

namespace A366281

/-- `A365805(A333692(n))` -/
def P4519214703223061031.Spec : Prop :=
  ∀ n, P4519214703223061031.a n = A366281 n

end A366281

/-! ## A366281.P610574241432234653

`A365805(A302027(n+1)-1)`
-/

namespace A366281.P610574241432234653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365805 (A302027 (n + 1) - 1).toNat

end

end A366281.P610574241432234653

namespace A366281

/-- `A365805(A302027(n+1)-1)` -/
def P610574241432234653.Spec : Prop :=
  ∀ n, P610574241432234653.a n = A366281 n

end A366281

/-! ## A366281.P5659171615925422088

`A052409(A366279(n))`
-/

namespace A366281.P5659171615925422088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A366279 n).toNat

end

end A366281.P5659171615925422088

namespace A366281

/-- `A052409(A366279(n))` -/
def P5659171615925422088.Spec : Prop :=
  ∀ n, P5659171615925422088.a n = A366281 n

end A366281

/-!
# A366282: a(n) = A366275(n) - n, where A366275 is the Cat's tongue permutation.

The programs for A366282, the canonical program `A366282.P5690967040154622966` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366282 has offset 0).

The definition of A366282 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366282.P5690967040154622966

`A366275(n)-n`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A366282

/-- `A366275(n)-n` -/
def P5690967040154622966.Spec : Prop :=
  ∀ n, P5690967040154622966.a n = A366282 n

theorem P5690967040154622966.correct : P5690967040154622966.Spec := by
  intro n
  simp only [A366282]

end A366282

/-! ## A366282.P6338421420756002632

`A366283(n)*A366285(n)-n`
-/

namespace A366282.P6338421420756002632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366283 n * A366285 n - (n : ℤ)

end

end A366282.P6338421420756002632

namespace A366282

/-- `A366283(n)*A366285(n)-n` -/
def P6338421420756002632.Spec : Prop :=
  ∀ n, P6338421420756002632.a n = A366282 n

end A366282

/-! ## A366282.P16483403063155345225

`A366275(n)+A001478(n+1)+1`
-/

namespace A366282.P16483403063155345225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 n + A001478 (n + 1) + 1

end

end A366282.P16483403063155345225

namespace A366282

/-- `A366275(n)+A001478(n+1)+1` -/
def P16483403063155345225.Spec : Prop :=
  ∀ n, P16483403063155345225.a n = A366282 n

theorem P16483403063155345225.correct : P16483403063155345225.Spec := by
  intro n
  simp only [A366282, Nat.add_sub_cancel, A366282.P16483403063155345225.a, A366282.P5690967040154622966.a, A001478, A001478.P11279598861711037921.a, A366275, A366275.P12360444593326866610.a, A057889, A057889.P1698969628910927929.a, A163511, A163511.P5635496813650871695.a, A006519, A006519.P10435570611646570274.a, A028310, A028310.P18130301328277559831.a, A030101, A030101.P16184294017372777612.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A055945, A055945.P5963763732554067333.a, A145341, A145341.P17834554394848515737.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366282

/-! ## A366282.P16933808989689873532

`A163511(A057889(n))-n`
-/

namespace A366282.P16933808989689873532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A057889 n).toNat - (n : ℤ)

end

end A366282.P16933808989689873532

namespace A366282

/-- `A163511(A057889(n))-n` -/
def P16933808989689873532.Spec : Prop :=
  ∀ n, P16933808989689873532.a n = A366282 n

end A366282

/-! ## A366282.P11328510958195358369

`A163511(xor(n, A280508(n)))-n`
-/

namespace A366282.P11328510958195358369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (Int.xor (n : ℤ) (A280508 n)).toNat - (n : ℤ)

end

end A366282.P11328510958195358369

namespace A366282

/-- `A163511(xor(n, A280508(n)))-n` -/
def P11328510958195358369.Spec : Prop :=
  ∀ n, P11328510958195358369.a n = A366282 n

end A366282

/-! ## A366282.P2700946395820506684

`A026741(A366275(2*n))+A001489(n)`
-/

namespace A366282.P2700946395820506684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A366275 (2 * n)).toNat + A001489 n

end

end A366282.P2700946395820506684

namespace A366282

/-- `A026741(A366275(2*n))+A001489(n)` -/
def P2700946395820506684.Spec : Prop :=
  ∀ n, P2700946395820506684.a n = A366282 n

end A366282

/-! ## A366282.P14393489017583123764

`A163511(A366276(A163511(n)))-n`
-/

namespace A366282.P14393489017583123764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A366276 (A163511 n).toNat).toNat - (n : ℤ)

end

end A366282.P14393489017583123764

namespace A366282

/-- `A163511(A366276(A163511(n)))-n` -/
def P14393489017583123764.Spec : Prop :=
  ∀ n, P14393489017583123764.a n = A366282 n

end A366282

/-!
# A366283: a(n) = gcd(n, A366275(n)), where A366275 is the Cat's tongue permutation.

The programs for A366283, the canonical program `A366283.P2349920202320002134` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366283 has offset 0).

The definition of A366283 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366283.P2349920202320002134

`gcd(n, A366275(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A366283

/-- `gcd(n, A366275(n))` -/
def P2349920202320002134.Spec : Prop :=
  ∀ n, (P2349920202320002134.a n : ℤ) = A366283 n

theorem P2349920202320002134.correct : P2349920202320002134.Spec := by
  intro n
  simp only [A366283]

end A366283

/-! ## A366283.P14756939472934141337

`A366275(n)/A366285(n)`
-/

namespace A366283.P14756939472934141337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366275 n : ℚ) / (A366285 n : ℚ)

end

end A366283.P14756939472934141337

namespace A366283

/-- `A366275(n)/A366285(n)` -/
def P14756939472934141337.Spec : Prop :=
  ∀ n, P14756939472934141337.a n = (A366283 n : ℚ)

end A366283

/-! ## A366283.P12248535536515034777

`gcd(A028310(n), A366282(n))`
-/

namespace A366283.P12248535536515034777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A366282 n)

end

end A366283.P12248535536515034777

namespace A366283

/-- `gcd(A028310(n), A366282(n))` -/
def P12248535536515034777.Spec : Prop :=
  ∀ n, (P12248535536515034777.a n : ℤ) = A366283 n

end A366283

/-! ## A366283.P4690238449526226764

`A163511(A057889(n))/A366285(n)`
-/

namespace A366283.P4690238449526226764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 (A057889 n).toNat : ℚ) / (A366285 n : ℚ)

end

end A366283.P4690238449526226764

namespace A366283

/-- `A163511(A057889(n))/A366285(n)` -/
def P4690238449526226764.Spec : Prop :=
  ∀ n, P4690238449526226764.a n = (A366283 n : ℚ)

end A366283

/-! ## A366283.P4722976057356581399

`gcd(A366282(n)+n, n*A024785(n+1))`
-/

namespace A366283.P4722976057356581399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A366282 n + (n : ℤ)) ((n : ℤ) * A024785 (n + 1))

end

end A366283.P4722976057356581399

namespace A366283

/-- `gcd(A366282(n)+n, n*A024785(n+1))` -/
def P4722976057356581399.Spec : Prop :=
  ∀ n, (P4722976057356581399.a n : ℤ) = A366283 n

end A366283

/-!
# A366284: a(n) = n / gcd(n, A366275(n)), where A366275 is the Cat's tongue permutation.

The programs for A366284, the canonical program `A366284.P11103033075793896238` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366284 has offset 0).

The definition of A366284 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366283, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366284.P11103033075793896238

`n/A366283(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A366284

/-- `n/A366283(n)` -/
def P11103033075793896238.Spec : Prop :=
  ∀ n, P11103033075793896238.a n = (A366284 n : ℚ)

end A366284

/-! ## A366284.P12808717696842226620

`n/gcd(n, A366275(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366284.P12808717696842226620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A366275 n) : ℚ)

end

end A366284.P12808717696842226620

namespace A366284

/-- `n/gcd(n, A366275(n))` -/
def P12808717696842226620.Spec : Prop :=
  ∀ n, P12808717696842226620.a n = (A366284 n : ℚ)

end A366284

/-! ## A366284.P1129021866507908853

`n/A366275(n)*A366285(n)`
-/

namespace A366284.P1129021866507908853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A366275 n : ℚ) * (A366285 n : ℚ)

end

end A366284.P1129021866507908853

namespace A366284

/-- `n/A366275(n)*A366285(n)` -/
def P1129021866507908853.Spec : Prop :=
  ∀ n, P1129021866507908853.a n = (A366284 n : ℚ)

end A366284

/-! ## A366284.P1217589848480746028

`n/gcd(A028310(n), A366282(n))`
-/

namespace A366284.P1217589848480746028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (A028310 n) (A366282 n) : ℚ)

end

end A366284.P1217589848480746028

namespace A366284

/-- `n/gcd(A028310(n), A366282(n))` -/
def P1217589848480746028.Spec : Prop :=
  ∀ n, P1217589848480746028.a n = (A366284 n : ℚ)

end A366284

/-! ## A366284.P9812385008641031573

`val(A000079(n), A000079(A366283(n)))`
-/

namespace A366284.P9812385008641031573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A000079 (A366283 n).toNat).toNat

end

end A366284.P9812385008641031573

namespace A366284

/-- `val(A000079(n), A000079(A366283(n)))` -/
def P9812385008641031573.Spec : Prop :=
  ∀ n, (P9812385008641031573.a n : ℤ) = A366284 n

end A366284

/-!
# A366285: a(n) = A366275(n) / gcd(n, A366275(n)), where A366275 is the Cat's tongue permutation.

The programs for A366285, the canonical program `A366285.P944909390526134256` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366285 has offset 0).

The definition of A366285 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, A366283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366285.P944909390526134256

`A366275(n)/A366283(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A366285

/-- `A366275(n)/A366283(n)` -/
def P944909390526134256.Spec : Prop :=
  ∀ n, P944909390526134256.a n = (A366285 n : ℚ)

end A366285

/-! ## A366285.P10042041197305848902

`A366275(n)/gcd(n, A366275(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366285.P10042041197305848902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366275 n : ℚ) / (Int.gcd (n : ℤ) (A366275 n) : ℚ)

end

end A366285.P10042041197305848902

namespace A366285

/-- `A366275(n)/gcd(n, A366275(n))` -/
def P10042041197305848902.Spec : Prop :=
  ∀ n, P10042041197305848902.a n = (A366285 n : ℚ)

end A366285

/-! ## A366285.P10652240670641085040

`(A366282(n)+n)/A366283(n)`
-/

namespace A366285.P10652240670641085040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366282 n + (n : ℤ) : ℚ) / (A366283 n : ℚ)

end

end A366285.P10652240670641085040

namespace A366285

/-- `(A366282(n)+n)/A366283(n)` -/
def P10652240670641085040.Spec : Prop :=
  ∀ n, P10652240670641085040.a n = (A366285 n : ℚ)

end A366285

/-! ## A366285.P13147802045971402782

`A163511(A057889(n))/A366283(n)`
-/

namespace A366285.P13147802045971402782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 (A057889 n).toNat : ℚ) / (A366283 n : ℚ)

end

end A366285.P13147802045971402782

namespace A366285

/-- `A163511(A057889(n))/A366283(n)` -/
def P13147802045971402782.Spec : Prop :=
  ∀ n, P13147802045971402782.a n = (A366285 n : ℚ)

end A366285

/-! ## A366285.P4833493301945230443

`A364492(A057889(n)%A180743(2*n+5))`
-/

namespace A366285.P4833493301945230443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364492 (Int.tmod (A057889 n) (A180743 (2 * n + 5))).toNat

end

end A366285.P4833493301945230443

namespace A366285

/-- `A364492(A057889(n)%A180743(2*n+5))` -/
def P4833493301945230443.Spec : Prop :=
  ∀ n, P4833493301945230443.a n = A366285 n

end A366285

/-!
# A366287: Numbers k such that A163511(k) is a seventh power.

The programs for A366287, there is no canonical definition to state claims against.
-/

/-! ## A366287.P7965983483478419495

`A004396(3*a(n-1)+1)` with `a(0)=0, a(1)=64`
-/

namespace A366287.P7965983483478419495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 64] fun n a =>
  A004396 (3 * a (n - 1) + 1).toNat

end

end A366287.P7965983483478419495

/-! ## A366287.P17380329109359993908

`A073137(A175166(n))`
-/

namespace A366287.P17380329109359993908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (A175166 n).toNat

end

end A366287.P17380329109359993908

/-!
# A366288: Numbers k such that 3*k is not squarefree.

The programs for A366288, the canonical program `A366288.P11447118264876121034` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366288 has offset 1).

The definition of A366288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366288.P313950673534351327

`eq[0, A008683(3*(n+1))]+1`
-/

namespace A366288.P313950673534351327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366288.P313950673534351327

namespace A366288

/-- `eq[0, A008683(3*(n+1))]+1` -/
def P313950673534351327.Spec : Prop :=
  ∀ n, (P313950673534351327.a n : ℤ) = A366288 (n + 1)

end A366288

/-! ## A366288.P11447118264876121034

`lt[1, A051903(3*(n+1))]+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A366288

/-- `lt[1, A051903(3*(n+1))]+1` -/
def P11447118264876121034.Spec : Prop :=
  ∀ n, (P11447118264876121034.a n : ℤ) = A366288 (n + 1)

theorem P11447118264876121034.correct : P11447118264876121034.Spec := by
  intro n
  simp only [A366288, Nat.add_sub_cancel]

end A366288

/-! ## A366288.P14717369744905965168

`∪[A013929(n+1), A016051(n+1)]`
-/

namespace A366288.P14717369744905965168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366288.P14717369744905965168

namespace A366288

/-- `∪[A013929(n+1), A016051(n+1)]` -/
def P14717369744905965168.Spec : Prop :=
  ∀ n, (P14717369744905965168.a n : ℤ) = A366288 (n + 1)

end A366288

/-! ## A366288.P10830356196342648922

`∪[A013929(n+1), A182338(n+1)]`
-/

namespace A366288.P10830356196342648922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366288.P10830356196342648922

namespace A366288

/-- `∪[A013929(n+1), A182338(n+1)]` -/
def P10830356196342648922.Spec : Prop :=
  ∀ n, (P10830356196342648922.a n : ℤ) = A366288 (n + 1)

end A366288

/-! ## A366288.P2627670354404809334

`∪[A013929(n+1), A325432(n+1)]`
-/

namespace A366288.P2627670354404809334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366288.P2627670354404809334

namespace A366288

/-- `∪[A013929(n+1), A325432(n+1)]` -/
def P2627670354404809334.Spec : Prop :=
  ∀ n, (P2627670354404809334.a n : ℤ) = A366288 (n + 1)

end A366288

/-! ## A366288.P5621358552930810842

`eq[A008486(n), A105570(A008486(n))]`
-/

namespace A366288.P5621358552930810842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366288.P5621358552930810842

namespace A366288

/-- `eq[A008486(n), A105570(A008486(n))]` -/
def P5621358552930810842.Spec : Prop :=
  ∀ n, (P5621358552930810842.a n : ℤ) = A366288 (n + 1)

end A366288

/-! ## A366288.P4430825989169660353

`lt[1, ∏{e}[3*n, #]]`
-/

namespace A366288.P4430825989169660353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366288.P4430825989169660353

namespace A366288

/-- `lt[1, ∏{e}[3*n, #]]` -/
def P4430825989169660353.Spec : Prop :=
  ∀ n, (P4430825989169660353.a n : ℤ) = A366288 (n + 1)

end A366288

/-! ## A366288.P9080597926379049562

`lt[∏{p}[3*n, #], 2*n]`
-/

namespace A366288.P9080597926379049562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A366288.P9080597926379049562

namespace A366288

/-- `lt[∏{p}[3*n, #], 2*n]` -/
def P9080597926379049562.Spec : Prop :=
  ∀ n, (P9080597926379049562.a n : ℤ) = A366288 (n + 1)

end A366288

/-! ## A366288.P3116140371309517439

`∪[A031193(n+1), A143718(n+1)]`
-/

namespace A366288.P3116140371309517439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366288.P3116140371309517439

namespace A366288

/-- `∪[A031193(n+1), A143718(n+1)]` -/
def P3116140371309517439.Spec : Prop :=
  ∀ n, (P3116140371309517439.a n : ℤ) = A366288 (n + 1)

end A366288

/-! ## A366288.P7866597713445312789

`∪[A143718(n+1), A182338(n+1)]`
-/

namespace A366288.P7866597713445312789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366288.P7866597713445312789

namespace A366288

/-- `∪[A143718(n+1), A182338(n+1)]` -/
def P7866597713445312789.Spec : Prop :=
  ∀ n, (P7866597713445312789.a n : ℤ) = A366288 (n + 1)

end A366288

/-!
# A366289: a(n) = 1 if A365711(n) is zero, 0 otherwise.

The programs for A366289, there is no canonical definition to state claims against.
-/

/-! ## A366289.P9754092462975110051

`∏{d}[A365711(n+1), 1-#]`
-/

namespace A366289.P9754092462975110051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (1 - (d : ℤ))

end

end A366289.P9754092462975110051

/-! ## A366289.P12637417101677563793

`A185015(A366293(n+1))`
-/

namespace A366289.P12637417101677563793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 (A366293 (n + 1)).toNat

end

end A366289.P12637417101677563793

/-! ## A366289.P5495431484336061225

`∏{d}[A365711(n+1), A026927(#)]²`
-/

namespace A366289.P5495431484336061225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A026927 d) ^ 2

end

end A366289.P5495431484336061225

/-! ## A366289.P772356724494982539

`∏{d}[A365711(n+1), A049798(#)]²`
-/

namespace A366289.P772356724494982539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A049798 d) ^ 2

end

end A366289.P772356724494982539

/-! ## A366289.P16837075030529036207

`∏{d}[A365711(n+1), A063962(#)]²`
-/

namespace A366289.P16837075030529036207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A063962 d) ^ 2

end

end A366289.P16837075030529036207

/-! ## A366289.P4288298885663903590

`A000007(A365711(n+1)²)`
-/

namespace A366289.P4288298885663903590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A365711 (n + 1) ^ 2).toNat

end

end A366289.P4288298885663903590

/-! ## A366289.P44235975327015935

`A010052(A365711(n+1)²+1)`
-/

namespace A366289.P44235975327015935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A365711 (n + 1) ^ 2 + 1).toNat

end

end A366289.P44235975327015935

/-! ## A366289.P2087063308996467069

`A010052(lcm(A005117(n+3), A365711(n+1)))`
-/

namespace A366289.P2087063308996467069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Int.lcm (A005117 (n + 3)) (A365711 (n + 1)))

end

end A366289.P2087063308996467069

/-!
# A366290: Positions of zeros in A365711, where A365711 is the Dirichlet inverse of balanced ternary enumeration of integers (A117966).

The programs for A366290, there is no canonical definition to state claims against.
-/

/-! ## A366290.P11881328809640631300

`eq[1, A366289(n+1)]+1`
-/

namespace A366290.P11881328809640631300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366290.P11881328809640631300

/-! ## A366290.P314834980653104762

`lt[A365711(n+1)², 1]+1`
-/

namespace A366290.P314834980653104762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365711 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A366290.P314834980653104762

/-! ## A366290.P7316975389728151071

`filter[A049636(n), A366289(#)]`
-/

namespace A366290.P7316975389728151071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P7316975389728151071

/-! ## A366290.P6319099772876325655

`filter[A080037(n), A366289(#)]`
-/

namespace A366290.P6319099772876325655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P6319099772876325655

/-! ## A366290.P77804865557484016

`filter[A114119(n), A366289(#)]`
-/

namespace A366290.P77804865557484016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P77804865557484016

/-! ## A366290.P16462889457019726211

`filter[A267528(n), A366289(#)]`
-/

namespace A366290.P16462889457019726211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P16462889457019726211

/-! ## A366290.P7191491564465424896

`filter[A299417(n), A366289(#)]`
-/

namespace A366290.P7191491564465424896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P7191491564465424896

/-! ## A366290.P13298062696006461276

`A153152(eq[1, A366289(n+1)])`
-/

namespace A366290.P13298062696006461276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A366290.P13298062696006461276

/-! ## A366290.P3298629539148205841

`filter[A002808(n+1), A366289(#)]`
-/

namespace A366290.P3298629539148205841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P3298629539148205841

/-! ## A366290.P7259660415655521401

`filter[A007494(n+1), A366289(#)]`
-/

namespace A366290.P7259660415655521401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P7259660415655521401

/-! ## A366290.P9551071106651309423

`filter[A009188(n+1), A366289(#)]`
-/

namespace A366290.P9551071106651309423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P9551071106651309423

/-! ## A366290.P16155298203240287032

`filter[A013929(n+1), A366289(#)]`
-/

namespace A366290.P16155298203240287032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P16155298203240287032

/-! ## A366290.P3873584292366348935

`filter[A018252(n+1), A366289(#)]`
-/

namespace A366290.P3873584292366348935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P3873584292366348935

/-! ## A366290.P12752628412507067215

`filter[A025020(n+1), A366289(#)]`
-/

namespace A366290.P12752628412507067215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P12752628412507067215

/-! ## A366290.P12497915248947554

`filter[A056653(n+1), A366289(#)]`
-/

namespace A366290.P12497915248947554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P12497915248947554

/-! ## A366290.P11426329252992806506

`filter[A060679(n+1), A366289(#)]`
-/

namespace A366290.P11426329252992806506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P11426329252992806506

/-! ## A366290.P7966086553703618731

`filter[A065090(n+1), A366289(#)]`
-/

namespace A366290.P7966086553703618731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P7966086553703618731

/-! ## A366290.P6732270613220611161

`filter[A068631(n+1), A366289(#)]`
-/

namespace A366290.P6732270613220611161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P6732270613220611161

/-! ## A366290.P9769286757138744184

`filter[A073900(n+1), A366289(#)]`
-/

namespace A366290.P9769286757138744184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P9769286757138744184

/-! ## A366290.P9137202105526325976

`filter[A080756(n+1), A366289(#)]`
-/

namespace A366290.P9137202105526325976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A366290.P9137202105526325976

/-!
# A366291: Lexicographically earliest infinite sequence such that a(i) = a(j) => A353271(i) = A353271(j) for all i, j >= 1, where A353271(n) is the numerator of n / A005940(1+(3*A156552(n))).

The programs for A366291, there is no canonical definition to state claims against.
-/

/-! ## A366291.P18197426402765227638

`A353271(n+1)-A236677(A335267(n+1))`
-/

namespace A366291.P18197426402765227638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353271 (n + 1) - A236677 (A335267 (n + 1)).toNat

end

end A366291.P18197426402765227638

