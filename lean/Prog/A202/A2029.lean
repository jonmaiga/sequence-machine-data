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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C002
import Seq.B005.C000
import Seq.B007.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

/-!
# A202900: Number of n X 2 0..1 arrays with every one equal to some NW, E or S neighbor.

The programs for A202900, the canonical program `A202900.P14848991346784523435` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202900 has offset 0).

The definition of A202900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202900.P6801683006422365561

`ogf((1-3x+4x^2-2x^3)/(1-4x+4x^2-4x^3+4x^4))`
-/

namespace A202900.P6801683006422365561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4, -2] [1, -4, 4, -4, 4] n

end

end A202900.P6801683006422365561

namespace A202900

/-- `ogf((1-3x+4x^2-2x^3)/(1-4x+4x^2-4x^3+4x^4))` -/
def P6801683006422365561.Spec : Prop :=
  ∀ n, P6801683006422365561.a n = A202900 n

end A202900

/-! ## A202900.P14848991346784523435

`4*a(n-1)-4*a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=14`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A202900

/-- `4*a(n-1)-4*a(n-2)+4*a(n-3)-4*a(n-4)` -/
def P14848991346784523435.Spec : Prop :=
  ∀ n, P14848991346784523435.a n = A202900 n

theorem P14848991346784523435.correct : P14848991346784523435.Spec := by
  intro n
  simp only [A202900]

end A202900

/-! ## A202900.P15083546959316640136

`A202906(∑[n]+2)`
-/

namespace A202900.P15083546959316640136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202900.P15083546959316640136

namespace A202900

/-- `A202906(∑[n]+2)` -/
def P15083546959316640136.Spec : Prop :=
  ∀ n, P15083546959316640136.a n = A202900 n

end A202900

/-!
# A202901: Number of n X 3 0..1 arrays with every one equal to some NW, E or S neighbor.

The programs for A202901, the canonical program `A202901.P15900480266896083113` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202901 has offset 1).

The definition of A202901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202901.P15900480266896083113

