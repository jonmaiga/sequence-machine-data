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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
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
# A202900: Number of n X 2 0..1 arrays with every one equal to some NW, E or S neighbor.

The programs for A202900, the canonical program `A202900.P14848991346784523435` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202900 has offset 0).

The definition of A202900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202900.P14848991346784523435

`4*a(n-1)-4*a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=14`

The canonical program, it is in `Seq.B000.C025`.
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

The programs for A202901, there is no canonical definition to state claims against.
-/

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

/-! ## A202901.P823076081547997777

`A202906(A167614(n+1))+A185284(n)`
-/

namespace A202901.P823076081547997777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A167614 (n + 1)).toNat + A185284 n

end

end A202901.P823076081547997777

/-! ## A202901.P8435225487989308919

`gcd(A000038(n), A202906(A167614(n+1)))`
-/

namespace A202901.P8435225487989308919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A202906 (A167614 (n + 1)).toNat)

end

end A202901.P8435225487989308919

/-! ## A202901.P3562820795956816354

`lcm(A000034(n), A202906(A167614(n+1)))`
-/

namespace A202901.P3562820795956816354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A202906 (A167614 (n + 1)).toNat)

end

end A202901.P3562820795956816354

/-! ## A202901.P4914770820930337236

`or(A000007(n), A202906(A167614(n+1)))`
-/

namespace A202901.P4914770820930337236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A202906 (A167614 (n + 1)).toNat)

end

end A202901.P4914770820930337236

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

/-! ## A202902.P11490374689941950186

`A202906(A141214(n)+7)`
-/

namespace A202902.P11490374689941950186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A141214 n + 7).toNat

end

end A202902.P11490374689941950186

/-! ## A202902.P3499965725800688896

`A202906(A052905(n)+9)`
-/

namespace A202902.P3499965725800688896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A052905 n + 9).toNat

end

end A202902.P3499965725800688896

/-! ## A202902.P7386549106830718509

`A202906(A167614(n+2)+1)`
-/

namespace A202902.P7386549106830718509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A167614 (n + 2) + 1).toNat

end

end A202902.P7386549106830718509

/-! ## A202902.P4092986902443686002

`A202906(Δ[A023545(n+1)-n²])`
-/

namespace A202902.P4092986902443686002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (f1 (n + 1) - f1 n).toNat

end

end A202902.P4092986902443686002

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

/-! ## A202903.P6090883634884623090

`A202906(A167499(n+3))`
-/

namespace A202903.P6090883634884623090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A167499 (n + 3)).toNat

end

end A202903.P6090883634884623090

/-! ## A202903.P5609880038083907596

`A202906(eq[7, A066657(n)])`
-/

namespace A202903.P5609880038083907596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202903.P5609880038083907596

/-! ## A202903.P1272825643290945080

`A202906(A055998(n+2)+8)`
-/

namespace A202903.P1272825643290945080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A055998 (n + 2) + 8).toNat

end

end A202903.P1272825643290945080

/-! ## A202903.P14964584657197996731

`A202906(eq[4, A193592(n)])`
-/

namespace A202903.P14964584657197996731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202903.P14964584657197996731

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

/-! ## A202904.P17863252858738162988

`A202906(A052905(n+3))`
-/

namespace A202904.P17863252858738162988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A052905 (n + 3)).toNat

end

end A202904.P17863252858738162988

/-! ## A202904.P14618419493569392005

`A202906(eq[5, A193592(n)])`
-/

namespace A202904.P14618419493569392005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202904.P14618419493569392005

/-! ## A202904.P16018730700550438699

`A202906(eq[7, A049286(n+1)])`
-/

namespace A202904.P16018730700550438699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202904.P16018730700550438699

/-! ## A202904.P9797773563309417702

`A202906(Δ[Δ[A006504(n+1)]])`
-/

namespace A202904.P9797773563309417702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (f1 (n + 1) - f1 n).toNat

end

end A202904.P9797773563309417702

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

/-! ## A202905.P6422753426613325432

`A202906(A000096(n+6)-(n-1))`
-/

namespace A202905.P6422753426613325432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A202905.P6422753426613325432

/-! ## A202905.P9731527133425048990

`A202906(A055999(n+4))`
-/

namespace A202905.P9731527133425048990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A055999 (n + 4)).toNat

end

end A202905.P9731527133425048990

/-! ## A202905.P16188309771627332097

`A202906(eq[6, A193592(n)])`
-/

namespace A202905.P16188309771627332097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202905.P16188309771627332097

/-! ## A202905.P15649055904369085223

`A202906(A027689(n+10)-A000124(n+13))`
-/

namespace A202905.P15649055904369085223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (A027689 (n + 10) - A000124 (n + 13)).toNat

end

end A202905.P15649055904369085223

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
# A202908: 

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

/-! ## A202911.P18091682838993205556

`A202916(A167614(n+1))+A174617(n)`
-/

namespace A202911.P18091682838993205556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (A167614 (n + 1)).toNat + A174617 n

end

end A202911.P18091682838993205556

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

/-! ## A202912.P13300190999256849499

`A202916(A055999(n)+10)`
-/

namespace A202912.P13300190999256849499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (A055999 n + 10).toNat

end

end A202912.P13300190999256849499

/-! ## A202912.P17564486490312050488

`A202916(A167614(n+2)+1)`
-/

namespace A202912.P17564486490312050488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (A167614 (n + 2) + 1).toNat

end

end A202912.P17564486490312050488

/-! ## A202912.P284751485234202266

`A202916(eq[5, A131818(n+1)])`
-/

namespace A202912.P284751485234202266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202912.P284751485234202266

/-!
# A202913: 

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

/-! ## A202913.P6683344781738933591

`A202916(A000217(n+4)+5)`
-/

namespace A202913.P6683344781738933591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (A000217 (n + 4) + 5).toNat

end

end A202913.P6683344781738933591

/-! ## A202913.P5695828991288201595

`A202916(eq[6, A131818(n+1)])`
-/

namespace A202913.P5695828991288201595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202913.P5695828991288201595

/-!
# A202914: 

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
# A202915: 

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

/-! ## A202917.P16038500826119351709

`gcd(Δ[A006103(n)], A015117(n))`
-/

namespace A202917.P16038500826119351709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A015117 n)

end

end A202917.P16038500826119351709

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

/-! ## A202918.P6770189221974684934

`A202924(A001844(n))+A088116(n)`
-/

namespace A202918.P6770189221974684934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A001844 n).toNat + A088116 n

end

end A202918.P6770189221974684934

/-! ## A202918.P6435334141233835510

`A202924(A001844(n))+A151950(n)`
-/

namespace A202918.P6435334141233835510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A001844 n).toNat + A151950 n

end

end A202918.P6435334141233835510

/-! ## A202918.P2123400104932211095

`A321797(n)+A202924(A001844(n))`
-/

namespace A202918.P2123400104932211095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n + A202924 (A001844 n).toNat

end

end A202918.P2123400104932211095

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

/-! ## A202919.P10665485811724943309

`A202924(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A202919.P10665485811724943309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202924 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A202919.P10665485811724943309

/-! ## A202919.P14571203550250241064

`A202924(A167614(n+1))+A185284(n)`
-/

namespace A202919.P14571203550250241064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A167614 (n + 1)).toNat + A185284 n

end

end A202919.P14571203550250241064

/-! ## A202919.P16066864049759482004

`A202924(A167614(n+1))^A178489(n)`
-/

namespace A202919.P16066864049759482004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202924 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A202919.P16066864049759482004

/-! ## A202919.P18008043338952989246

`A202924(A167614(n+1))%A016878(n)`
-/

namespace A202919.P18008043338952989246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202924 (A167614 (n + 1)).toNat) (A016878 n)

end

end A202919.P18008043338952989246

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

/-! ## A202920.P8291691020224295286

`A202924(A141214(n)+7)`
-/

namespace A202920.P8291691020224295286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A141214 n + 7).toNat

end

end A202920.P8291691020224295286

/-! ## A202920.P2548754529854620223

`A202924(A052905(n)+9)`
-/

namespace A202920.P2548754529854620223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A052905 n + 9).toNat

end

end A202920.P2548754529854620223

/-! ## A202920.P15698814183151552975

`A202924(A055999(n)+10)`
-/

namespace A202920.P15698814183151552975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A055999 n + 10).toNat

end

end A202920.P15698814183151552975

/-! ## A202920.P16365811812196961873

`A202924(A167614(n+2)+1)`
-/

namespace A202920.P16365811812196961873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A167614 (n + 2) + 1).toNat

end

end A202920.P16365811812196961873

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

/-! ## A202921.P8204194295910208239

`A202924(eq[6, A131818(n+1)])`
-/

namespace A202921.P8204194295910208239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202921.P8204194295910208239

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

/-! ## A202921.P12442297183105110588

`A202924(A046691(n+3))`
-/

namespace A202921.P12442297183105110588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A046691 (n + 3)).toNat

end

end A202921.P12442297183105110588

/-! ## A202921.P15331749058792782956

`A202924(eq[4, A193592(n)])`
-/

namespace A202921.P15331749058792782956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202921.P15331749058792782956

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

/-! ## A202922.P13476282286824502794

`A202924(eq[7, A131818(n+1)])`
-/

namespace A202922.P13476282286824502794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202922.P13476282286824502794

/-! ## A202922.P12681183706438025992

`A202924(A052905(n+3))`
-/

namespace A202922.P12681183706438025992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A052905 (n + 3)).toNat

end

end A202922.P12681183706438025992

/-! ## A202922.P6912318644909667698

`A202924(eq[3, A219347(n)])`
-/

namespace A202922.P6912318644909667698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202922.P6912318644909667698

/-! ## A202922.P13513173584619232085

`A202924(eq[5, A193592(n)])`
-/

namespace A202922.P13513173584619232085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202922.P13513173584619232085

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

/-! ## A202923.P3565567530578391477

`A202924(A167614(n+5)+4)`
-/

namespace A202923.P3565567530578391477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A167614 (n + 5) + 4).toNat

end

end A202923.P3565567530578391477

/-! ## A202923.P12212397812604988459

`A202924(eq[4, A219347(n)])`
-/

namespace A202923.P12212397812604988459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202923.P12212397812604988459

/-! ## A202923.P9212314609630450576

`A202924(eq[6, A193592(n)])`
-/

namespace A202923.P9212314609630450576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202923.P9212314609630450576

/-! ## A202923.P3945322934009146882

`A202924(eq[7, A200370(n+1)])`
-/

namespace A202923.P3945322934009146882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202923.P3945322934009146882

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

/-! ## A202925.P5485480856979133576

`lcm(2, A202931(A022856(n+5)))`
-/

namespace A202925.P5485480856979133576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202931 (A022856 (n + 5)).toNat)

end

end A202925.P5485480856979133576

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

/-! ## A202926.P12869954988150709959

`lcm(2, A202931(A167614(n+1)))`
-/

namespace A202926.P12869954988150709959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202931 (A167614 (n + 1)).toNat)

end

end A202926.P12869954988150709959

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

/-! ## A202926.P14562317622203433546

`A202931(A167614(n+1))+A014083(n)`
-/

namespace A202926.P14562317622203433546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (A167614 (n + 1)).toNat + A014083 n

end

end A202926.P14562317622203433546

/-! ## A202926.P2313662693663463873

`A202931(A167614(n+1))+A025433(n)`
-/

namespace A202926.P2313662693663463873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (A167614 (n + 1)).toNat + A025433 n

end

end A202926.P2313662693663463873

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

/-! ## A202927.P5904959893773048966

`A202931(A141214(n)+7)`
-/

namespace A202927.P5904959893773048966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (A141214 n + 7).toNat

end

end A202927.P5904959893773048966

/-! ## A202927.P15510542772754876230

`A202931(A052905(n)+9)`
-/

namespace A202927.P15510542772754876230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (A052905 n + 9).toNat

end

end A202927.P15510542772754876230

/-! ## A202927.P7530931627176304365

`A202931(A055999(n)+10)`
-/

namespace A202927.P7530931627176304365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (A055999 n + 10).toNat

end

end A202927.P7530931627176304365

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

/-! ## A202928.P8102485934546868399

`A202931(A155212(n)+13)`
-/

namespace A202928.P8102485934546868399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202931 (A155212 n + 13).toNat

end

end A202928.P8102485934546868399

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

/-! ## A202932.P15838511570615476228

`lcm(2, A202939(A001844(n)))`
-/

namespace A202932.P15838511570615476228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202939 (A001844 n).toNat)

end

end A202932.P15838511570615476228

/-! ## A202932.P3755286274120309914

`A202939(A001844(n))^A033999(n)²`
-/

namespace A202932.P3755286274120309914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202939 (A001844 n).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A202932.P3755286274120309914

/-! ## A202932.P13160255890340350800

`char[A008647(n)]*A202939(A001844(n))`
-/

namespace A202932.P13160255890340350800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A202939 (A001844 n).toNat

end

end A202932.P13160255890340350800

/-! ## A202932.P3211389252726403687

`char[A026741(n)]*A202939(A001844(n))`
-/

namespace A202932.P3211389252726403687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A202939 (A001844 n).toNat

end

end A202932.P3211389252726403687

/-! ## A202932.P6860710122284539054

`char[A029578(n)]*A202939(A001844(n))`
-/

namespace A202932.P6860710122284539054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A202939 (A001844 n).toNat

end

end A202932.P6860710122284539054

/-! ## A202932.P346407274934238388

`A007318(∑[n+1])*A202939(A001844(n))`
-/

namespace A202932.P346407274934238388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A202939 (A001844 n).toNat

end

end A202932.P346407274934238388

/-! ## A202932.P6993374003027451730

`A008683(A007918(n))²*A202939(A001844(n))`
-/

namespace A202932.P6993374003027451730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat ^ 2 * A202939 (A001844 n).toNat

end

end A202932.P6993374003027451730

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

/-! ## A202933.P14264664026022460239

`A202939(A133263(n+1))+C(n, n+1)`
-/

namespace A202933.P14264664026022460239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A133263 (n + 1)).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A202933.P14264664026022460239

/-! ## A202933.P3928325090050342809

`A202939(A133263(n+1))%Δ[A017190(n)]`
-/

namespace A202933.P3928325090050342809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202939 (A133263 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A202933.P3928325090050342809

/-! ## A202933.P13154587963691902871

`A202939(A133263(n+1))+A000038(n+1)`
-/

namespace A202933.P13154587963691902871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A133263 (n + 1)).toNat + A000038 (n + 1)

end

end A202933.P13154587963691902871

/-! ## A202933.P13087414833623442405

`A202939(A133263(n+1))+A000035(2*n)`
-/

namespace A202933.P13087414833623442405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A202933.P13087414833623442405

/-! ## A202933.P16252432645837059685

`A202939(A133263(n+1))+n%A033999(n)`
-/

namespace A202933.P16252432645837059685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A133263 (n + 1)).toNat + Int.tmod (n : ℤ) (A033999 n)

end

end A202933.P16252432645837059685

/-! ## A202933.P3743001640264385095

`ceil(A202939(A133263(n+1))-2/A016957(n))`
-/

namespace A202933.P3743001640264385095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A202939 (A133263 (n + 1)).toNat : ℚ) - 2 / (A016957 n : ℚ)⌉

end

end A202933.P3743001640264385095

/-! ## A202933.P1136618734844062946

`A202939(A133263(n+1))*A336617(A028597(n))`
-/

namespace A202933.P1136618734844062946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A133263 (n + 1)).toNat * A336617 (A028597 n).toNat

end

end A202933.P1136618734844062946

/-! ## A202933.P857799910324278141

`A001221(A007521(n+2))*A202939(A133263(n+1))`
-/

namespace A202933.P857799910324278141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007521 (n + 2)).toNat * A202939 (A133263 (n + 1)).toNat

end

end A202933.P857799910324278141

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

/-! ## A202933.P2294214095813959359

`lcm(1-4/2, A202939(A055998(n)+2))`
-/

namespace A202933.P2294214095813959359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A202939 (A055998 n + 2).toNat)

end

end A202933.P2294214095813959359

/-! ## A202933.P10474297696479947288

`A202939(A055998(n)+2)%A202934(n+1)`
-/

namespace A202933.P10474297696479947288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202939 (A055998 n + 2).toNat) (A202934 (n + 1))

end

end A202933.P10474297696479947288

/-! ## A202933.P7223959506789090702

`A007318(floor(1/(n+1)))*A202939(A055998(n)+2)`
-/

namespace A202933.P7223959506789090702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat * A202939 (A055998 n + 2).toNat

end

end A202933.P7223959506789090702

/-! ## A202933.P1735325198388252993

`n+2+A202939(A055998(n)+2)+A001489(n+2)`
-/

namespace A202933.P1735325198388252993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + (A202939 (A055998 n + 2).toNat + A001489 (n + 2))

end

end A202933.P1735325198388252993

/-! ## A202933.P12107219978822617295

`-A010815(2-A024000(n)-n)*A202939(A055998(n)+2)`
-/

namespace A202933.P12107219978822617295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A010815 (2 - A024000 n - (n : ℤ)).toNat * A202939 (A055998 n + 2).toNat)

end

end A202933.P12107219978822617295

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

/-! ## A202934.P16833937377877258499

`lcm((-1)^n, A202939(A167614(n+1)))`
-/

namespace A202934.P16833937377877258499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A202939 (A167614 (n + 1)).toNat)

end

end A202934.P16833937377877258499

/-! ## A202934.P10843652720622388352

`A202939(A167614(n+1))%A017384(n)`
-/

namespace A202934.P10843652720622388352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202939 (A167614 (n + 1)).toNat) (A017384 n)

end

end A202934.P10843652720622388352

/-! ## A202934.P15736644598730697702

`A202939(A167614(n+1))+A056594(2*n+1)`
-/

namespace A202934.P15736644598730697702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A167614 (n + 1)).toNat + A056594 (2 * n + 1)

end

end A202934.P15736644598730697702

/-! ## A202934.P16573278622495795214

`A202939(A167614(n+1))*A234959(2*n+1)`
-/

namespace A202934.P16573278622495795214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A167614 (n + 1)).toNat * A234959 (2 * n + 1)

end

end A202934.P16573278622495795214

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

/-! ## A202935.P3794723470835431751

`A202939(A145018(n+4))`
-/

namespace A202935.P3794723470835431751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A145018 (n + 4)).toNat

end

end A202935.P3794723470835431751

/-! ## A202935.P17461923221654872426

`A202939(A052905(n)+9)`
-/

namespace A202935.P17461923221654872426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A052905 n + 9).toNat

end

end A202935.P17461923221654872426

/-! ## A202935.P15119638620067955189

`A202939(A055999(n)+10)`
-/

namespace A202935.P15119638620067955189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A055999 n + 10).toNat

end

end A202935.P15119638620067955189

/-! ## A202935.P11603904411990201989

`A202939(A167614(n+2)+1)`
-/

namespace A202935.P11603904411990201989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A167614 (n + 2) + 1).toNat

end

end A202935.P11603904411990201989

/-! ## A202935.P15004533985754160527

`A202939(A166136(n+2)-2)`
-/

namespace A202935.P15004533985754160527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A166136 (n + 2) - 2).toNat

end

end A202935.P15004533985754160527

/-! ## A202935.P449869103743011833

`A202939(Δ[A000292(n+2)]+4)`
-/

namespace A202935.P449869103743011833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (f1 (n + 1) - f1 n + 4).toNat

end

end A202935.P449869103743011833

/-! ## A202935.P18123864446445038513

`A202939(A166136(n+1)+1+n)`
-/

namespace A202935.P18123864446445038513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A202935.P18123864446445038513

/-! ## A202935.P13365383672716194516

`A202939(Δ[A023545(n+1)-n²])`
-/

namespace A202935.P13365383672716194516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (f1 (n + 1) - f1 n).toNat

end

end A202935.P13365383672716194516

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

/-! ## A202937.P8547386398560751923

`A202939(A166136(n+4))`
-/

namespace A202937.P8547386398560751923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A166136 (n + 4)).toNat

end

end A202937.P8547386398560751923

/-! ## A202937.P12505906433509125318

`A202939(A052905(n+3))`
-/

namespace A202937.P12505906433509125318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A052905 (n + 3)).toNat

end

end A202937.P12505906433509125318

/-! ## A202937.P3111442820236344019

`A202939(A055999(n+3)+1)`
-/

namespace A202937.P3111442820236344019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A055999 (n + 3) + 1).toNat

end

end A202937.P3111442820236344019

/-! ## A202937.P12246767912536784875

`A202939(Δ[A023545(n+2)]-1)`
-/

namespace A202937.P12246767912536784875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (f1 (n + 1) - f1 n - 1).toNat

end

end A202937.P12246767912536784875

/-! ## A202937.P9516104166811193120

`A202939(A000096(n+7)-A005408(n+9))`
-/

namespace A202937.P9516104166811193120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A000096 (n + 7) - A005408 (n + 9)).toNat

end

end A202937.P9516104166811193120

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

/-! ## A202938.P11577088414473325896

`A202939(A167614(n+5)+4)`
-/

namespace A202938.P11577088414473325896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A167614 (n + 5) + 4).toNat

end

end A202938.P11577088414473325896

/-! ## A202938.P8175342954916832467

`A202939(A000124(n+6)+6)`
-/

namespace A202938.P8175342954916832467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A000124 (n + 6) + 6).toNat

end

end A202938.P8175342954916832467

/-! ## A202938.P9323019308905244841

`A202939(A000217(n+6)+7)`
-/

namespace A202938.P9323019308905244841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A000217 (n + 6) + 7).toNat

end

end A202938.P9323019308905244841

/-! ## A202938.P6897302882528867331

`A202939(A046691(n+4)+11)`
-/

namespace A202938.P6897302882528867331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A046691 (n + 4) + 11).toNat

end

end A202938.P6897302882528867331

/-! ## A202938.P12774656490369616665

`A202939(A055999(n+4))`
-/

namespace A202938.P12774656490369616665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A055999 (n + 4)).toNat

end

end A202938.P12774656490369616665

/-! ## A202938.P14955405994840329104

`A202939(A052905(n+4)-1)`
-/

namespace A202938.P14955405994840329104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A052905 (n + 4) - 1).toNat

end

end A202938.P14955405994840329104

/-! ## A202938.P9709709571616338852

`A202939(A000096(n+6)-5)`
-/

namespace A202938.P9709709571616338852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202939 (A000096 (n + 6) - 5).toNat

end

end A202938.P9709709571616338852

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

/-! ## A202940.P13109482719668798253

`∩[A030294(n+1), A229301(n+1)]`
-/

namespace A202940.P13109482719668798253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202940.P13109482719668798253

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

/-! ## A202943.P14584161002514505051

`floor(A202942(n)/A000079(n))`
-/

namespace A202943.P14584161002514505051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A202942 n : ℚ) / (A000079 n : ℚ)⌋

end

end A202943.P14584161002514505051

/-! ## A202943.P7256826300053420101

`A202942(n)/A000079(n)*A007318(C(n, 2))`
-/

namespace A202943.P7256826300053420101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202942 n : ℚ) / (A000079 n : ℚ) * (A007318 (Nat.choose n 2) : ℚ)

end

end A202943.P7256826300053420101

/-! ## A202943.P10857677320146744099

`A000045(C(n, n+1))+A202942(n)/A000079(n)`
-/

namespace A202943.P10857677320146744099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (Nat.choose n (n + 1)) : ℚ) + (A202942 n : ℚ) / (A000079 n : ℚ)

end

end A202943.P10857677320146744099

/-!
# A202944: G.f.: Sum_{n>=0} (n+1)*(n+2)/2 * 2^(n*(n-1)) * x^n.

The programs for A202944, there is no canonical definition to state claims against.
-/

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

/-! ## A202944.P2256845421291248405

`2^(n²-n)*∑[n+1]`
-/

namespace A202944.P2256845421291248405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n ^ 2 : ℤ) - (n : ℤ) : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A202944.P2256845421291248405

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

/-! ## A202944.P13648301012397997467

`record[(A061579(n)+1)*A053763(A003056(n))]`
-/

namespace A202944.P13648301012397997467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061579 n + 1) * A053763 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202944.P13648301012397997467

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

/-! ## A202945.P6054200139079192922

`floor(ratio[A203773(A291769(n))])`
-/

namespace A202945.P6054200139079192922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203773 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A202945.P6054200139079192922

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

/-! ## A202946.P7296756448803926505

`3*(18*C(n, 2)+2)*a(n-1)` with `a(0)=3`
-/

namespace A202946.P7296756448803926505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * ((18 * Nat.choose n 2 + 2) * a (n - 1))

end

end A202946.P7296756448803926505

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

/-! ## A202946.P759121929886954378

`3*A101109(3*n)`
-/

namespace A202946.P759121929886954378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A101109 (3 * n)

end

end A202946.P759121929886954378

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

`-A343445(n+1)*A343445(n+2)`
-/

namespace A202948.P10310696095611154664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A343445 (n + 1) * A343445 (n + 2))

end

end A202948.P10310696095611154664

/-! ## A202948.P1329810482609837436

`-A007680(A016777(n))/A007680(n)`
-/

namespace A202948.P1329810482609837436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A007680 (A016777 n).toNat : ℚ) / (A007680 n : ℚ))

end

end A202948.P1329810482609837436

/-! ## A202948.P5779416174989522755

`-A052560(A016777(n))/A000142(n)`
-/

namespace A202948.P5779416174989522755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A052560 (A016777 n).toNat : ℚ) / (A000142 n : ℚ))

end

end A202948.P5779416174989522755

/-! ## A202948.P13806985011706789217

`A000038(n+1)-A052560(A016777(n))/A000142(n)`
-/

namespace A202948.P13806985011706789217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) - (A052560 (A016777 n).toNat : ℚ) / (A000142 n : ℚ)

end

end A202948.P13806985011706789217

/-!
# A202950: a(n) = Sum_{k=0..n} (2*n-k)!*2^(k-n)/k!.

The programs for A202950, there is no canonical definition to state claims against.
-/

/-! ## A202950.P14423894086749222711

`A008619(n*A125797(n))`
-/

namespace A202950.P14423894086749222711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A125797 n).toNat

end

end A202950.P14423894086749222711

/-!
# A202951: Number of Nickerson-type partitions of [1,...,3n] into triples satisfying x+y=z.

The programs for A202951, there is no canonical definition to state claims against.
-/

/-! ## A202951.P16707623617826339174

`round((A007318(n+3)-sqrt(∑{d}[n+1, #%2]))^n)`
-/

namespace A202951.P16707623617826339174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A007318 (n + 3) : ℝ) - Real.sqrt ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℝ)) ^ n)