`ogf((1+6x-2x^2-44x^3+52x^4-16x^5)/(1-8x+17x^2-32x^3+70x^4-72x^5+24x^6))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A202901

/-- `ogf((1+6x-2x^2-44x^3+52x^4-16x^5)/(1-8x+17x^2-32x^3+70x^4-72x^5+24x^6))` -/
def P15900480266896083113.Spec : Prop :=
  ∀ n, P15900480266896083113.a n = A202901 (n + 1)

theorem P15900480266896083113.correct : P15900480266896083113.Spec := by
  intro n
  simp only [A202901, Nat.add_sub_cancel]

end A202901

/-! ## A202901.P10253098792081781939

`A202906(∑[n+2]+4)`
-/

namespace A202901.P10253098792081781939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202901.P10253098792081781939

namespace A202901

/-- `A202906(∑[n+2]+4)` -/
def P10253098792081781939.Spec : Prop :=
  ∀ n, P10253098792081781939.a n = A202901 (n + 1)

end A202901

/-!
# A202902: Number of n X 4 0..1 arrays with every one equal to some NW, E or S neighbor.

The programs for A202902, there is no canonical definition to state claims against.
-/

/-! ## A202902.P628640020832499949

`A202906(A374004(n+1))`
-/

namespace A202902.P628640020832499949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A374004 (n + 1)).toNat

end

end A202902.P628640020832499949

/-! ## A202902.P15392668422466879534

`A202906(A141214(n+1))`
-/

namespace A202902.P15392668422466879534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A141214 (n + 1)).toNat

end

end A202902.P15392668422466879534

/-!
# A202903: Number of nX5 0..1 arrays with every one equal to some NW, E or S neighbor.

The programs for A202903, there is no canonical definition to state claims against.
-/

/-! ## A202903.P1393648329561704391

`A202906(A374005(n+1))`
-/

namespace A202903.P1393648329561704391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A374005 (n + 1)).toNat

end

end A202903.P1393648329561704391

/-!
# A202904: Number of n X 6 0..1 arrays with every one equal to some NW, E or S neighbor.

The programs for A202904, there is no canonical definition to state claims against.
-/

/-! ## A202904.P17421634558983681201

`A202906(A374007(n+1))`
-/

namespace A202904.P17421634558983681201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A374007 (n + 1)).toNat

end

end A202904.P17421634558983681201

/-!
# A202905: Number of n X 7 0..1 arrays with every one equal to some NW, E or S neighbor.

The programs for A202905, there is no canonical definition to state claims against.
-/

/-! ## A202905.P13707441047583696668

`A202906(A374008(n+1))`
-/

namespace A202905.P13707441047583696668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A374008 (n + 1)).toNat

end

end A202905.P13707441047583696668

/-!
# A202906: T(n,k) = Number of n X k 0..1 arrays with every one equal to some NW, E or S neighbor.

The programs for A202906, there is no canonical definition to state claims against.
-/

/-! ## A202906.P9713523049399039702

`A006075(A008459(n))`
-/

namespace A202906.P9713523049399039702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006075 (A008459 n).toNat

end

end A202906.P9713523049399039702

/-! ## A202906.P6922440512870678437

`A071450(A022174(n))`
-/

namespace A202906.P6922440512870678437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071450 (A022174 n).toNat

end

end A202906.P6922440512870678437

/-! ## A202906.P14638382424080672708

`A110029(A022167(n))`
-/

namespace A202906.P14638382424080672708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110029 (A022167 n).toNat

end

end A202906.P14638382424080672708

/-! ## A202906.P5058510573422364982

`A034298(A111636(n))`
-/

namespace A202906.P5058510573422364982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A111636 n).toNat

end

end A202906.P5058510573422364982

/-! ## A202906.P126543264024774123

`A048263(A099759(n))`
-/

namespace A202906.P126543264024774123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048263 (A099759 n).toNat

end

end A202906.P126543264024774123

/-!
# A202907: Expand 1/(1 - (3/2)*x + (2/3)*x^4 - x^5) in powers of x, then multiply coefficient of x^n by 3^floor(n/4)*2^n to get integers.

The programs for A202907, there is no canonical definition to state claims against.
-/

/-! ## A202907.P2557676225359416798

`record[gcd((12*n+3)^3, A244806(n+4))]`
-/

namespace A202907.P2557676225359416798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((12 * n + 3) ^ 3 : ℤ) (A244806 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202907.P2557676225359416798

/-! ## A202907.P16635703370367417359

`record[gcd(A161714(n), A172482(n))]`
-/

namespace A202907.P16635703370367417359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161714 n) (A172482 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202907.P16635703370367417359

/-! ## A202907.P2720996079765662840

`record[gcd(A154600(n+1), A255847(n))]`
-/

namespace A202907.P2720996079765662840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154600 (n + 1)) (A255847 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202907.P2720996079765662840

/-! ## A202907.P9411457812710035372

`record[gcd(A058331(n), A262000(n+2))]`
-/

namespace A202907.P9411457812710035372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058331 n) (A262000 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202907.P9411457812710035372

/-!
# A202908: Number of n X n 0..7 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202908, there is no canonical definition to state claims against.
-/

/-! ## A202908.P17667201783847254297

`A202916((n+1)²+n²)`
-/

namespace A202908.P17667201783847254297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 ((n + 1) ^ 2 + n ^ 2)

end

end A202908.P17667201783847254297

/-!
# A202909: Number of nX1 0..7 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202909, there is no canonical definition to state claims against.
-/

/-! ## A202909.P11415125403597269909

`A202916(∑[n]+1)`
-/

namespace A202909.P11415125403597269909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202909.P11415125403597269909

/-! ## A202909.P16489977512109170333

`record[A202916(n+1)/A015125(n)]`
-/

namespace A202909.P16489977512109170333
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202916 (n + 1) : ℚ) / (A015125 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202909.P16489977512109170333

/-! ## A202909.P17366823804025225461

`record[root(A202916(n+1), A156601(n))]`
-/

namespace A202909.P17366823804025225461
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202916 (n + 1) : ℝ) ^ (1 / (A156601 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202909.P17366823804025225461

/-! ## A202909.P13009036107986176720

`record[gcd(A202916(n+1), A287822(n))]`
-/

namespace A202909.P13009036107986176720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202916 (n + 1)) (A287822 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202909.P13009036107986176720

/-! ## A202909.P7615415016754322619

`record[root(A202916(n+1), A133819(n+1))]`
-/

namespace A202909.P7615415016754322619
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202916 (n + 1) : ℝ) ^ (1 / (A133819 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202909.P7615415016754322619

/-!
# A202910: Number of nX2 0..7 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202910, there is no canonical definition to state claims against.
-/

/-! ## A202910.P11347049880731660347

`A202916(∑[n+1]+2)`
-/

namespace A202910.P11347049880731660347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202910.P11347049880731660347

/-! ## A202910.P16613644994969789248

`record[root(A202916(n+3), A004736(n+1))]`
-/

namespace A202910.P16613644994969789248
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202916 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202910.P16613644994969789248

/-! ## A202910.P3963800954442817690

`record[root(A202916(n+3), A202971(n+1))]`
-/

namespace A202910.P3963800954442817690
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202916 (n + 3) : ℝ) ^ (1 / (A202971 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202910.P3963800954442817690

/-!
# A202911: Number of n X 3 0..7 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202911, there is no canonical definition to state claims against.
-/

/-! ## A202911.P3725040225489035425

`A202916(∑[n+2]+4)`
-/

namespace A202911.P3725040225489035425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202911.P3725040225489035425

/-!
# A202912: Number of nX4 0..7 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202912, there is no canonical definition to state claims against.
-/

/-! ## A202912.P7123008891048917700

`A202916(A141214(n)+7)`
-/

namespace A202912.P7123008891048917700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (A141214 n + 7).toNat

end

end A202912.P7123008891048917700

/-! ## A202912.P4041259190364445774

`A202916(A141214(n+1))`
-/

namespace A202912.P4041259190364445774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (A141214 (n + 1)).toNat

end

end A202912.P4041259190364445774

/-!
# A202913: Number of nX5 0..7 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202913, there is no canonical definition to state claims against.
-/

/-! ## A202913.P4631136328815530271

`A202916(A167499(n+3))`
-/

namespace A202913.P4631136328815530271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (A167499 (n + 3)).toNat

end

end A202913.P4631136328815530271

/-!
# A202914: Number of nX6 0..7 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202914, there is no canonical definition to state claims against.
-/

/-! ## A202914.P9907516516576852057

`A202916(eq[7, A131818(n+1)])`
-/

namespace A202914.P9907516516576852057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202914.P9907516516576852057

/-! ## A202914.P4741752822985434883

`A202916(A238531(n+7)-7)`
-/

namespace A202914.P4741752822985434883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (A238531 (n + 7) - 7).toNat

end

end A202914.P4741752822985434883

/-!
# A202915: Number of nX7 0..7 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202915, there is no canonical definition to state claims against.
-/

/-! ## A202915.P17665746972534356241

`A202916(A238531(n+7)+5)`
-/

namespace A202915.P17665746972534356241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (A238531 (n + 7) + 5).toNat

end

end A202915.P17665746972534356241

/-!
# A202916: T(n,k) = Number of n X k 0..7 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202916, there is no canonical definition to state claims against.
-/

/-! ## A202916.P17787405829554781683

`A256701(A032441(n)^3)`
-/

namespace A202916.P17787405829554781683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256701 (A032441 n ^ 3).toNat

end

end A202916.P17787405829554781683

/-!
# A202917: For n >= 0, let n!^(1) = A053657(n+1) and, for 0 <= m <= n, C^(1)(n,m) = n!^(1)/(m!^(1)*(n-m)!^(1)). The sequence gives a triangle of numbers C^(1)(n,m) with rows of length n+1.

The programs for A202917, there is no canonical definition to state claims against.
-/

/-! ## A202917.P4290832532786955459

`gcd(round(sqrt(2*n))!, A022181(n))`
-/

namespace A202917.P4290832532786955459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat : ℤ) (A022181 n)

end

end A202917.P4290832532786955459

/-! ## A202917.P850961558248392535

`gcd(A022181(n), A130493(n+1))`
-/

namespace A202917.P850961558248392535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022181 n) (A130493 (n + 1))

end

end A202917.P850961558248392535

/-! ## A202917.P1960583960290702257

`gcd(A022181(n), A233287(A109613(n)))`
-/

namespace A202917.P1960583960290702257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022181 n) (A233287 (A109613 n).toNat)

end

end A202917.P1960583960290702257

/-! ## A202917.P18396174109758113997

`gcd(A022181(A118759(n)), A233287(n+1))`
-/

namespace A202917.P18396174109758113997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022181 (A118759 n).toNat) (A233287 (n + 1))

end

end A202917.P18396174109758113997

/-! ## A202917.P8114572342546406473

`A053657(row(n)+1)/(A053657(col(n)+1)*A053657(row(n)+1-col(n)))`
-/

namespace A202917.P8114572342546406473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053657 (SequenceMachineLib.triRow n + 1) : ℚ) / (A053657 (SequenceMachineLib.triCol n + 1) * A053657 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n) : ℚ)

end

end A202917.P8114572342546406473

/-!
# A202918: Number of n X n nonnegative integer arrays with each row and column increasing from zero by 0, 1, 2 or 3.

The programs for A202918, there is no canonical definition to state claims against.
-/

/-! ## A202918.P9278592295474418471

`A202924(∑[4*n]+1)`
-/

namespace A202918.P9278592295474418471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202918.P9278592295474418471

/-! ## A202918.P9781229533475231881

`record[gcd(A166040(n), A202924(n+1))]`
-/

namespace A202918.P9781229533475231881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166040 n) (A202924 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202918.P9781229533475231881

/-!
# A202919: Number of n X 3 nonnegative integer arrays with each row and column increasing from zero by 0, 1, 2 or 3.

The programs for A202919, there is no canonical definition to state claims against.
-/

/-! ## A202919.P7287505884514672029

`A202924(∑[n+2]+4)`
-/

namespace A202919.P7287505884514672029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202919.P7287505884514672029

/-!
# A202920: Number of nX4 nonnegative integer arrays with each row and column increasing from zero by 0, 1, 2 or 3.

The programs for A202920, there is no canonical definition to state claims against.
-/

/-! ## A202920.P13570216571082924243

`A202924(A374004(n+1))`
-/

namespace A202920.P13570216571082924243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A374004 (n + 1)).toNat

end

end A202920.P13570216571082924243

/-! ## A202920.P5720026699100133539

`A202924(A141214(n+1))`
-/

namespace A202920.P5720026699100133539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A141214 (n + 1)).toNat

end

end A202920.P5720026699100133539

/-!
# A202921: Number of n X 5 nonnegative integer arrays with each row and column increasing from zero by 0, 1, 2 or 3.

The programs for A202921, there is no canonical definition to state claims against.
-/

/-! ## A202921.P17636297595141452637

`A202924(A374005(n+1))`
-/

namespace A202921.P17636297595141452637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A374005 (n + 1)).toNat

end

end A202921.P17636297595141452637

/-! ## A202921.P17381574145683517211

`A202924(Δ[A264443(n)])`
-/

namespace A202921.P17381574145683517211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (f1 (n + 1) - f1 n).toNat

end

end A202921.P17381574145683517211

/-!
# A202922: Number of nX6 nonnegative integer arrays with each row and column increasing from zero by 0, 1, 2 or 3.

The programs for A202922, there is no canonical definition to state claims against.
-/

/-! ## A202922.P8871078360001922713

`A202924(A374007(n+1))`
-/

namespace A202922.P8871078360001922713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A374007 (n + 1)).toNat

end

end A202922.P8871078360001922713

/-!
# A202923: Number of nX7 nonnegative integer arrays with each row and column increasing from zero by 0, 1, 2 or 3.

The programs for A202923, there is no canonical definition to state claims against.
-/

/-! ## A202923.P3617050803812093123

`A202924(A374008(n+1))`
-/

namespace A202923.P3617050803812093123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A374008 (n + 1)).toNat

end

end A202923.P3617050803812093123

/-!
# A202924: T(n,k)=Number of nXk nonnegative integer arrays with each row and column increasing from zero by 0, 1, 2 or 3.

The programs for A202924, there is no canonical definition to state claims against.
-/

/-! ## A202924.P11369200226561797659

`A056939(n)+A004197(A022173(n))`
-/

namespace A202924.P11369200226561797659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 n + A004197 (A022173 n).toNat

end

end A202924.P11369200226561797659

/-! ## A202924.P13979653113999410636

`A072621(A089447(n))*A140356(n)`
-/

namespace A202924.P13979653113999410636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072621 (A089447 n).toNat * A140356 n

end

end A202924.P13979653113999410636

/-! ## A202924.P9421425731419215507

`xor(A058710(A174116(n)), A089447(n))`
-/

namespace A202924.P9421425731419215507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058710 (A174116 n).toNat) (A089447 n)

end

end A202924.P9421425731419215507

/-! ## A202924.P14104080360088564834

`A004197(n)!*A072621(A089447(n))`
-/

namespace A202924.P14104080360088564834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004197 n).toNat : ℤ) * A072621 (A089447 n).toNat

end

end A202924.P14104080360088564834

/-! ## A202924.P9607451251085451487

`A072621(A089447(n))*A129192(n+1)`
-/

namespace A202924.P9607451251085451487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072621 (A089447 n).toNat * A129192 (n + 1)

end

end A202924.P9607451251085451487

/-!
# A202925: Number of nX2 0..2 arrays with adjacent row and column sums unequal.

The programs for A202925, there is no canonical definition to state claims against.
-/

/-! ## A202925.P16994439392654708599

`A202931(∑[n+1]+2)`
-/

namespace A202925.P16994439392654708599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202925.P16994439392654708599

/-! ## A202925.P17352898500324437810

`record[A202931(A038722(n+2)%A038722(n+4))]`
-/

namespace A202925.P17352898500324437810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (Int.tmod (A038722 (n + 2)) (A038722 (n + 4))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202925.P17352898500324437810

/-! ## A202925.P15383873128057729914

`record[A202931(A165157(n)+2)]`
-/

namespace A202925.P15383873128057729914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (A165157 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202925.P15383873128057729914

/-! ## A202925.P12551388460367340869

`record[A202931(Δ[A003453(n+5)])]`
-/

namespace A202925.P12551388460367340869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202925.P12551388460367340869

/-!
# A202926: Number of nX3 0..2 arrays with adjacent row and column sums unequal.

The programs for A202926, there is no canonical definition to state claims against.
-/

/-! ## A202926.P4291025197461383427

`A202931(∑[n+2]+4)`
-/

namespace A202926.P4291025197461383427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202926.P4291025197461383427

/-! ## A202926.P7801574210253855339

`record[gcd(A202931(n+4), A210485(n+1))]`
-/

namespace A202926.P7801574210253855339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202931 (n + 4)) (A210485 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202926.P7801574210253855339

/-!
# A202927: Number of nX4 0..2 arrays with adjacent row and column sums unequal.

The programs for A202927, there is no canonical definition to state claims against.
-/

/-! ## A202927.P6657224940856345877

`A202931(A374004(n+1))`
-/

namespace A202927.P6657224940856345877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (A374004 (n + 1)).toNat

end

end A202927.P6657224940856345877

/-! ## A202927.P610793956566483557

`A202931(A141214(n+1))`
-/

namespace A202927.P610793956566483557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (A141214 (n + 1)).toNat

end

end A202927.P610793956566483557

/-!
# A202928: Number of n X 5 0..2 arrays with adjacent row and column sums unequal.

The programs for A202928, there is no canonical definition to state claims against.
-/

/-! ## A202928.P4458840534359635309

`A202931(A374005(n+1))`
-/

namespace A202928.P4458840534359635309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (A374005 (n + 1)).toNat

end

end A202928.P4458840534359635309

/-!
# A202929: Number of nX6 0..2 arrays with adjacent row and column sums unequal.

The programs for A202929, there is no canonical definition to state claims against.
-/

/-! ## A202929.P12796833656203075152

`A202931(A374007(n+1))`
-/

namespace A202929.P12796833656203075152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (A374007 (n + 1)).toNat

end

end A202929.P12796833656203075152

/-!
# A202932: Number of (n+3)X(n+3) binary arrays with consecutive windows of four bits considered as a binary number nondecreasing in every row and column.

The programs for A202932, there is no canonical definition to state claims against.
-/

/-! ## A202932.P15591771715220898741

`A202939((n+1)²+n²)`
-/

namespace A202932.P15591771715220898741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 ((n + 1) ^ 2 + n ^ 2)

end

end A202932.P15591771715220898741

/-!
# A202933: Number of (n+3) X 5 binary arrays with consecutive windows of four bits considered as a binary number nondecreasing in every row and column.

The programs for A202933, there is no canonical definition to state claims against.
-/

/-! ## A202933.P15169149291216313510

`A202939(∑[n+1]+2)`
-/

namespace A202933.P15169149291216313510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202933.P15169149291216313510

/-! ## A202933.P11190323943649244781

`record[A202939(A117142(n+2))]`
-/

namespace A202933.P11190323943649244781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202933.P11190323943649244781

/-!
# A202934: Number of (n+3) X 6 binary arrays with consecutive windows of four bits considered as a binary number nondecreasing in every row and column.

The programs for A202934, there is no canonical definition to state claims against.
-/

/-! ## A202934.P344159899118770146

`A202939(∑[n+2]+4)`
-/

namespace A202934.P344159899118770146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202934.P344159899118770146

/-!
# A202935: Number of (n+3) X 7 binary arrays with consecutive windows of four bits considered as a binary number nondecreasing in every row and column.

The programs for A202935, there is no canonical definition to state claims against.
-/

/-! ## A202935.P9867986964464647471

`A202939(A374004(n+1))`
-/

namespace A202935.P9867986964464647471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A374004 (n + 1)).toNat

end

end A202935.P9867986964464647471

/-! ## A202935.P9530193465887891561

`A202939(∑[n+4]+3)`
-/

namespace A202935.P9530193465887891561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A202935.P9530193465887891561

/-!
# A202936: Number of (n+3) X 8 binary arrays with consecutive windows of four bits considered as a binary number nondecreasing in every row and column.

The programs for A202936, there is no canonical definition to state claims against.
-/

/-! ## A202936.P5360467959992526694

`A202939(∑[n+4]+11)`
-/

namespace A202936.P5360467959992526694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A202936.P5360467959992526694

/-!
# A202937: Number of (n+3) X 9 binary arrays with consecutive windows of four bits considered as a binary number nondecreasing in every row and column.

The programs for A202937, there is no canonical definition to state claims against.
-/

/-! ## A202937.P3712252644154802581

`A202939(A374007(n+1))`
-/

namespace A202937.P3712252644154802581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A374007 (n + 1)).toNat

end

end A202937.P3712252644154802581

/-!
# A202938: Number of (n+3)X10 binary arrays with consecutive windows of four bits considered as a binary number nondecreasing in every row and column.

The programs for A202938, there is no canonical definition to state claims against.
-/

/-! ## A202938.P15835667157627461933

`A202939(A374008(n+1))`
-/

namespace A202938.P15835667157627461933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A374008 (n + 1)).toNat

end

end A202938.P15835667157627461933

/-!
# A202940: Positive numbers n such that n is not a multiple of 10 and n^3 has at most three different digits.

The programs for A202940, there is no canonical definition to state claims against.
-/

/-! ## A202940.P17633140746196962789

`A385175(n+1)^(1/3)`
-/

namespace A202940.P17633140746196962789
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A385175 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A202940.P17633140746196962789

/-! ## A202940.P16129250378624989504

`∩[A030294(n+1), A067251(n+1)]`
-/

namespace A202940.P16129250378624989504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202940.P16129250378624989504

/-! ## A202940.P15183657394373293024

`record[A004151(A030294(n+2))]`
-/

namespace A202940.P15183657394373293024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A030294 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202940.P15183657394373293024

/-! ## A202940.P1286028189511013683

`filter[A030294(n+1), A168184(#)]`
-/

namespace A202940.P1286028189511013683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A202940.P1286028189511013683

/-! ## A202940.P3672911053131372079

`∩[A030294(n+1), A277061(n+1)]`
-/

namespace A202940.P3672911053131372079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202940.P3672911053131372079

/-!
# A202941: For n>=0, let n!^(2)=A202367(n+1) and, for 0<=m<=n, C^(2)(n,m)=n!^(2)/(m!^(2)*(n-m)!^(2)). The sequence gives triangle of numbers C^(2)(n,m) with rows of length n+1.

The programs for A202941, there is no canonical definition to state claims against.
-/

/-! ## A202941.P11488824209004814300

`gcd(A173008(n), A380281(n))`
-/

namespace A202941.P11488824209004814300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173008 n) (A380281 n)

end

end A202941.P11488824209004814300

/-! ## A202941.P6310890420113789043

`gcd(A008458(A022173(n)), A157641(n))`
-/

namespace A202941.P6310890420113789043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008458 (A022173 n).toNat) (A157641 n)