end

end A202951.P16707623617826339174

/-! ## A202951.P11165611827519181665

`C(n, 2*round(n/4))*A202023(A016116(n))`
-/

namespace A202951.P11165611827519181665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (2 * SequenceMachineLib.roundAway ((n : ℚ) / 4)).toNat : ℤ) * A202023 (A016116 n).toNat

end

end A202951.P11165611827519181665

/-! ## A202951.P17587014536612589393

`A029957(round(sqrt(n+1))*A063866(n+1)+1)`
-/

namespace A202951.P17587014536612589393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) * A063866 (n + 1) + 1).toNat

end

end A202951.P17587014536612589393

/-! ## A202951.P14567755344075100671

`A001405(n)*A080159(A016116(n))`
-/

namespace A202951.P14567755344075100671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A080159 (A016116 n).toNat

end

end A202951.P14567755344075100671

/-! ## A202951.P3580695162938867931

`A001405(n)*A129182(A051920(n))`
-/

namespace A202951.P3580695162938867931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A129182 (A051920 n).toNat

end

end A202951.P3580695162938867931

/-!
# A202952: a(n) = A108235(n)-A202951(n).

The programs for A202952, there is no canonical definition to state claims against.
-/

/-! ## A202952.P16333764053525421947

`A284739(A072741(n)+1)`
-/

namespace A202952.P16333764053525421947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284739 (A072741 n + 1).toNat

end

end A202952.P16333764053525421947

/-! ## A202952.P16779764444030272381

`A060701(n)*A326632(A133263(n))`
-/

namespace A202952.P16779764444030272381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060701 n * A326632 (A133263 n).toNat

end

end A202952.P16779764444030272381

/-! ## A202952.P3674599422293309176

`A242614(A072241(n))*A372809(n)`
-/

namespace A202952.P3674599422293309176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242614 (A072241 n).toNat * A372809 n

end

end A202952.P3674599422293309176

/-! ## A202952.P12747738026444134191

`A133872(n)*A284739(∑[A133872(n)])`
-/

namespace A202952.P12747738026444134191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A284739 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202952.P12747738026444134191

/-! ## A202952.P5064148430491366565

`A133872(n)*A284739(A336200(n+1))`
-/

namespace A202952.P5064148430491366565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A284739 (A336200 (n + 1)).toNat

end

end A202952.P5064148430491366565

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

/-! ## A202957.P10363544342699819874

`lcm(2, A202962(A034856(n+2)))`
-/

namespace A202957.P10363544342699819874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202962 (A034856 (n + 2)).toNat)

end

end A202957.P10363544342699819874

/-! ## A202957.P6336004682639450246

`A202962(A034856(n+2))+A000035(4*n)`
-/

namespace A202957.P6336004682639450246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A034856 (n + 2)).toNat + A000035 (4 * n)

end

end A202957.P6336004682639450246

/-! ## A202957.P16595168882598338879

`A202962(A034856(n+2))%A303181(n+1)`
-/

namespace A202957.P16595168882598338879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202962 (A034856 (n + 2)).toNat) (A303181 (n + 1))

end

end A202957.P16595168882598338879

/-! ## A202957.P16659547533501859574

`A202962(A034856(n+2))+A102765(C(n, 2))`
-/

namespace A202957.P16659547533501859574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A034856 (n + 2)).toNat + A102765 (Nat.choose n 2)

end

end A202957.P16659547533501859574

/-! ## A202957.P15617438380482396677

`A202962(A034856(n+2))+A102765(A057944(n))`
-/

namespace A202957.P15617438380482396677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A034856 (n + 2)).toNat + A102765 (A057944 n).toNat

end

end A202957.P15617438380482396677

/-! ## A202957.P10037065940216377775

`A320005(A175193(n+1))+A202962(A034856(n+2))`
-/