end

end A202941.P6310890420113789043

/-!
# A202942: G.f.: [ Sum_{n>=0} (n+1)*(n+2)/2 * 2^(n^2) * x^n ]^(1/3).

The programs for A202942, there is no canonical definition to state claims against.
-/

/-! ## A202942.P4107461561784398584

`2^n*A202943(n)`
-/

namespace A202942.P4107461561784398584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A202943 n

end

end A202942.P4107461561784398584

/-! ## A202942.P7213357435722192754

`abs(A122803(n)*A202943(n))`
-/

namespace A202942.P7213357435722192754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122803 n * A202943 n|

end

end A202942.P7213357435722192754

/-! ## A202942.P14514965622005692379

`A202943(n)/2*A000079(n+1)`
-/

namespace A202942.P14514965622005692379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202943 n : ℚ) / 2 * (A000079 (n + 1) : ℚ)

end

end A202942.P14514965622005692379

/-! ## A202942.P2351754396132221764

`A202943(n)*A213418(A000124(n))`
-/

namespace A202942.P2351754396132221764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202943 n * A213418 (A000124 n).toNat

end

end A202942.P2351754396132221764

/-! ## A202942.P77800412895156811

`A202943(n)*A267099(A000079(n))`
-/

namespace A202942.P77800412895156811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202943 n * A267099 (A000079 n).toNat

end

end A202942.P77800412895156811

/-!
# A202943: G.f.: [ Sum_{n>=0} (n+1)*(n+2)/2 * 2^(n*(n-1)) * x^n ]^(1/3).

The programs for A202943, there is no canonical definition to state claims against.
-/

/-! ## A202943.P15951765643903777225

`A202942(n)/2^n`
-/

namespace A202943.P15951765643903777225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202942 n : ℚ) / (2 ^ n : ℚ)

end

end A202943.P15951765643903777225

/-! ## A202943.P909726709133326659

`abs(A202942(n)/A122803(n))`
-/

namespace A202943.P909726709133326659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A202942 n : ℚ) / (A122803 n : ℚ)|

end

end A202943.P909726709133326659

/-!
# A202944: G.f.: Sum_{n>=0} (n+1)*(n+2)/2 * 2^(n*(n-1)) * x^n.

The programs for A202944, the canonical program `A202944.P8343165807337394897` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202944 has offset 0).

The definition of A202944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202944.P8343165807337394897