namespace A202957.P10037065940216377775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (A175193 (n + 1)).toNat + A202962 (A034856 (n + 2)).toNat

end

end A202957.P10037065940216377775

/-! ## A202957.P5107678544910151746

`A202962(A034856(n+2))*A263653(A002476(n+1))`
-/

namespace A202957.P5107678544910151746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A034856 (n + 2)).toNat * A263653 (A002476 (n + 1)).toNat

end

end A202957.P5107678544910151746

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

/-! ## A202958.P7974270528342049860

`lcm(2, A202962(A027379(n+2)))`
-/

namespace A202958.P7974270528342049860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202962 (A027379 (n + 2)).toNat)

end

end A202958.P7974270528342049860

/-! ## A202958.P572059629197089566

`A202962(A027379(n+2))%A202959(n+1)`
-/

namespace A202958.P572059629197089566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202962 (A027379 (n + 2)).toNat) (A202959 (n + 1))

end

end A202958.P572059629197089566

/-! ## A202958.P17290342951800103601

`A007318(C(n+1, 2))*A202962(A027379(n+2))`
-/

namespace A202958.P17290342951800103601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 1) 2) * A202962 (A027379 (n + 2)).toNat

end

end A202958.P17290342951800103601

/-! ## A202958.P3630491199426763870

`A202962(A027379(n+2))+2*A011862(n)*char[1]`
-/

namespace A202958.P3630491199426763870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A027379 (n + 2)).toNat + 2 * A011862 n * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202958.P3630491199426763870

/-! ## A202958.P6220967368259702469

`A007318(A000217(n))*A202962(A027379(n+2))`
-/

namespace A202958.P6220967368259702469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A202962 (A027379 (n + 2)).toNat

end

end A202958.P6220967368259702469

/-! ## A202958.P7707967176401653192

`A014963(A322181(n+1))*A202962(A027379(n+2))`
-/

namespace A202958.P7707967176401653192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A322181 (n + 1)).toNat * A202962 (A027379 (n + 2)).toNat

end

end A202958.P7707967176401653192

/-! ## A202958.P3384690724482311933

`A008683(A235638(n+1))+A202962(A027379(n+2))+1`
-/

namespace A202958.P3384690724482311933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A235638 (n + 1)).toNat + (A202962 (A027379 (n + 2)).toNat + 1)

end

end A202958.P3384690724482311933

/-! ## A202958.P2139417425556596414

`A003557(A020639(n+2))*A202962(A000217(n+4)-3)`
-/

namespace A202958.P2139417425556596414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A020639 (n + 2)).toNat * A202962 (A000217 (n + 4) - 3).toNat

end

end A202958.P2139417425556596414

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

/-! ## A202959.P5980443012364142032

`A202962(eq[4, A193592(n)])`
-/

namespace A202959.P5980443012364142032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202959.P5980443012364142032

/-! ## A202959.P6510500161215299338

`A202962(Δ[A023545(n+1)])`
-/

namespace A202959.P6510500161215299338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (f1 (n + 1) - f1 n).toNat

end

end A202959.P6510500161215299338

/-! ## A202959.P11606855390490601946

`A202962(∑[A020710(n)]+6)`
-/

namespace A202959.P11606855390490601946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A202959.P11606855390490601946

/-! ## A202959.P7057193222732431009

`A202962(A167499(n)+4*n+5)`
-/

namespace A202959.P7057193222732431009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A167499 n + (4 * n + 5 : ℤ)).toNat

end

end A202959.P7057193222732431009

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

/-! ## A202960.P1459663852946361582

`A202962(eq[8, A258709(n)])`
-/

namespace A202960.P1459663852946361582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202960.P1459663852946361582

/-! ## A202960.P7009675464243816932

`A202962(A055999(n+3)+1)`
-/

namespace A202960.P7009675464243816932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A055999 (n + 3) + 1).toNat

end

end A202960.P7009675464243816932

/-! ## A202960.P3646500919663549763

`A202962(eq[8, A185782(n+1)])`
-/

namespace A202960.P3646500919663549763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202960.P3646500919663549763

/-! ## A202960.P7591322455586185573

`A202962(eq[16, A057728(n+1)])`
-/

namespace A202960.P7591322455586185573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202960.P7591322455586185573

/-! ## A202960.P1548656441369719097

`A202962(Δ[Δ[A006504(n+1)]])`
-/

namespace A202960.P1548656441369719097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (f1 (n + 1) - f1 n).toNat

end

end A202960.P1548656441369719097

/-! ## A202960.P7675139615082151744

`A202962(Δ[A023545(n+2)]-1)`
-/

namespace A202960.P7675139615082151744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (f1 (n + 1) - f1 n - 1).toNat

end

end A202960.P7675139615082151744

/-! ## A202960.P7793530932713329496

`A202962(Δ[A026054(n+3)]+1)`
-/

namespace A202960.P7793530932713329496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (f1 (n + 1) - f1 n + 1).toNat

end

end A202960.P7793530932713329496

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

/-! ## A202961.P11778179602634919999

`A202962(eq[6, A193592(n)])`
-/

namespace A202961.P11778179602634919999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202961.P11778179602634919999

/-! ## A202961.P9758767611329600186

`A202962(Δ[A026054(n+4)])`
-/

namespace A202961.P9758767611329600186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (f1 (n + 1) - f1 n).toNat

end

end A202961.P9758767611329600186

/-! ## A202961.P13823920148723704753

`A202962(eq[10, A185782(n+1)])`
-/

namespace A202961.P13823920148723704753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202961.P13823920148723704753

/-! ## A202961.P3223243515197221149

`A202962(eq[32, A057728(n+1)])`
-/

namespace A202961.P3223243515197221149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202961.P3223243515197221149

/-!
# A202963: Number of arrays of 3 integers in -n..n with sum zero and adjacent elements differing in absolute value.

The programs for A202963, the canonical program `A202963.P15355723799365847312` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202963 has offset 1).

The definition of A202963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202963.P15355723799365847312

`∑[xor(2, 6*n)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A202963

/-- `∑[xor(2, 6*n)]` -/
def P15355723799365847312.Spec : Prop :=
  ∀ n, (P15355723799365847312.a n : ℤ) = A202963 (n + 1)

theorem P15355723799365847312.correct : P15355723799365847312.Spec := by
  intro n
  simp only [A202963, Nat.add_sub_cancel]

end A202963

/-! ## A202963.P3592816238754107253

`Δ[or(1, n^3+1)]`
-/

namespace A202963.P3592816238754107253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 3 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A202963.P3592816238754107253

namespace A202963

/-- `Δ[or(1, n^3+1)]` -/
def P3592816238754107253.Spec : Prop :=
  ∀ n, P3592816238754107253.a n = A202963 (n + 1)

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

/-! ## A202963.P7847585567349477309

`∑[∑[lcm(2, A072996(n))]]`
-/

namespace A202963.P7847585567349477309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A072996 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202963.P7847585567349477309

namespace A202963

/-- `∑[∑[lcm(2, A072996(n))]]` -/
def P7847585567349477309.Spec : Prop :=
  ∀ n, (P7847585567349477309.a n : ℤ) = A202963 (n + 1)

end A202963

/-!
# A202964: Number of arrays of 4 integers in -n..n with sum zero and adjacent elements differing in absolute value.

The programs for A202964, the canonical program `A202964.P9492632001918835898` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202964 has offset 1).

The definition of A202964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202964.P9492632001918835898

`A114254(n)+or(3, A131452(n+1))`

The canonical program, it is in `Seq.B001.C006`.
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

/-! ## A202964.P12228679816963296189

`lcm(2, A202962(A133263(n+1)))`
-/

namespace A202964.P12228679816963296189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202962 (A133263 (n + 1)).toNat)

end

end A202964.P12228679816963296189

namespace A202964

/-- `lcm(2, A202962(A133263(n+1)))` -/
def P12228679816963296189.Spec : Prop :=
  ∀ n, (P12228679816963296189.a n : ℤ) = A202964 (n + 1)

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

/-! ## A202965.P3360541312391760919

`lcm(2, A202962(A167614(n+1)))`
-/

namespace A202965.P3360541312391760919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202962 (A167614 (n + 1)).toNat)

end

end A202965.P3360541312391760919

/-! ## A202965.P15141789495773429453

`A202962(A167614(n+1))%A017415(n)`
-/

namespace A202965.P15141789495773429453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202962 (A167614 (n + 1)).toNat) (A017415 n)

end

end A202965.P15141789495773429453

/-! ## A202965.P4497227563556733058

`or(A000038(n), A202962(A167614(n+1)))`
-/

namespace A202965.P4497227563556733058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A202962 (A167614 (n + 1)).toNat)

end

end A202965.P4497227563556733058

/-! ## A202965.P2857754312460663432

`lcm(A000034(n), A202962(A046691(n)+7))`
-/

namespace A202965.P2857754312460663432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A202962 (A046691 n + 7).toNat)

end

end A202965.P2857754312460663432

/-! ## A202965.P11165246034808266949

`A000034(2*n)*A202962(A167614(n+1))`
-/

namespace A202965.P11165246034808266949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A202962 (A167614 (n + 1)).toNat

end

end A202965.P11165246034808266949

/-! ## A202965.P7551658051135815437

`A202962(A167614(n+1))+and(1, A164993(n))`
-/

namespace A202965.P7551658051135815437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A167614 (n + 1)).toNat + Int.land 1 (A164993 n)

end

end A202965.P7551658051135815437

/-! ## A202965.P2998099211386014835

`A202962(A167614(n+1))+and(1, A165110(n))`
-/

namespace A202965.P2998099211386014835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A167614 (n + 1)).toNat + Int.land 1 (A165110 n)

end

end A202965.P2998099211386014835

/-! ## A202965.P4245401852490549917

`A202962(A167614(n+1))/and(1, A191114(n+1))`
-/

namespace A202965.P4245401852490549917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202962 (A167614 (n + 1)).toNat : ℚ) / (Int.land 1 (A191114 (n + 1)) : ℚ)

end

end A202965.P4245401852490549917

/-! ## A202965.P168743737991443079

`A202962(A167614(n+1))+A025436(A025436(n))`
-/

namespace A202965.P168743737991443079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A167614 (n + 1)).toNat + A025436 (A025436 n).toNat

end

end A202965.P168743737991443079

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

/-! ## A202966.P2472372213176590074

`A202962(A052905(n)+9)`
-/

namespace A202966.P2472372213176590074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A052905 n + 9).toNat

end

end A202966.P2472372213176590074

/-! ## A202966.P1783130426736427269

`A202962(A055999(n)+10)`
-/

namespace A202966.P1783130426736427269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A055999 n + 10).toNat

end

end A202966.P1783130426736427269

/-! ## A202966.P817100350916820374

`A202962(A167614(n+2)+1)`
-/

namespace A202966.P817100350916820374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A167614 (n + 2) + 1).toNat

end

end A202966.P817100350916820374

/-! ## A202966.P5472903071480321344

`A202962(A166136(n+2)-2)`
-/

namespace A202966.P5472903071480321344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A166136 (n + 2) - 2).toNat

end

end A202966.P5472903071480321344

/-! ## A202966.P8707362635050000684

`A202962(A167487(n+2)-3)`
-/

namespace A202966.P8707362635050000684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A167487 (n + 2) - 3).toNat

end

end A202966.P8707362635050000684

/-! ## A202966.P10353417927502419434

`A202962(A034856(n+2)+6)`
-/

namespace A202966.P10353417927502419434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A034856 (n + 2) + 6).toNat

end

end A202966.P10353417927502419434

/-! ## A202966.P6632141213947702725

`A202962(A166136(n+1)+1+n)`
-/

namespace A202966.P6632141213947702725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A202966.P6632141213947702725

/-! ## A202966.P6844801005203467093

`A202962(Δ[A023545(n+1)-n²])`
-/

namespace A202966.P6844801005203467093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (f1 (n + 1) - f1 n).toNat

end

end A202966.P6844801005203467093

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

/-! ## A202967.P11165340715252584586

`A202962(A155212(n)+13)`
-/

namespace A202967.P11165340715252584586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A155212 n + 13).toNat

end

end A202967.P11165340715252584586

/-! ## A202967.P16951869660660617363

`A202962(A167614(n+3)+2)`
-/

namespace A202967.P16951869660660617363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A167614 (n + 3) + 2).toNat

end

end A202967.P16951869660660617363

/-! ## A202967.P519582514674019392

`A202962(A000217(n+4)+5)`
-/

namespace A202967.P519582514674019392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000217 (n + 4) + 5).toNat

end

end A202967.P519582514674019392

/-! ## A202967.P6976526791727310398

`A202962(A000096(n+4)-(n-1))`
-/

namespace A202967.P6976526791727310398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A202967.P6976526791727310398

/-! ## A202967.P10165580409113450658

`A202962(A000124(n+5)-(n+1))`
-/

namespace A202967.P10165580409113450658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A202967.P10165580409113450658

/-! ## A202967.P9405802057037274454

`A202962(A034856(n+2)+n+11)`
-/

namespace A202967.P9405802057037274454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A034856 (n + 2) + (n + 11 : ℤ)).toNat

end

end A202967.P9405802057037274454

/-! ## A202967.P12021605475678854372

`A202962(A038722(Δ[A023545(n+1)]))`
-/

namespace A202967.P12021605475678854372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A202967.P12021605475678854372

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

/-! ## A202968.P16456305851097565521

`A202962(A167614(n+4)+3)`
-/

namespace A202968.P16456305851097565521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A167614 (n + 4) + 3).toNat

end

end A202968.P16456305851097565521

/-! ## A202968.P17444795741204471283

`A202962(A133263(n+5)+4)`
-/

namespace A202968.P17444795741204471283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A133263 (n + 5) + 4).toNat

end

end A202968.P17444795741204471283

/-! ## A202968.P16360993688216594929

`A202962(A000096(n+4)+7)`
-/

namespace A202968.P16360993688216594929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000096 (n + 4) + 7).toNat

end

end A202968.P16360993688216594929

/-! ## A202968.P245092767513825759

`A202962(A000217(n+5)+6)`
-/

namespace A202968.P245092767513825759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000217 (n + 5) + 6).toNat

end

end A202968.P245092767513825759

/-! ## A202968.P6497005025104757748

`A202962(eq[7, A004736(n+1)]-A005843(n))`
-/

namespace A202968.P6497005025104757748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005843 n).toNat

end

end A202968.P6497005025104757748

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

/-! ## A202969.P44685770284194957

`A202962(A056119(n)+28)`
-/

namespace A202969.P44685770284194957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A056119 n + 28).toNat

end

end A202969.P44685770284194957

/-! ## A202969.P13975677921656120332

`A202962(eq[8, A131818(n+1)])`
-/

namespace A202969.P13975677921656120332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202969.P13975677921656120332

/-! ## A202969.P1574106939365967572

`A202962(A000124(n+7)-(n+1))`
-/

namespace A202969.P1574106939365967572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A202969.P1574106939365967572

/-! ## A202969.P16179983035570354694

`A202962(A000217(n+6)+7)+A000035(4*n)`
-/

namespace A202969.P16179983035570354694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A000217 (n + 6) + 7).toNat + A000035 (4 * n)

end

end A202969.P16179983035570354694

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

/-! ## A202972.P1660808444860570547

`A264668(n)+A202979(A001844(n))`
-/

namespace A202972.P1660808444860570547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A202979 (A001844 n).toNat

end

end A202972.P1660808444860570547

/-! ## A202972.P874507234586729760

`A326292(n)+A202979(A001844(n))`
-/

namespace A202972.P874507234586729760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A202979 (A001844 n).toNat

end

end A202972.P874507234586729760

/-!
# A202973: Number of n X 2 0..1 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A202973, the canonical program `A202973.P10086515228712306167` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202973 has offset 1).

The definition of A202973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202973.P10086515228712306167

`3*a(n-1)-2*a(n-2)+2*a(n-3)-2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=14`

The canonical program, it is in `Seq.B000.C025`.
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

/-! ## A202973.P18088816952055494335

`A007318(A277264(n))*A202979(A133263(n+1))`
-/

namespace A202973.P18088816952055494335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A277264 n).toNat * A202979 (A133263 (n + 1)).toNat

end

end A202973.P18088816952055494335

namespace A202973

/-- `A007318(A277264(n))*A202979(A133263(n+1))` -/
def P18088816952055494335.Spec : Prop :=
  ∀ n, P18088816952055494335.a n = A202973 (n + 1)

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

The programs for A202974, there is no canonical definition to state claims against.
-/

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

/-! ## A202974.P18334437961167190919

`gcd(floor(acot(n)), A202979(A167614(n+1)))`
-/

namespace A202974.P18334437961167190919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A202979 (A167614 (n + 1)).toNat)

end

end A202974.P18334437961167190919

/-! ## A202974.P17379967295192045982

`A202979(A167614(n+1))+A185284(n)`
-/

namespace A202974.P17379967295192045982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A167614 (n + 1)).toNat + A185284 n

end

end A202974.P17379967295192045982

/-! ## A202974.P616437282415582933

`A202979(A167614(n+1))%A017454(n)`
-/

namespace A202974.P616437282415582933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202979 (A167614 (n + 1)).toNat) (A017454 n)

end

end A202974.P616437282415582933

/-! ## A202974.P10578254837944453108

`gcd(A000038(n), A202979(A167614(n+1)))`
-/

namespace A202974.P10578254837944453108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A202979 (A167614 (n + 1)).toNat)

end

end A202974.P10578254837944453108

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

/-! ## A202975.P6750410912632486993

`A202979(A052905(n)+9)`
-/

namespace A202975.P6750410912632486993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A052905 n + 9).toNat

end

end A202975.P6750410912632486993

/-! ## A202975.P17655930458534028882

`A202979(A167614(n+2)+1)`
-/

namespace A202975.P17655930458534028882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A167614 (n + 2) + 1).toNat

end

end A202975.P17655930458534028882

/-! ## A202975.P3621755517797896087

`A202979(A166136(n+2)-2)`
-/

namespace A202975.P3621755517797896087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A166136 (n + 2) - 2).toNat

end

end A202975.P3621755517797896087

/-! ## A202975.P13329973291689701832

`A202979(Δ[A264443(n)-n²])`
-/

namespace A202975.P13329973291689701832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (f1 (n + 1) - f1 n).toNat

end

end A202975.P13329973291689701832

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

/-! ## A202976.P2667300500103325337

`A202979(A166136(n+3)-1)`
-/

namespace A202976.P2667300500103325337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A166136 (n + 3) - 1).toNat

end

end A202976.P2667300500103325337

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

/-! ## A202976.P14530803827820150897

`A202979(A374005(n+1))`
-/

namespace A202976.P14530803827820150897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A374005 (n + 1)).toNat

end

end A202976.P14530803827820150897

/-! ## A202976.P12308179467320490842

`A202979(A046691(n+3))`
-/

namespace A202976.P12308179467320490842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A046691 (n + 3)).toNat

end

end A202976.P12308179467320490842

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

/-! ## A202977.P13877729438552579492

`A202979(eq[7, A131818(n+1)])`
-/

namespace A202977.P13877729438552579492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202977.P13877729438552579492

/-! ## A202977.P5264892131004491620

`A202979(A141214(n+3)-(n-3))`
-/

namespace A202977.P5264892131004491620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A141214 (n + 3) - ((n : ℤ) - 3)).toNat

end

end A202977.P5264892131004491620

/-! ## A202977.P13588645734353729038

`A202979(A374007(n+1))`
-/

namespace A202977.P13588645734353729038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A374007 (n + 1)).toNat

end

end A202977.P13588645734353729038

/-! ## A202977.P13137560164567072589

`A202979(A052905(n+3))`
-/

namespace A202977.P13137560164567072589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A052905 (n + 3)).toNat

end

end A202977.P13137560164567072589

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

/-! ## A202978.P18202565750556353776

`A202979(eq[8, A131818(n+1)])`
-/

namespace A202978.P18202565750556353776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202978.P18202565750556353776

/-! ## A202978.P11164574659857955816

`A202979(A374008(n+1))`
-/

namespace A202978.P11164574659857955816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A374008 (n + 1)).toNat

end

end A202978.P11164574659857955816

/-! ## A202978.P8682447965863491826

`A202979(A055999(n+4))`
-/

namespace A202978.P8682447965863491826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (A055999 (n + 4)).toNat

end

end A202978.P8682447965863491826

/-! ## A202978.P3547917058346912365

`A202979(eq[6, A193592(n)])`
-/

namespace A202978.P3547917058346912365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202978.P3547917058346912365

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

/-! ## A202981.P2872204250730174034

`A202988((n+1)²+n²)`
-/

namespace A202981.P2872204250730174034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 ((n + 1) ^ 2 + n ^ 2)

end

end A202981.P2872204250730174034

/-!
# A202982: Number of n X 2 0..2 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A202982, there is no canonical definition to state claims against.
-/

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

/-! ## A202982.P8486336990916767666

`record[root(A202988(n+2), A131270(n))]`
-/

namespace A202982.P8486336990916767666
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202988 (n + 2) : ℝ) ^ (1 / (A131270 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202982.P8486336990916767666

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

/-! ## A202983.P11158949198409558148

`A015900(n)*A202988(A167614(n+1))`
-/

namespace A202983.P11158949198409558148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015900 n * A202988 (A167614 (n + 1)).toNat

end

end A202983.P11158949198409558148

/-! ## A202983.P2150294993305069814

`A202988(A167614(n+1))*A304042(n)`
-/

namespace A202983.P2150294993305069814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A167614 (n + 1)).toNat * A304042 n

end

end A202983.P2150294993305069814

/-! ## A202983.P12404190851232497796

`gcd(A000038(n), A202988(A167614(n+1)))`
-/

namespace A202983.P12404190851232497796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A202988 (A167614 (n + 1)).toNat)

end

end A202983.P12404190851232497796

/-! ## A202983.P7237055272151709975

`or(A000007(n), A202988(A167614(n+1)))`
-/

namespace A202983.P7237055272151709975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A202988 (A167614 (n + 1)).toNat)

end

end A202983.P7237055272151709975

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

/-! ## A202984.P6947830633677460489

`A202988(A141214(n)+7)`
-/

namespace A202984.P6947830633677460489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A141214 n + 7).toNat

end

end A202984.P6947830633677460489

/-! ## A202984.P6354212892588783300

`A202988(A052905(n)+9)`
-/

namespace A202984.P6354212892588783300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A052905 n + 9).toNat

end

end A202984.P6354212892588783300

/-! ## A202984.P18237338162035015642

`A202988(A167614(n+2)+1)`
-/

namespace A202984.P18237338162035015642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A167614 (n + 2) + 1).toNat

end

end A202984.P18237338162035015642

/-! ## A202984.P7380280267904355853

`A202988(A166136(n+2)-2)`
-/

namespace A202984.P7380280267904355853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A166136 (n + 2) - 2).toNat

end

end A202984.P7380280267904355853

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

/-! ## A202985.P11867014667556087186

`A202988(A155212(n)+13)`
-/

namespace A202985.P11867014667556087186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A155212 n + 13).toNat

end

end A202985.P11867014667556087186

/-! ## A202985.P6066604988592560393

`A202988(eq[5, A025581(n)]-2*n)`
-/

namespace A202985.P6066604988592560393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A202985.P6066604988592560393

/-! ## A202985.P11702527637388837259

`A202988(A046691(n+3))`
-/

namespace A202985.P11702527637388837259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A046691 (n + 3)).toNat

end

end A202985.P11702527637388837259

/-! ## A202985.P15808896092541549655

`A202988(A056115(n)+11)`
-/

namespace A202985.P15808896092541549655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A056115 n + 11).toNat

end

end A202985.P15808896092541549655

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

/-! ## A202986.P18385012889304421277

`A202988(A166136(n+4))`
-/

namespace A202986.P18385012889304421277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A166136 (n + 4)).toNat

end

end A202986.P18385012889304421277

/-! ## A202986.P12310106826556748360

`A202988(∑[A020710(n)]+16)`
-/

namespace A202986.P12310106826556748360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A202986.P12310106826556748360

/-! ## A202986.P7608430277175674402

`A202988(A052905(n+3))`
-/

namespace A202986.P7608430277175674402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A052905 (n + 3)).toNat

end

end A202986.P7608430277175674402

/-! ## A202986.P9599062992408686557

`A202988(eq[5, A025581(n)]+1)`
-/

namespace A202986.P9599062992408686557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A202986.P9599062992408686557

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

/-! ## A202987.P17639777206750846535

`A202988(eq[7, A152157(n)])`
-/

namespace A202987.P17639777206750846535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202987.P17639777206750846535

/-! ## A202987.P13026166949522707441

`A202988(A141214(n+4)-3)`
-/

namespace A202987.P13026166949522707441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202988 (A141214 (n + 4) - 3).toNat

end

end A202987.P13026166949522707441

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

/-! ## A202988.P4377320933565506916

`A050271(A157221(n)+A157221(n)-1)`
-/

namespace A202988.P4377320933565506916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050271 (A157221 n + (A157221 n - 1)).toNat

end

end A202988.P4377320933565506916

/-! ## A202988.P4302049487064242506

`A050271(A157221(n)-(1-A157221(n)))`
-/

namespace A202988.P4302049487064242506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050271 (A157221 n - (1 - A157221 n)).toNat

end

end A202988.P4302049487064242506

/-!
# A202989: E.g.f: Sum_{n>=0} 3^(n^2) * exp(3^n*x) * x^n/n!.

The programs for A202989, the canonical program `A202989.P13721506249447940972` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202989 has offset 0).

The definition of A202989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202989.P13721506249447940972

`(3^n+1)^n`

The canonical program, it is in `Seq.B000.C025`.
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

/-! ## A202989.P13539952280915243600

`round(ratio[A290000(n)]^n)`
-/

namespace A202989.P13539952280915243600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ n)

end

end A202989.P13539952280915243600

namespace A202989

/-- `round(ratio[A290000(n)]^n)` -/
def P13539952280915243600.Spec : Prop :=
  ∀ n, P13539952280915243600.a n = A202989 n

end A202989

/-! ## A202989.P15240060816260159704

`and(A034472(n)^n, -1)`
-/

namespace A202989.P15240060816260159704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034472 n ^ n) (-1)

end

end A202989.P15240060816260159704

namespace A202989

/-- `and(A034472(n)^n, -1)` -/
def P15240060816260159704.Spec : Prop :=
  ∀ n, P15240060816260159704.a n = A202989 n

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

The programs for A202990, the canonical program `A202990.P11183146685832187359` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202990 has offset 0).

The definition of A202990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202990.P11183146685832187359

`(3*2^n-2)^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A202990