`(n+1)*(n+2)/2*2^(n*(n-1))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A202944

/-- `(n+1)*(n+2)/2*2^(n*(n-1))` -/
def P8343165807337394897.Spec : Prop :=
  ∀ n, P8343165807337394897.a n = (A202944 n : ℚ)

end A202944

/-! ## A202944.P4962052102154327478

`4^C(n, 2)*∑[n+1]`
-/

namespace A202944.P4962052102154327478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202944.P4962052102154327478

namespace A202944

/-- `4^C(n, 2)*∑[n+1]` -/
def P4962052102154327478.Spec : Prop :=
  ∀ n, (P4962052102154327478.a n : ℤ) = A202944 n

end A202944

/-! ## A202944.P4130844389415287959

`(n+1)*A053763(n)*(n+2)/2`
-/

namespace A202944.P4130844389415287959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A053763 n * (n + 2 : ℤ) : ℚ) / 2

end

end A202944.P4130844389415287959

namespace A202944

/-- `(n+1)*A053763(n)*(n+2)/2` -/
def P4130844389415287959.Spec : Prop :=
  ∀ n, P4130844389415287959.a n = (A202944 n : ℚ)

end A202944

/-! ## A202944.P17782840982040522987

`∏[A045891(2*n)/A028310(n)]`
-/

namespace A202944.P17782840982040522987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045891 (2 * n) : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A202944.P17782840982040522987

namespace A202944

/-- `∏[A045891(2*n)/A028310(n)]` -/
def P17782840982040522987.Spec : Prop :=
  ∀ n, P17782840982040522987.a n = (A202944 n : ℚ)

end A202944

/-! ## A202944.P9217994212383664903

`∏[A045891(2*n)/A123108(2*n)]`
-/

namespace A202944.P9217994212383664903
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045891 (2 * n) : ℚ) / (A123108 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A202944.P9217994212383664903

namespace A202944

/-- `∏[A045891(2*n)/A123108(2*n)]` -/
def P9217994212383664903.Spec : Prop :=
  ∀ n, P9217994212383664903.a n = (A202944 n : ℚ)

end A202944

/-!
# A202945: v(n+1)/v(n), where v=A203773.

The programs for A202945, there is no canonical definition to state claims against.
-/

/-! ## A202945.P9794839809067899840

`ratio[A203773(n+1)]`
-/

namespace A202945.P9794839809067899840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203773 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A202945.P9794839809067899840

/-! ## A202945.P11169297961605722414

`record[ratio[A203773(A008619(n))]]`
-/

namespace A202945.P11169297961605722414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203773 (A008619 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202945.P11169297961605722414

/-! ## A202945.P5990527219399846261

`record[ratio[A203773(A261585(n))]]`
-/

namespace A202945.P5990527219399846261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203773 (A261585 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202945.P5990527219399846261

/-! ## A202945.P18093219022189158045

`A203773(n+2)/A203773(n+1)`
-/

namespace A202945.P18093219022189158045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203773 (n + 2) : ℚ) / (A203773 (n + 1) : ℚ)

end

end A202945.P18093219022189158045

/-!
# A202946: a(n+1) = 6*A060544(n)*a(n).

The programs for A202946, there is no canonical definition to state claims against.
-/

/-! ## A202946.P9763303968797195895

`6*C(3*n-1, 2)*a(n-1)` with `a(0)=3`
-/

namespace A202946.P9763303968797195895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  6 * (Nat.choose ((3 * n : ℤ) - 1).toNat 2 * a (n - 1))

end

end A202946.P9763303968797195895

/-! ## A202946.P960998827044602107

`3*((n-1)*9*n+2)*a(n-1)` with `a(0)=3`
-/

namespace A202946.P960998827044602107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * ((((n : ℤ) - 1) * (9 * n : ℤ) + 2) * a (n - 1))

end

end A202946.P960998827044602107

/-! ## A202946.P1823538167458839916

`3*(3*n-1)*(3*n-2)*a(n-1)` with `a(0)=3`
-/

namespace A202946.P1823538167458839916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * (((3 * n : ℤ) - 1) * (((3 * n : ℤ) - 2) * a (n - 1)))

end

end A202946.P1823538167458839916

/-! ## A202946.P10003362476724357642

`3*A064350(n)`
-/

namespace A202946.P10003362476724357642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A064350 n

end

end A202946.P10003362476724357642

/-! ## A202946.P16720647092772501720

`record[3*A101109(n)]`
-/

namespace A202946.P16720647092772501720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A101109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202946.P16720647092772501720

/-!
# A202948: a(n+1) = 3*A136016*a(n).

The programs for A202948, there is no canonical definition to state claims against.
-/

/-! ## A202948.P8002261211835205424

`∏[27*n²-3]`
-/

namespace A202948.P8002261211835205424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 * n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A202948.P8002261211835205424

/-! ## A202948.P10310696095611154664

`-(A343445(n+1)*A343445(n+2))`
-/

namespace A202948.P10310696095611154664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A343445 (n + 1) * A343445 (n + 2))

end

end A202948.P10310696095611154664

/-! ## A202948.P1329810482609837436

`-(A007680(A016777(n))/A007680(n))`
-/

namespace A202948.P1329810482609837436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A007680 (A016777 n).toNat : ℚ) / (A007680 n : ℚ))

end

end A202948.P1329810482609837436

/-! ## A202948.P5779416174989522755

`-(A052560(A016777(n))/A000142(n))`
-/

namespace A202948.P5779416174989522755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A052560 (A016777 n).toNat : ℚ) / (A000142 n : ℚ))

end

end A202948.P5779416174989522755

/-!
# A202950: a(n) = Sum_{k=0..n} (2*n-k)!*2^(k-n)/k!.

The programs for A202950, the canonical program `A202950.P9038325874793479011` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202950 has offset 0).

The definition of A202950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202950.P9038325874793479011

`∑{#}[n, (2*n-#)!*2^(#-n)/#!]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A202950

/-- `∑{#}[n, (2*n-#)!*2^(#-n)/#!]` -/
def P9038325874793479011.Spec : Prop :=
  ∀ n, P9038325874793479011.a n = (A202950 n : ℚ)

end A202950

/-! ## A202950.P1914239446783590281

`∑{#}[n, (2*n-#)!/(2^(n-#)*#!)]`
-/

namespace A202950.P1914239446783590281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial ((2 * n : ℤ) - (k : ℤ)).toNat : ℚ) / ((2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.factorial k : ℚ))

end

end A202950.P1914239446783590281

namespace A202950

/-- `∑{#}[n, (2*n-#)!/(2^(n-#)*#!)]` -/
def P1914239446783590281.Spec : Prop :=
  ∀ n, P1914239446783590281.a n = (A202950 n : ℚ)

end A202950

/-!
# A202952: a(n) = A108235(n) - A004075(n).

The programs for A202952, there is no canonical definition to state claims against.
-/

/-! ## A202952.P4285317965085595054