/-- `(3*2^n-2)^n` -/
def P11183146685832187359.Spec : Prop :=
  ∀ n, P11183146685832187359.a n = A202990 n

theorem P11183146685832187359.correct : P11183146685832187359.Spec := by
  intro n
  simp only [A202990]

end A202990

/-! ## A202990.P14784649766362870361

`floor(∑[a(n-1)+floor(a(n-1))]^n)` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A202990.P14784649766362870361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A202990.P14784649766362870361

namespace A202990

/-- `floor(∑[a(n-1)+floor(a(n-1))]^n)` -/
def P14784649766362870361.Spec : Prop :=
  ∀ n, (P14784649766362870361.a n : ℤ) = A202990 n

end A202990

/-! ## A202990.P10543146425735142601

`abs((A007283(n)-2)^n)`
-/

namespace A202990.P10543146425735142601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A007283 n - 2) ^ n|

end

end A202990.P10543146425735142601

namespace A202990

/-- `abs((A007283(n)-2)^n)` -/
def P10543146425735142601.Spec : Prop :=
  ∀ n, P10543146425735142601.a n = A202990 n

end A202990

/-! ## A202990.P10909751775719612767

`record[(3*n+1)^val(n+1, 2)]`
-/

namespace A202990.P10909751775719612767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202990.P10909751775719612767