`A108235(n)-A004075(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A202952.P4285317965085595054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108235 n - A004075 n

end

end A202952.P4285317965085595054

/-!
# A202956: Number of arrays of n+2 integers in -2..2 with sum zero and adjacent elements differing in absolute value.

The programs for A202956, there is no canonical definition to state claims against.
-/

/-! ## A202956.P15327713362216630655

`A202962(∑[n+2])`
-/

namespace A202956.P15327713362216630655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202956.P15327713362216630655

/-! ## A202956.P5554780996031454313

`record[A202962(A000096(A065648(n)))]`
-/

namespace A202956.P5554780996031454313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000096 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202956.P5554780996031454313

/-! ## A202956.P14368733205704753576

`record[A202962(A000096(A344180(n)))]`
-/

namespace A202956.P14368733205704753576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202956.P14368733205704753576

/-! ## A202956.P5665763288674764142

`record[A202962(A000096(A003602(n+1)))]`
-/

namespace A202956.P5665763288674764142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202956.P5665763288674764142

/-! ## A202956.P3397235994278521058

`record[A202962(A000096(A004737(n+1)))]`
-/

namespace A202956.P3397235994278521058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000096 (A004737 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202956.P3397235994278521058

/-! ## A202956.P3010780967638478500

`record[A202962(A000096(A274651(n+1)))]`
-/

namespace A202956.P3010780967638478500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000096 (A274651 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202956.P3010780967638478500

/-! ## A202956.P11227339683698079807

`record[A202962(A000096(A291761(n+1)))]`
-/

namespace A202956.P11227339683698079807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000096 (A291761 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202956.P11227339683698079807

/-! ## A202956.P180157780698024713

`record[A202962(A000096(A319701(n+1)))]`
-/

namespace A202956.P180157780698024713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000096 (A319701 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202956.P180157780698024713

/-!
# A202957: Number of arrays of n+2 integers in -3..3 with sum zero and adjacent elements differing in absolute value.

The programs for A202957, there is no canonical definition to state claims against.
-/

/-! ## A202957.P1426129696568272533

`A202962(∑[n+3]+1)`
-/

namespace A202957.P1426129696568272533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202957.P1426129696568272533

/-!
# A202958: Number of arrays of n+2 integers in -4..4 with sum zero and adjacent elements differing in absolute value.

The programs for A202958, there is no canonical definition to state claims against.
-/

/-! ## A202958.P9566109059962286704

`A202962(∑[n+3]+n+4)`
-/

namespace A202958.P9566109059962286704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A202958.P9566109059962286704

/-!
# A202959: Number of arrays of n+2 integers in -5..5 with sum zero and adjacent elements differing in absolute value.

The programs for A202959, there is no canonical definition to state claims against.
-/

/-! ## A202959.P14276780753585223066

`A202962(A046691(n+3))`
-/

namespace A202959.P14276780753585223066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A046691 (n + 3)).toNat

end

end A202959.P14276780753585223066

/-!
# A202960: Number of arrays of n+2 integers in -6..6 with sum zero and adjacent elements differing in absolute value.

The programs for A202960, there is no canonical definition to state claims against.
-/

/-! ## A202960.P596249211117224547

`A202962(eq[5, A193592(n)])`
-/

namespace A202960.P596249211117224547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202960.P596249211117224547

/-!
# A202961: Number of arrays of n+2 integers in -7..7 with sum zero and adjacent elements differing in absolute value.

The programs for A202961, there is no canonical definition to state claims against.
-/

/-! ## A202961.P8979873431372032055

`A202962(A055999(n+4))`
-/

namespace A202961.P8979873431372032055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A055999 (n + 4)).toNat

end

end A202961.P8979873431372032055

/-!
# A202963: Number of arrays of 3 integers in -n..n with sum zero and adjacent elements differing in absolute value.

The programs for A202963, the canonical program `A202963.P15355723799365847312` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202963 has offset 1).

The definition of A202963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202963.P15355723799365847312

`∑[xor(2, 6*n)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A202963

/-- `∑[xor(2, 6*n)]` -/
def P15355723799365847312.Spec : Prop :=
  ∀ n, (P15355723799365847312.a n : ℤ) = A202963 (n + 1)

theorem P15355723799365847312.correct : P15355723799365847312.Spec := by
  intro n
  simp only [A202963, Nat.add_sub_cancel]

end A202963

/-! ## A202963.P17692959138503575375

`Δ[or(1, 1+n^3)]`
-/

namespace A202963.P17692959138503575375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (1 + n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A202963.P17692959138503575375

namespace A202963

/-- `Δ[or(1, 1+n^3)]` -/
def P17692959138503575375.Spec : Prop :=
  ∀ n, P17692959138503575375.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P7937806770653848147

`Δ[n%2+n^3]`
-/

namespace A202963.P7937806770653848147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A202963.P7937806770653848147

namespace A202963

/-- `Δ[n%2+n^3]` -/
def P7937806770653848147.Spec : Prop :=
  ∀ n, P7937806770653848147.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P9963035910623697166

`Δ[n^3-gcd(2, n)]`
-/

namespace A202963.P9963035910623697166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202963.P9963035910623697166

namespace A202963

/-- `Δ[n^3-gcd(2, n)]` -/
def P9963035910623697166.Spec : Prop :=
  ∀ n, P9963035910623697166.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P1349959934007913499

`Δ[and(1, n)+n^3]`
-/

namespace A202963.P1349959934007913499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A202963.P1349959934007913499

namespace A202963

/-- `Δ[and(1, n)+n^3]` -/
def P1349959934007913499.Spec : Prop :=
  ∀ n, P1349959934007913499.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P6843619412916646270

`Δ[-or(1, -n^3)]`
-/

namespace A202963.P6843619412916646270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(n ^ 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202963.P6843619412916646270

namespace A202963

/-- `Δ[-or(1, -n^3)]` -/
def P6843619412916646270.Spec : Prop :=
  ∀ n, P6843619412916646270.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P13185500920823939803

`∑[a(n-2)+12]` with `a(0)=2, a(1)=4`
-/

namespace A202963.P13185500920823939803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202963.P13185500920823939803

namespace A202963

/-- `∑[a(n-2)+12]` -/
def P13185500920823939803.Spec : Prop :=
  ∀ n, (P13185500920823939803.a n : ℤ) = A202963 (n + 1)

end A202963

/-! ## A202963.P1191702316328006620

`2*Δ[ceil(n^3/2)]`
-/

namespace A202963.P1191702316328006620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 3 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A202963.P1191702316328006620

namespace A202963

/-- `2*Δ[ceil(n^3/2)]` -/
def P1191702316328006620.Spec : Prop :=
  ∀ n, P1191702316328006620.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P1409468715295953609

`∑[∑[12-a(n-1)]]` with `a(0)=2, a(1)=2`
-/

namespace A202963.P1409468715295953609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  12 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202963.P1409468715295953609

namespace A202963

/-- `∑[∑[12-a(n-1)]]` -/
def P1409468715295953609.Spec : Prop :=
  ∀ n, P1409468715295953609.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P9312464240426025246

`Δ[n^3-and(1, n-1)]`
-/

namespace A202963.P9312464240426025246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - Int.land 1 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202963.P9312464240426025246

namespace A202963

/-- `Δ[n^3-and(1, n-1)]` -/
def P9312464240426025246.Spec : Prop :=
  ∀ n, P9312464240426025246.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P9043527368854871506

`abs(Δ[or(1, n*n²-1)])`
-/

namespace A202963.P9043527368854871506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n * n ^ 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A202963.P9043527368854871506

namespace A202963

/-- `abs(Δ[or(1, n*n²-1)])` -/
def P9043527368854871506.Spec : Prop :=
  ∀ n, P9043527368854871506.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P14032273290152795699

`ogf((2+2x+8x^2)/(1-2x+2x^3-x^4))`
-/

namespace A202963.P14032273290152795699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 8] [1, -2, 0, 2, -1] n

end

end A202963.P14032273290152795699

namespace A202963

/-- `ogf((2+2x+8x^2)/(1-2x+2x^3-x^4))` -/
def P14032273290152795699.Spec : Prop :=
  ∀ n, P14032273290152795699.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P17499901361454629012

`a(n-1)+xor(2, 6*n)` with `a(0)=2`
-/

namespace A202963.P17499901361454629012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Nat.xor 2 (6 * n)

end

end A202963.P17499901361454629012

namespace A202963

/-- `a(n-1)+xor(2, 6*n)` -/
def P17499901361454629012.Spec : Prop :=
  ∀ n, (P17499901361454629012.a n : ℤ) = A202963 (n + 1)

end A202963

/-! ## A202963.P1795261218084722297

`6*n²+2-a(n-1)` with `a(0)=2`
-/

namespace A202963.P1795261218084722297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (6 * n ^ 2 : ℤ) + (2 - a (n - 1))

end

end A202963.P1795261218084722297

namespace A202963

/-- `6*n²+2-a(n-1)` -/
def P1795261218084722297.Spec : Prop :=
  ∀ n, P1795261218084722297.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P8600060406056724149

`2-(a(n-1)-6*n²)` with `a(0)=2`
-/

namespace A202963.P8600060406056724149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (a (n - 1) - (6 * n ^ 2 : ℤ))

end

end A202963.P8600060406056724149

namespace A202963

/-- `2-(a(n-1)-6*n²)` -/
def P8600060406056724149.Spec : Prop :=
  ∀ n, P8600060406056724149.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P12578799439348460808

`∑[2*(2*or(1, n)+n-1)]`
-/

namespace A202963.P12578799439348460808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * Nat.lor 1 n : ℤ) + ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202963.P12578799439348460808

namespace A202963

/-- `∑[2*(2*or(1, n)+n-1)]` -/
def P12578799439348460808.Spec : Prop :=
  ∀ n, P12578799439348460808.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P3657103831261126929

`2*or(1, n)+3*n²+n`
-/

namespace A202963.P3657103831261126929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n + 3 * n ^ 2 + n

end

end A202963.P3657103831261126929

namespace A202963

/-- `2*or(1, n)+3*n²+n` -/
def P3657103831261126929.Spec : Prop :=
  ∀ n, (P3657103831261126929.a n : ℤ) = A202963 (n + 1)

end A202963

/-! ## A202963.P11686261140448363020

`Δ[gcd(n+1, n+3)+n^3]`
-/

namespace A202963.P11686261140448363020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n + 3) + n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A202963.P11686261140448363020

namespace A202963

/-- `Δ[gcd(n+1, n+3)+n^3]` -/
def P11686261140448363020.Spec : Prop :=
  ∀ n, P11686261140448363020.a n = A202963 (n + 1)

end A202963

/-! ## A202963.P17670886323918518862

`xor(1, C(2*n+1, 2))+(n+1)²`
-/

namespace A202963.P17670886323918518862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.choose (2 * n + 1) 2) + (n + 1) ^ 2

end

end A202963.P17670886323918518862

namespace A202963

/-- `xor(1, C(2*n+1, 2))+(n+1)²` -/
def P17670886323918518862.Spec : Prop :=
  ∀ n, (P17670886323918518862.a n : ℤ) = A202963 (n + 1)

end A202963

/-! ## A202963.P13033900410341656986

`xor(1, n*(2*n+1))+(n+1)²`
-/

namespace A202963.P13033900410341656986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (2 * n + 1)) + (n + 1) ^ 2

end

end A202963.P13033900410341656986

namespace A202963

/-- `xor(1, n*(2*n+1))+(n+1)²` -/
def P13033900410341656986.Spec : Prop :=
  ∀ n, (P13033900410341656986.a n : ℤ) = A202963 (n + 1)

end A202963

/-!
# A202964: Number of arrays of 4 integers in -n..n with sum zero and adjacent elements differing in absolute value.

The programs for A202964, the canonical program `A202964.P9492632001918835898` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202964 has offset 1).

The definition of A202964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202964.P11220147102843909743

`ogf((4+16x+36x^2+20x^3+20x^4)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`
-/

namespace A202964.P11220147102843909743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 16, 36, 20, 20] [1, -3, 3, -2, 3, -3, 1] n

end

end A202964.P11220147102843909743

namespace A202964

/-- `ogf((4+16x+36x^2+20x^3+20x^4)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` -/
def P11220147102843909743.Spec : Prop :=
  ∀ n, P11220147102843909743.a n = A202964 (n + 1)

end A202964

/-! ## A202964.P9492632001918835898

`A114254(n)+or(3, A131452(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A202964

/-- `A114254(n)+or(3, A131452(n+1))` -/
def P9492632001918835898.Spec : Prop :=
  ∀ n, P9492632001918835898.a n = A202964 (n + 1)

theorem P9492632001918835898.correct : P9492632001918835898.Spec := by
  intro n
  simp only [A202964, Nat.add_sub_cancel]

end A202964

/-! ## A202964.P11496801247809947009

`A199706(n+1)-A046092(2*n+1)`
-/

namespace A202964.P11496801247809947009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199706 (n + 1) - A046092 (2 * n + 1)

end

end A202964.P11496801247809947009

namespace A202964

/-- `A199706(n+1)-A046092(2*n+1)` -/
def P11496801247809947009.Spec : Prop :=
  ∀ n, P11496801247809947009.a n = A202964 (n + 1)

end A202964

/-! ## A202964.P15934342124133453323

`4*(A219054(n+1)+A002264(n+1))-A046092(A005408(n))`
-/

namespace A202964.P15934342124133453323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A219054 (n + 1) + A002264 (n + 1)) - A046092 (A005408 n).toNat

end

end A202964.P15934342124133453323

namespace A202964

/-- `4*(A219054(n+1)+A002264(n+1))-A046092(A005408(n))` -/
def P15934342124133453323.Spec : Prop :=
  ∀ n, P15934342124133453323.a n = A202964 (n + 1)

end A202964

/-! ## A202964.P789468797474875321

`A063942(4*n+1)+∑[A027689(4*n)]`
-/

namespace A202964.P789468797474875321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (4 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202964.P789468797474875321

namespace A202964

/-- `A063942(4*n+1)+∑[A027689(4*n)]` -/
def P789468797474875321.Spec : Prop :=
  ∀ n, P789468797474875321.a n = A202964 (n + 1)

end A202964

/-! ## A202964.P8793108194467465754

`∑[A027689(4*n)]+4*(n-A004396(n))`
-/

namespace A202964.P8793108194467465754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * ((n : ℤ) - A004396 n)

end

end A202964.P8793108194467465754

namespace A202964

/-- `∑[A027689(4*n)]+4*(n-A004396(n))` -/
def P8793108194467465754.Spec : Prop :=
  ∀ n, P8793108194467465754.a n = A202964 (n + 1)

end A202964

/-! ## A202964.P14329751854953634401

`A202962(∑[n+1]+2)`
-/

namespace A202964.P14329751854953634401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202964.P14329751854953634401

namespace A202964

/-- `A202962(∑[n+1]+2)` -/
def P14329751854953634401.Spec : Prop :=
  ∀ n, P14329751854953634401.a n = A202964 (n + 1)

end A202964

/-!
# A202965: Number of arrays of 5 integers in -n..n with sum zero and adjacent elements differing in absolute value.

The programs for A202965, there is no canonical definition to state claims against.
-/

/-! ## A202965.P2024746024790796843

`A202962(∑[n+2]+4)`
-/

namespace A202965.P2024746024790796843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202965.P2024746024790796843

/-!
# A202966: Number of arrays of 6 integers in -n..n with sum zero and adjacent elements differing in absolute value.

The programs for A202966, there is no canonical definition to state claims against.
-/

/-! ## A202966.P3253345710001488855

`A202962(A145018(n+4))`
-/

namespace A202966.P3253345710001488855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A145018 (n + 4)).toNat

end

end A202966.P3253345710001488855

/-!
# A202967: Number of arrays of 7 integers in -n..n with sum zero and adjacent elements differing in absolute value.

The programs for A202967, there is no canonical definition to state claims against.
-/

/-! ## A202967.P4447799908037220871

`A202962(A167499(n+3))`
-/

namespace A202967.P4447799908037220871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A167499 (n + 3)).toNat

end

end A202967.P4447799908037220871

/-!
# A202968: Number of arrays of 8 integers in -n..n with sum zero and adjacent elements differing in absolute value.

The programs for A202968, there is no canonical definition to state claims against.
-/

/-! ## A202968.P15801409491911726368

`A202962(A166136(n+4))`
-/

namespace A202968.P15801409491911726368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A166136 (n + 4)).toNat

end

end A202968.P15801409491911726368

/-!
# A202969: Number of arrays of 9 integers in -n..n with sum zero and adjacent elements differing in absolute value.

The programs for A202969, there is no canonical definition to state claims against.
-/

/-! ## A202969.P410252926862998109

`A202962(A167487(n+5))`
-/

namespace A202969.P410252926862998109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A167487 (n + 5)).toNat

end

end A202969.P410252926862998109

/-!
# A202971: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of the symmetric matrix A202970; by antidiagonals.

The programs for A202971, there is no canonical definition to state claims against.
-/

/-! ## A202971.P3337571033520703121

`A202678(n+1)-A110193(A110160(n))`
-/

namespace A202971.P3337571033520703121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202678 (n + 1) - A110193 (A110160 n).toNat

end

end A202971.P3337571033520703121

/-!
# A202972: Number of n X n 0..1 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A202972, there is no canonical definition to state claims against.
-/

/-! ## A202972.P3048092781898770

`A202979(∑[4*n]+1)`
-/

namespace A202972.P3048092781898770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202972.P3048092781898770

/-! ## A202972.P6570205206633809319

`record[A202979(Δ[A235355(n)])]`
-/

namespace A202972.P6570205206633809319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202972.P6570205206633809319

/-! ## A202972.P476222445989319742

`record[A003982(n)*A202979(n+1)]`
-/

namespace A202972.P476222445989319742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A202979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202972.P476222445989319742

/-! ## A202972.P12828789116382869458

`record[gcd(A049581(n), A202979(n+1))]`
-/

namespace A202972.P12828789116382869458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A202979 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202972.P12828789116382869458

/-!
# A202973: Number of n X 2 0..1 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A202973, the canonical program `A202973.P10086515228712306167` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202973 has offset 1).

The definition of A202973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202973.P6865627319652298639

`ogf((1-x-3x^3-x^4)/(1-3x+2x^2-2x^3+2x^4+x^5))`
-/

namespace A202973.P6865627319652298639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -3, -1] [1, -3, 2, -2, 2, 1] n

end

end A202973.P6865627319652298639

namespace A202973

/-- `ogf((1-x-3x^3-x^4)/(1-3x+2x^2-2x^3+2x^4+x^5))` -/
def P6865627319652298639.Spec : Prop :=
  ∀ n, P6865627319652298639.a n = A202973 (n + 1)

end A202973

/-! ## A202973.P10086515228712306167

`3*a(n-1)-2*a(n-2)+2*a(n-3)-2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=14`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A202973

/-- `3*a(n-1)-2*a(n-2)+2*a(n-3)-2*a(n-4)-a(n-5)` -/
def P10086515228712306167.Spec : Prop :=
  ∀ n, P10086515228712306167.a n = A202973 (n + 1)

theorem P10086515228712306167.correct : P10086515228712306167.Spec := by
  intro n
  simp only [A202973, Nat.add_sub_cancel]

end A202973

/-! ## A202973.P18290543434378390668

`record[ratio[A202979(n+1)]]`
-/

namespace A202973.P18290543434378390668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202973.P18290543434378390668

namespace A202973

/-- `record[ratio[A202979(n+1)]]` -/
def P18290543434378390668.Spec : Prop :=
  ∀ n, P18290543434378390668.a n = (A202973 (n + 1) : ℚ)

end A202973

/-! ## A202973.P75796580426337495

`A202979(∑[n+1]+2)`
-/

namespace A202973.P75796580426337495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202973.P75796580426337495

namespace A202973

/-- `A202979(∑[n+1]+2)` -/
def P75796580426337495.Spec : Prop :=
  ∀ n, P75796580426337495.a n = A202973 (n + 1)

end A202973

/-! ## A202973.P8223356885362777354

`record[ratio[A295213(n+1)]]`
-/

namespace A202973.P8223356885362777354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202973.P8223356885362777354

namespace A202973

/-- `record[ratio[A295213(n+1)]]` -/
def P8223356885362777354.Spec : Prop :=
  ∀ n, P8223356885362777354.a n = (A202973 (n + 1) : ℚ)

end A202973

/-!
# A202974: Number of n X 3 0..1 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A202974, the canonical program `A202974.P6703915930767494188` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202974 has offset 1).

The definition of A202974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202974.P6703915930767494188

`ogf((1-2x+4x^2-16x^3+4x^4+x^5-10x^6+4x^7+8x^8+2x^9)/(1-6x+11x^2-16x^3+14x^4+3x^5-8x^6+9x^7+2x^8-6x^9-2x^10))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A202974

/-- `ogf((1-2x+4x^2-16x^3+4x^4+x^5-10x^6+4x^7+8x^8+2x^9)/(1-6x+11x^2-16x^3+14x^4+3x^5-8x^6+9x^7+2x^8-6x^9-2x^10))` -/
def P6703915930767494188.Spec : Prop :=
  ∀ n, P6703915930767494188.a n = A202974 (n + 1)

theorem P6703915930767494188.correct : P6703915930767494188.Spec := by
  intro n
  simp only [A202974, Nat.add_sub_cancel]

end A202974

/-! ## A202974.P8852942305462502904

`A202979(∑[n+2]+4)`
-/

namespace A202974.P8852942305462502904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202974.P8852942305462502904

namespace A202974

/-- `A202979(∑[n+2]+4)` -/
def P8852942305462502904.Spec : Prop :=
  ∀ n, P8852942305462502904.a n = A202974 (n + 1)

end A202974

/-!
# A202975: Number of nX4 0..1 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A202975, there is no canonical definition to state claims against.
-/

/-! ## A202975.P3642578903679407224

`A202979(A141214(n)+7)`
-/

namespace A202975.P3642578903679407224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A141214 n + 7).toNat

end

end A202975.P3642578903679407224

/-! ## A202975.P5469107676305619678

`A202979(A141214(n+1))`
-/

namespace A202975.P5469107676305619678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A141214 (n + 1)).toNat

end

end A202975.P5469107676305619678

/-!
# A202976: Number of nX5 0..1 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A202976, there is no canonical definition to state claims against.
-/

/-! ## A202976.P9314573726182808898

`A202979(A056000(n)+15)`
-/

namespace A202976.P9314573726182808898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A056000 n + 15).toNat

end

end A202976.P9314573726182808898

/-! ## A202976.P2346989823964397260

`A202979(Δ[A264443(n)])`
-/

namespace A202976.P2346989823964397260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (f1 (n + 1) - f1 n).toNat

end

end A202976.P2346989823964397260

/-!
# A202977: Number of nX6 0..1 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A202977, there is no canonical definition to state claims against.
-/

/-! ## A202977.P18308417099831038830

`A202979(∑[A020710(n)]+16)`
-/

namespace A202977.P18308417099831038830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A202977.P18308417099831038830

/-! ## A202977.P13588645734353729038

`A202979(A374007(n+1))`
-/

namespace A202977.P13588645734353729038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A374007 (n + 1)).toNat

end

end A202977.P13588645734353729038

/-!
# A202978: Number of n X 7 0..1 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A202978, there is no canonical definition to state claims against.
-/

/-! ## A202978.P9930534387785418546

`A202979(A046691(n+4)+11)`
-/

namespace A202978.P9930534387785418546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A046691 (n + 4) + 11).toNat