namespace A202990

/-- `record[(3*n+1)^val(n+1, 2)]` -/
def P10909751775719612767.Spec : Prop :=
  ∀ n, (P10909751775719612767.a n : ℤ) = A202990 n

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

The programs for A202991, the canonical program `A202991.P4777638222412423383` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202991 has offset 0).

The definition of A202991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202991.P4777638222412423383

`(3^n-2)^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A202991

/-- `(3^n-2)^n` -/
def P4777638222412423383.Spec : Prop :=
  ∀ n, P4777638222412423383.a n = A202991 n

theorem P4777638222412423383.correct : P4777638222412423383.Spec := by
  intro n
  simp only [A202991]

end A202991

/-! ## A202991.P5857992724410276990

`abs(A168589(n)^n)`
-/

namespace A202991.P5857992724410276990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168589 n ^ n|

end

end A202991.P5857992724410276990

namespace A202991

/-- `abs(A168589(n)^n)` -/
def P5857992724410276990.Spec : Prop :=
  ∀ n, P5857992724410276990.a n = A202991 n

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

The programs for A202994, the canonical program `A202994.P5639417088933584221` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202994 has offset 1).

The definition of A202994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202994.P5639417088933584221

`A000203(A000583(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202994

/-- `A000203(A000583(n+1))` -/
def P5639417088933584221.Spec : Prop :=
  ∀ n, P5639417088933584221.a n = A202994 (n + 1)

theorem P5639417088933584221.correct : P5639417088933584221.Spec := by
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

/-! ## A202994.P12644152010587823133

`A065764((n+1)²)`
-/

namespace A202994.P12644152010587823133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 ((n + 1) ^ 2)

end

end A202994.P12644152010587823133

namespace A202994

/-- `A065764((n+1)²)` -/
def P12644152010587823133.Spec : Prop :=
  ∀ n, P12644152010587823133.a n = A202994 (n + 1)

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

/-! ## A202994.P3403615973338444793

`or(1, A065764((n+1)^2))`
-/

namespace A202994.P3403615973338444793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065764 ((n + 1) ^ 2))

end

end A202994.P3403615973338444793

namespace A202994

/-- `or(1, A065764((n+1)^2))` -/
def P3403615973338444793.Spec : Prop :=
  ∀ n, P3403615973338444793.a n = A202994 (n + 1)

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

/-! ## A202999.P10100759569411425738

`A053446(A367845(n))`
-/

namespace A202999.P10100759569411425738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053446 (A367845 n).toNat

end

end A202999.P10100759569411425738