end

end A202978.P9930534387785418546

/-! ## A202978.P11164574659857955816

`A202979(A374008(n+1))`
-/

namespace A202978.P11164574659857955816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A374008 (n + 1)).toNat

end

end A202978.P11164574659857955816

/-!
# A202979: T(n,k)=Number of nXk 0..1 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A202979, there is no canonical definition to state claims against.
-/

/-! ## A202979.P3949053333632972286

`A005793(A156916(n))`
-/

namespace A202979.P3949053333632972286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005793 (A156916 n).toNat

end

end A202979.P3949053333632972286

/-! ## A202979.P3271359623857452517

`A097561(A086645(n))`
-/

namespace A202979.P3271359623857452517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097561 (A086645 n).toNat

end

end A202979.P3271359623857452517

/-! ## A202979.P7209335745112844447

`A085761(A157640(n))`
-/

namespace A202979.P7209335745112844447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085761 (A157640 n).toNat

end

end A202979.P7209335745112844447

/-! ## A202979.P9076648320180659185

`A107631(A174035(n))`
-/

namespace A202979.P9076648320180659185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (A174035 n).toNat

end

end A202979.P9076648320180659185

/-! ## A202979.P14211419140416278432

`A117171(A176331(n))`
-/

namespace A202979.P14211419140416278432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117171 (A176331 n).toNat

end

end A202979.P14211419140416278432

/-!
# A202981: Number of n X n 0..2 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A202981, there is no canonical definition to state claims against.
-/

/-! ## A202981.P1151455537283998080

`A202988(∑[4*n]+1)`
-/

namespace A202981.P1151455537283998080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202981.P1151455537283998080

/-!
# A202982: Number of n X 2 0..2 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A202982, the canonical program `A202982.P18026739318958444025` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202982 has offset 1).

The definition of A202982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202982.P18026739318958444025

`ogf((1+10x^2-52x^3+48x^4-29x^5+25x^6)/(1-9x+28x^2-60x^3+102x^4-84x^5+44x^6-25x^7))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A202982

/-- `ogf((1+10x^2-52x^3+48x^4-29x^5+25x^6)/(1-9x+28x^2-60x^3+102x^4-84x^5+44x^6-25x^7))` -/
def P18026739318958444025.Spec : Prop :=
  ∀ n, P18026739318958444025.a n = A202982 (n + 1)

theorem P18026739318958444025.correct : P18026739318958444025.Spec := by
  intro n
  simp only [A202982, Nat.add_sub_cancel]

end A202982

/-! ## A202982.P14226469322822314689

`record[ratio[A202988(n+1)]]`
-/

namespace A202982.P14226469322822314689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202982.P14226469322822314689

namespace A202982

/-- `record[ratio[A202988(n+1)]]` -/
def P14226469322822314689.Spec : Prop :=
  ∀ n, P14226469322822314689.a n = (A202982 (n + 1) : ℚ)

end A202982

/-! ## A202982.P4050245791344315232

`A202988(∑[n+1]+2)`
-/

namespace A202982.P4050245791344315232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202982.P4050245791344315232

namespace A202982

/-- `A202988(∑[n+1]+2)` -/
def P4050245791344315232.Spec : Prop :=
  ∀ n, P4050245791344315232.a n = A202982 (n + 1)

end A202982

/-! ## A202982.P9434407750793740891

`record[root(A202988(n+1), A065941(n))]`
-/

namespace A202982.P9434407750793740891
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202988 (n + 1) : ℝ) ^ (1 / (A065941 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202982.P9434407750793740891

namespace A202982

/-- `record[root(A202988(n+1), A065941(n))]` -/
def P9434407750793740891.Spec : Prop :=
  ∀ n, P9434407750793740891.a n = (A202982 (n + 1) : ℝ)

end A202982

/-! ## A202982.P1300970085608707482

`record[root(A202988(n+2), A046854(n))]`
-/

namespace A202982.P1300970085608707482
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202988 (n + 2) : ℝ) ^ (1 / (A046854 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202982.P1300970085608707482

namespace A202982

/-- `record[root(A202988(n+2), A046854(n))]` -/
def P1300970085608707482.Spec : Prop :=
  ∀ n, P1300970085608707482.a n = (A202982 (n + 1) : ℝ)

end A202982

/-!
# A202983: Number of nX3 0..2 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A202983, there is no canonical definition to state claims against.
-/

/-! ## A202983.P4375696918212686537

`A202988(∑[n+2]+4)`
-/

namespace A202983.P4375696918212686537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202983.P4375696918212686537

/-!
# A202984: Number of nX4 0..2 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A202984, there is no canonical definition to state claims against.
-/

/-! ## A202984.P16023098804385679027

`A202988(A374004(n+1))`
-/

namespace A202984.P16023098804385679027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A374004 (n + 1)).toNat

end

end A202984.P16023098804385679027

/-! ## A202984.P8799887879209495315

`A202988(A141214(n+1))`
-/

namespace A202984.P8799887879209495315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A141214 (n + 1)).toNat

end

end A202984.P8799887879209495315

/-!
# A202985: Number of nX5 0..2 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A202985, there is no canonical definition to state claims against.
-/

/-! ## A202985.P14408804425646742661

`A202988(A374005(n+1))`
-/

namespace A202985.P14408804425646742661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A374005 (n + 1)).toNat

end

end A202985.P14408804425646742661

/-!
# A202986: Number of nX6 0..2 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A202986, there is no canonical definition to state claims against.
-/

/-! ## A202986.P17294992240671583893

`A202988(A374007(n+1))`
-/

namespace A202986.P17294992240671583893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A374007 (n + 1)).toNat

end

end A202986.P17294992240671583893

/-!
# A202987: Number of nX7 0..2 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A202987, there is no canonical definition to state claims against.
-/

/-! ## A202987.P8710382957814589016

`A202988(A374008(n+1))`
-/

namespace A202987.P8710382957814589016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A374008 (n + 1)).toNat

end

end A202987.P8710382957814589016

/-!
# A202988: T(n,k)=Number of nXk 0..2 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A202988, there is no canonical definition to state claims against.
-/

/-! ## A202988.P5300186552661154867

`A178215(A157221(n))-1`
-/

namespace A202988.P5300186552661154867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178215 (A157221 n).toNat - 1

end

end A202988.P5300186552661154867

/-! ## A202988.P15130607275394910513

`A230772(3*A174673(n))`
-/

namespace A202988.P15130607275394910513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (3 * A174673 n).toNat

end

end A202988.P15130607275394910513

/-! ## A202988.P12800879472891427811

`A050271(2*A157221(n)-1)`
-/

namespace A202988.P12800879472891427811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050271 (2 * A157221 n - 1).toNat

end

end A202988.P12800879472891427811

/-!
# A202989: E.g.f: Sum_{n>=0} 3^(n^2) * exp(3^n*x) * x^n/n!.

The programs for A202989, the canonical program `A202989.P13721506249447940972` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202989 has offset 0).

The definition of A202989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202989.P13721506249447940972

`(3^n+1)^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A202989

/-- `(3^n+1)^n` -/
def P13721506249447940972.Spec : Prop :=
  ∀ n, (P13721506249447940972.a n : ℤ) = A202989 n

theorem P13721506249447940972.correct : P13721506249447940972.Spec := by
  intro n
  simp only [A202989]

end A202989

/-! ## A202989.P3125838489207441882

`A326013(n)/(n+1)`
-/

namespace A202989.P3125838489207441882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326013 n : ℚ) / (n + 1 : ℚ)

end

end A202989.P3125838489207441882

namespace A202989

/-- `A326013(n)/(n+1)` -/
def P3125838489207441882.Spec : Prop :=
  ∀ n, P3125838489207441882.a n = (A202989 n : ℚ)

end A202989

/-! ## A202989.P2995207559214054581

`sqrt(A103457(n)^(2*n))`
-/

namespace A202989.P2995207559214054581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A103457 n ^ (2 * n) : ℝ)

end

end A202989.P2995207559214054581

namespace A202989

/-- `sqrt(A103457(n)^(2*n))` -/
def P2995207559214054581.Spec : Prop :=
  ∀ n, P2995207559214054581.a n = (A202989 n : ℝ)

end A202989

/-!
# A202990: E.g.f: Sum_{n>=0} 3^n * 2^(n^2) * exp(-2*2^n*x) * x^n/n!.

The programs for A202990, the canonical program `A202990.P11183146685832187359` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202990 has offset 0).

The definition of A202990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202990.P11183146685832187359

`(3*2^n-2)^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A202990

/-- `(3*2^n-2)^n` -/
def P11183146685832187359.Spec : Prop :=
  ∀ n, P11183146685832187359.a n = A202990 n

theorem P11183146685832187359.correct : P11183146685832187359.Spec := by
  intro n
  simp only [A202990]

end A202990

/-! ## A202990.P6361138803680026967

`∑[a(n-1)+a(n-1)]^n` with `a(0)=1, a(1)=3`
-/

namespace A202990.P6361138803680026967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A202990.P6361138803680026967

namespace A202990

/-- `∑[a(n-1)+a(n-1)]^n` -/
def P6361138803680026967.Spec : Prop :=
  ∀ n, (P6361138803680026967.a n : ℤ) = A202990 n

end A202990

/-! ## A202990.P9650881879482092763

`(sqrt(A033484(n))^n)²`
-/

namespace A202990.P9650881879482092763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A033484 n : ℝ) ^ n) ^ 2

end

end A202990.P9650881879482092763

namespace A202990

/-- `(sqrt(A033484(n))^n)²` -/
def P9650881879482092763.Spec : Prop :=
  ∀ n, P9650881879482092763.a n = (A202990 n : ℝ)

end A202990

/-! ## A202990.P2389247943557308672

`record[(1+3*n)^val(n+1, 2)]`
-/

namespace A202990.P2389247943557308672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + 3 * n) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202990.P2389247943557308672

namespace A202990

/-- `record[(1+3*n)^val(n+1, 2)]` -/
def P2389247943557308672.Spec : Prop :=
  ∀ n, (P2389247943557308672.a n : ℤ) = A202990 n

end A202990

/-! ## A202990.P4144510002222145128

`sqrt(A169721(n)^n)`
-/

namespace A202990.P4144510002222145128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A169721 n ^ n : ℝ)

end

end A202990.P4144510002222145128

namespace A202990

/-- `sqrt(A169721(n)^n)` -/
def P4144510002222145128.Spec : Prop :=
  ∀ n, P4144510002222145128.a n = (A202990 n : ℝ)

end A202990

/-!
# A202991: E.g.f: Sum_{n>=0} 3^(n^2) * exp(-2*3^n*x) * x^n/n!.

The programs for A202991, the canonical program `A202991.P4777638222412423383` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202991 has offset 0).

The definition of A202991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202991.P4777638222412423383

`(3^n-2)^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A202991

/-- `(3^n-2)^n` -/
def P4777638222412423383.Spec : Prop :=
  ∀ n, P4777638222412423383.a n = A202991 n

theorem P4777638222412423383.correct : P4777638222412423383.Spec := by
  intro n
  simp only [A202991]

end A202991

/-! ## A202991.P11168780795422168578

`floor((A004278(A000244(n))/2)^n)`
-/

namespace A202991.P11168780795422168578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A004278 (A000244 n).toNat : ℚ) / 2) ^ n⌋

end

end A202991.P11168780795422168578

namespace A202991

/-- `floor((A004278(A000244(n))/2)^n)` -/
def P11168780795422168578.Spec : Prop :=
  ∀ n, P11168780795422168578.a n = A202991 n

end A202991

/-!
# A202992: Triangle T(n,k), read by rows, given by (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ...) DELTA (0, 0, 1, 1, 2, 2, 3, 3, 4, 4, ...) where DELTA is the operator defined in A084938.

The programs for A202992, there is no canonical definition to state claims against.
-/

/-! ## A202992.P9396620097150022722

`xor(A128113(A135080(n)), A158830(n+1))`
-/

namespace A202992.P9396620097150022722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A128113 (A135080 n).toNat) (A158830 (n + 1))

end

end A202992.P9396620097150022722

/-!
# A202993: G.f.: A(x) = exp( Sum_{n>=1} sigma(n^4)*x^n/n ), a power series in x with integer coefficients.

The programs for A202993, there is no canonical definition to state claims against.
-/

/-! ## A202993.P9931232083958556878

`A291746(∏[or(1, n)])`
-/

namespace A202993.P9931232083958556878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291746 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A202993.P9931232083958556878

/-!
# A202994: a(n) = sigma(n^4).

The programs for A202994, the canonical program `A202994.P11175815109015794068` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202994 has offset 1).

The definition of A202994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((n+1)^4)` (program `A202994.P11175815109015794068`, by `A202994.P11175815109015794068.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202994.P11175815109015794068

`A000203((n+1)^4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A202994

/-- `A000203((n+1)^4)` -/
def P11175815109015794068.Spec : Prop :=
  ∀ n, P11175815109015794068.a n = A202994 (n + 1)

theorem P11175815109015794068.correct : P11175815109015794068.Spec := by
  intro n
  simp only [A202994, Nat.add_sub_cancel]

end A202994

/-! ## A202994.P1913166836536099714

`∑{d}[n+1, #*A160891(#)]`
-/

namespace A202994.P1913166836536099714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A160891 d

end

end A202994.P1913166836536099714

namespace A202994

/-- `∑{d}[n+1, #*A160891(#)]` -/
def P1913166836536099714.Spec : Prop :=
  ∀ n, P1913166836536099714.a n = A202994 (n + 1)

end A202994

/-! ## A202994.P6768282824091931806

`A065764((1+n)²)`
-/

namespace A202994.P6768282824091931806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 ((1 + n) ^ 2)

end

end A202994.P6768282824091931806

namespace A202994

/-- `A065764((1+n)²)` -/
def P6768282824091931806.Spec : Prop :=
  ∀ n, P6768282824091931806.a n = A202994 (n + 1)

end A202994

/-! ## A202994.P8202150211740288413

`∑{d}[(n+1)², A000082(#)]`
-/

namespace A202994.P8202150211740288413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d

end

end A202994.P8202150211740288413

namespace A202994

/-- `∑{d}[(n+1)², A000082(#)]` -/
def P8202150211740288413.Spec : Prop :=
  ∀ n, P8202150211740288413.a n = A202994 (n + 1)

end A202994

/-! ## A202994.P12903775191889843589

`∑{d}[(n+1)², #*A001615(#)]`
-/

namespace A202994.P12903775191889843589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001615 d

end

end A202994.P12903775191889843589

namespace A202994

/-- `∑{d}[(n+1)², #*A001615(#)]` -/
def P12903775191889843589.Spec : Prop :=
  ∀ n, P12903775191889843589.a n = A202994 (n + 1)

end A202994

/-! ## A202994.P1462833882861725466

`A076401(A340698((n+1)²))`
-/

namespace A202994.P1462833882861725466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076401 (A340698 ((n + 1) ^ 2)).toNat

end

end A202994.P1462833882861725466

namespace A202994

/-- `A076401(A340698((n+1)²))` -/
def P1462833882861725466.Spec : Prop :=
  ∀ n, P1462833882861725466.a n = A202994 (n + 1)

end A202994

/-! ## A202994.P3760742417731830038

`A152677(A003152((n+1)²))`
-/

namespace A202994.P3760742417731830038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152677 (A003152 ((n + 1) ^ 2)).toNat

end

end A202994.P3760742417731830038

namespace A202994

/-- `A152677(A003152((n+1)²))` -/
def P3760742417731830038.Spec : Prop :=
  ∀ n, P3760742417731830038.a n = A202994 (n + 1)

end A202994

/-! ## A202994.P13702712431508214506

`A180114(A361936((n+1)²))`
-/

namespace A202994.P13702712431508214506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180114 (A361936 ((n + 1) ^ 2)).toNat

end

end A202994.P13702712431508214506

namespace A202994

/-- `A180114(A361936((n+1)²))` -/
def P13702712431508214506.Spec : Prop :=
  ∀ n, P13702712431508214506.a n = A202994 (n + 1)

end A202994

/-!
# A202995: Triangle read by rows, based on expansion of (x^2*exp(x)/(exp(x)-1))^m = x^m + sum(n>m T(n,m)*m!/((n-m)!*n!)*x^n).

The programs for A202995, there is no canonical definition to state claims against.
-/

/-! ## A202995.P4996024515018513804

`A097807(n)*A191578(n+1)`
-/

namespace A202995.P4996024515018513804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A191578 (n + 1)

end

end A202995.P4996024515018513804

/-! ## A202995.P5190859886764731766

`A191578(C(n+1, n))/A097807(n)`
-/

namespace A202995.P5190859886764731766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191578 (Nat.choose (n + 1) n) : ℚ) / (A097807 n : ℚ)

end

end A202995.P5190859886764731766

/-! ## A202995.P8293538663659673979

`A191578(round(sqrt((n+1)²+1)))/A097807(n)`
-/

namespace A202995.P8293538663659673979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191578 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 2 + 1 : ℝ))).toNat : ℚ) / (A097807 n : ℚ)

end

end A202995.P8293538663659673979

/-! ## A202995.P16971527804163101749

`A033999(A025581(n))*A191578(n+1)`
-/

namespace A202995.P16971527804163101749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A191578 (n + 1)

end

end A202995.P16971527804163101749

/-! ## A202995.P13880813794605064503

`A033999(A051162(n))*A191578(n+1)`
-/

namespace A202995.P13880813794605064503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A191578 (n + 1)

end

end A202995.P13880813794605064503

/-! ## A202995.P9598339200642402454

`A033999(A063656(n))*A191578(n+1)`
-/

namespace A202995.P9598339200642402454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A191578 (n + 1)

end

end A202995.P9598339200642402454

/-! ## A202995.P3675294530533527047

`A009531(A099375(n))*A191578(n+1)`
-/

namespace A202995.P3675294530533527047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A191578 (n + 1)

end

end A202995.P3675294530533527047

/-! ## A202995.P10203069541923806231

`A033999(A004202(n+1))*A191578(n+1)`
-/

namespace A202995.P10203069541923806231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004202 (n + 1)).toNat * A191578 (n + 1)

end

end A202995.P10203069541923806231

/-! ## A202995.P16790827812757173196

`A009001(A155156(n+1))*A191578(n+1)`
-/

namespace A202995.P16790827812757173196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A155156 (n + 1)).toNat * A191578 (n + 1)

end

end A202995.P16790827812757173196

/-! ## A202995.P1147183285854227299

`A191578(n+1)/A097807(n)^A009001(n)`
-/

namespace A202995.P1147183285854227299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191578 (n + 1) : ℚ) / (A097807 n : ℚ) ^ (A009001 n : ℤ)

end

end A202995.P1147183285854227299

/-!
# A202999: Expansion of e.g.f. A(x) satisfying A(x) = Sum_{n>=0} (A(x)^n + 1)^n * x^n/n!.

The programs for A202999, there is no canonical definition to state claims against.
-/

/-! ## A202999.P5870615174720115933

`∑{#}[n, A361540(C(n+1, 2)+#)]`
-/

namespace A202999.P5870615174720115933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A361540 (Nat.choose (n + 1) 2 + k)

end

end A202999.P5870615174720115933

