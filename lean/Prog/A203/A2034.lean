import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A203400: Partial sums of A050935.

The programs for A203400, the canonical program `A203400.P16012723149661697887` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203400 has offset 1).

The definition of A203400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203400.P4879744685577468157

`a(n-1)+A050935(n+1)` with `a(0)=0`
-/

namespace A203400.P4879744685577468157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A050935 (n + 1)

end

end A203400.P4879744685577468157

namespace A203400

/-- `a(n-1)+A050935(n+1)` -/
def P4879744685577468157.Spec : Prop :=
  ∀ n, P4879744685577468157.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P16012723149661697887

`2*a(n-1)-a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A203400

/-- `2*a(n-1)-a(n-2)-a(n-3)+a(n-4)` -/
def P16012723149661697887.Spec : Prop :=
  ∀ n, P16012723149661697887.a n = A203400 (n + 1)

theorem P16012723149661697887.correct : P16012723149661697887.Spec := by
  intro n
  simp only [A203400, Nat.add_sub_cancel]

end A203400

/-! ## A203400.P1850126866923991915

`∑[ogf(x^2/(1-x+x^3))]`
-/

namespace A203400.P1850126866923991915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -1, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203400.P1850126866923991915

namespace A203400

/-- `∑[ogf(x^2/(1-x+x^3))]` -/
def P1850126866923991915.Spec : Prop :=
  ∀ n, P1850126866923991915.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P7556851311839062568

`ogf(x^2/(1-2x+x^2+x^3-x^4))`
-/

namespace A203400.P7556851311839062568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, 1, 1, -1] n

end

end A203400.P7556851311839062568

namespace A203400

/-- `ogf(x^2/(1-2x+x^2+x^3-x^4))` -/
def P7556851311839062568.Spec : Prop :=
  ∀ n, P7556851311839062568.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P5613820103626795473

`∑[a(n-1)-a(n-3)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A203400.P5613820103626795473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203400.P5613820103626795473

namespace A203400

/-- `∑[a(n-1)-a(n-3)]` -/
def P5613820103626795473.Spec : Prop :=
  ∀ n, P5613820103626795473.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P13736285076007121986

`a(n-1)+1-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A203400.P13736285076007121986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + (1 - a (n - 3))

end

end A203400.P13736285076007121986

namespace A203400

/-- `a(n-1)+1-a(n-3)` -/
def P13736285076007121986.Spec : Prop :=
  ∀ n, P13736285076007121986.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P355231001784360730

`1-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A203400.P355231001784360730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  1 - (a (n - 3) - a (n - 1))

end

end A203400.P355231001784360730

namespace A203400

/-- `1-(a(n-3)-a(n-1))` -/
def P355231001784360730.Spec : Prop :=
  ∀ n, P355231001784360730.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P8560782974586060070

`∑[A050935(n+1)]`
-/

namespace A203400.P8560782974586060070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203400.P8560782974586060070

namespace A203400

/-- `∑[A050935(n+1)]` -/
def P8560782974586060070.Spec : Prop :=
  ∀ n, P8560782974586060070.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P3215184205698456603

`1-A050935(n+4)`
-/

namespace A203400.P3215184205698456603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A050935 (n + 4)

end

end A203400.P3215184205698456603

namespace A203400

/-- `1-A050935(n+4)` -/
def P3215184205698456603.Spec : Prop :=
  ∀ n, P3215184205698456603.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P17746267086077748835

`Δ[A077905(n)]*A057077(A005408(n))+1`
-/

namespace A203400.P17746267086077748835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057077 (A005408 n).toNat + 1

end

end A203400.P17746267086077748835

namespace A203400

/-- `Δ[A077905(n)]*A057077(A005408(n))+1` -/
def P17746267086077748835.Spec : Prop :=
  ∀ n, P17746267086077748835.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P18038947886074160518

`∑[-A078013(n+1)]`
-/

namespace A203400.P18038947886074160518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203400.P18038947886074160518

namespace A203400

/-- `∑[-A078013(n+1)]` -/
def P18038947886074160518.Spec : Prop :=
  ∀ n, P18038947886074160518.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P2736898898826560386

`A078013(n+4)+1`
-/

namespace A203400.P2736898898826560386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078013 (n + 4) + 1

end

end A203400.P2736898898826560386

namespace A203400

/-- `A078013(n+4)+1` -/
def P2736898898826560386.Spec : Prop :=
  ∀ n, P2736898898826560386.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P18042849144217335283

`1-A033999(n+1)*A247917(n+1)`
-/

namespace A203400.P18042849144217335283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033999 (n + 1) * A247917 (n + 1)

end

end A203400.P18042849144217335283

namespace A203400

/-- `1-A033999(n+1)*A247917(n+1)` -/
def P18042849144217335283.Spec : Prop :=
  ∀ n, P18042849144217335283.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P17541395923715376368

`A055975(2*n+1)*A247917(n+1)+1`
-/

namespace A203400.P17541395923715376368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) * A247917 (n + 1) + 1

end

end A203400.P17541395923715376368

namespace A203400

/-- `A055975(2*n+1)*A247917(n+1)+1` -/
def P17541395923715376368.Spec : Prop :=
  ∀ n, P17541395923715376368.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P8206899640076793484

`1-Δ[A077869(n)]`
-/

namespace A203400.P8206899640076793484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A203400.P8206899640076793484

namespace A203400

/-- `1-Δ[A077869(n)]` -/
def P8206899640076793484.Spec : Prop :=
  ∀ n, P8206899640076793484.a n = A203400 (n + 1)

end A203400

/-! ## A203400.P2975497287482371921

`Δ[Δ[A077869(n+2)]]+1`
-/

namespace A203400.P2975497287482371921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077869 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A203400.P2975497287482371921

namespace A203400

/-- `Δ[Δ[A077869(n+2)]]+1` -/
def P2975497287482371921.Spec : Prop :=
  ∀ n, P2975497287482371921.a n = A203400 (n + 1)

end A203400

/-!
# A203401: Number of (n+2)X(n+2) binary arrays avoiding patterns 000 and 111 in rows and columns.

The programs for A203401, there is no canonical definition to state claims against.
-/

/-! ## A203401.P2920104427508907959

`2*A238648(n+3)`
-/

namespace A203401.P2920104427508907959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238648 (n + 3)

end

end A203401.P2920104427508907959

/-! ## A203401.P10177123890502684429

`A238648(n+3)+A238648(n+3)+A011745(n)`
-/

namespace A203401.P10177123890502684429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238648 (n + 3) + (A238648 (n + 3) + A011745 n)

end

end A203401.P10177123890502684429

/-! ## A203401.P9766932590501022441

`A238648(n+3)+A238648(n+3)+A210716(n)`
-/

namespace A203401.P9766932590501022441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238648 (n + 3) + (A238648 (n + 3) + A210716 n)

end

end A203401.P9766932590501022441

/-! ## A203401.P12576641592317685238

`A203407(∑[4*n]+1)`
-/

namespace A203401.P12576641592317685238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203401.P12576641592317685238

/-! ## A203401.P2828994356253021908

`lcm(2, A203407(A001844(n)))`
-/

namespace A203401.P2828994356253021908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203407 (A001844 n).toNat)

end

end A203401.P2828994356253021908

/-!
# A203402: Number of (n+2)X5 binary arrays avoiding patterns 000 and 111 in rows and columns.

The programs for A203402, there is no canonical definition to state claims against.
-/

/-! ## A203402.P14045760629476053273

`2*A238651(n+3)`
-/

namespace A203402.P14045760629476053273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238651 (n + 3)

end

end A203402.P14045760629476053273

/-! ## A203402.P16339982337974399706

`A238651(n+3)/2^A008683(A020484(n))`
-/

namespace A203402.P16339982337974399706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238651 (n + 3) : ℚ) / (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)

end

end A203402.P16339982337974399706

/-! ## A203402.P8453102374834298870

`A203407(∑[n+2]+4)`
-/

namespace A203402.P8453102374834298870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203402.P8453102374834298870

/-! ## A203402.P11151134082982444672

`lcm(2, A203407(A167614(n+1)))`
-/

namespace A203402.P11151134082982444672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203407 (A167614 (n + 1)).toNat)

end

end A203402.P11151134082982444672

/-! ## A203402.P7141670241636208291

`A203407(A167614(n+1))+A185284(n)`
-/

namespace A203402.P7141670241636208291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (A167614 (n + 1)).toNat + A185284 n

end

end A203402.P7141670241636208291

/-!
# A203403: Number of (n+2)X6 binary arrays avoiding patterns 000 and 111 in rows and columns.

The programs for A203403, there is no canonical definition to state claims against.
-/

/-! ## A203403.P15009244613396759262

`2*A238652(n+3)`
-/

namespace A203403.P15009244613396759262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238652 (n + 3)

end

end A203403.P15009244613396759262

/-! ## A203403.P9561750908880555123

`A203407(A141214(n)+7)`
-/

namespace A203403.P9561750908880555123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (A141214 n + 7).toNat

end

end A203403.P9561750908880555123

/-! ## A203403.P12583684840332635053

`A203407(A052905(n)+9)`
-/

namespace A203403.P12583684840332635053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (A052905 n + 9).toNat

end

end A203403.P12583684840332635053

/-! ## A203403.P13150011751629650776

`A203407(A167614(n+2)+1)`
-/

namespace A203403.P13150011751629650776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (A167614 (n + 2) + 1).toNat

end

end A203403.P13150011751629650776

/-! ## A203403.P4023826746802236814

`A203407(Δ[A264443(n)-n²])`
-/

namespace A203403.P4023826746802236814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (f1 (n + 1) - f1 n).toNat

end

end A203403.P4023826746802236814

/-!
# A203404: Number of (n+2)X7 binary arrays avoiding patterns 000 and 111 in rows and columns.

The programs for A203404, there is no canonical definition to state claims against.
-/

/-! ## A203404.P2686609690803834356

`2*A238653(n+3)`
-/

namespace A203404.P2686609690803834356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238653 (n + 3)

end

end A203404.P2686609690803834356

/-! ## A203404.P9319876526821491797

`A238653(n+3)+A238653(n+3)+A000007(n+1)`
-/

namespace A203404.P9319876526821491797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238653 (n + 3) + (A238653 (n + 3) + A000007 (n + 1))

end

end A203404.P9319876526821491797

/-! ## A203404.P3246240175425443633

`A203407(A155212(n)+13)`
-/

namespace A203404.P3246240175425443633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (A155212 n + 13).toNat

end

end A203404.P3246240175425443633

/-! ## A203404.P15661082331604987447

`A203407(Δ[A264443(n)])`
-/

namespace A203404.P15661082331604987447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (f1 (n + 1) - f1 n).toNat

end

end A203404.P15661082331604987447

/-! ## A203404.P16389074436419027748

`A203407(A374005(n+1))`
-/

namespace A203404.P16389074436419027748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (A374005 (n + 1)).toNat

end

end A203404.P16389074436419027748

/-!
# A203405: Number of (n+2)X8 binary arrays avoiding patterns 000 and 111 in rows and columns.

The programs for A203405, there is no canonical definition to state claims against.
-/

/-! ## A203405.P11937287731016379773

`A203407(eq[7, A131818(n+1)])`
-/

namespace A203405.P11937287731016379773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203405.P11937287731016379773

/-! ## A203405.P9455577863248251039

`A203407(A374007(n+1))`
-/

namespace A203405.P9455577863248251039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (A374007 (n + 1)).toNat

end

end A203405.P9455577863248251039

/-! ## A203405.P2306362896417998981

`A203407(A052905(n+3))`
-/

namespace A203405.P2306362896417998981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (A052905 (n + 3)).toNat

end

end A203405.P2306362896417998981

/-! ## A203405.P8866941268799658556

`A203407(eq[3, A219347(n)])`
-/

namespace A203405.P8866941268799658556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203405.P8866941268799658556

/-! ## A203405.P1748909425147760999

`A203407(eq[5, A193592(n)])`
-/

namespace A203405.P1748909425147760999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203405.P1748909425147760999

/-!
# A203406: Number of (n+2)X9 binary arrays avoiding patterns 000 and 111 in rows and columns.

The programs for A203406, there is no canonical definition to state claims against.
-/

/-! ## A203406.P8096711336242370592

`A203407(eq[8, A131818(n+1)])`
-/

namespace A203406.P8096711336242370592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203406.P8096711336242370592

/-! ## A203406.P7479454304168007301

`A203407(A374008(n+1))`
-/

namespace A203406.P7479454304168007301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (A374008 (n + 1)).toNat

end

end A203406.P7479454304168007301

/-! ## A203406.P1327679817223737379

`A203407(eq[4, A219347(n)])`
-/

namespace A203406.P1327679817223737379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203406.P1327679817223737379

/-! ## A203406.P2333132743723046892

`A203407(eq[6, A193592(n)])`
-/

namespace A203406.P2333132743723046892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203406.P2333132743723046892

/-! ## A203406.P10768193986193952674

`A203407(eq[7, A200370(n+1)])`
-/

namespace A203406.P10768193986193952674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203406.P10768193986193952674

/-!
# A203408: Numbers which are both heptagonal and decagonal.

The programs for A203408, there is no canonical definition to state claims against.
-/

/-! ## A203408.P4448592098574214296

`A274579(A004767(n)-gcd(2, n+1))`
-/

namespace A203408.P4448592098574214296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274579 (A004767 n - (Nat.gcd 2 (n + 1) : ℤ)).toNat

end

end A203408.P4448592098574214296

/-!
# A203409: Indices of heptagonal numbers that are also decagonal.

The programs for A203409, there is no canonical definition to state claims against.
-/

/-! ## A203409.P16540045870870772140

`A052454(A004526(3*n)+1)*A221874(n+1)`
-/

namespace A203409.P16540045870870772140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052454 (A004526 (3 * n) + 1).toNat * A221874 (n + 1)

end

end A203409.P16540045870870772140

/-! ## A203409.P9861706862683572292

`(2*A254332(n+1)-1)*A052454(A004526(3*n)+1)`
-/

namespace A203409.P9861706862683572292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A254332 (n + 1) - 1) * A052454 (A004526 (3 * n) + 1).toNat

end

end A203409.P9861706862683572292

/-! ## A203409.P1302784396174036301

`A031150(A047346(n+1))*A052454(A004526(3*n)+1)`
-/

namespace A203409.P1302784396174036301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031150 (A047346 (n + 1)).toNat * A052454 (A004526 (3 * n) + 1).toNat

end

end A203409.P1302784396174036301

/-! ## A203409.P16088704634037881027

`A052454(A004526(3*n)+1)*A295334(A047241(n+1))`
-/

namespace A203409.P16088704634037881027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052454 (A004526 (3 * n) + 1).toNat * A295334 (A047241 (n + 1)).toNat

end

end A203409.P16088704634037881027

/-! ## A203409.P4124647005057420171

`A031150(A047355(n+1)+1)*A052454(A004526(3*n)+1)`
-/

namespace A203409.P4124647005057420171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031150 (A047355 (n + 1) + 1).toNat * A052454 (A004526 (3 * n) + 1).toNat

end

end A203409.P4124647005057420171

/-!
# A203410: Indices of decagonal numbers that are also heptagonal.

The programs for A203410, there is no canonical definition to state claims against.
-/

/-! ## A203410.P7210909325746079134

`ceil(sqrt(A203408(n+1))/2)`
-/

namespace A203410.P7210909325746079134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A203408 (n + 1) : ℝ) / 2⌉

end

end A203410.P7210909325746079134

/-!
# A203411: Discriminant of the cyclotomic binomial period polynomial for an odd prime.

The programs for A203411, there is no canonical definition to state claims against.
-/

/-! ## A203411.P7165913037652775095

`record[∑{p}[2*n+3, #^n]]`
-/

namespace A203411.P7165913037652775095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203411.P7165913037652775095

/-! ## A203411.P4051035113562380135

`record[∏{d}[2*n+1, #^(#-(n+2))]]`
-/

namespace A203411.P4051035113562380135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (d : ℚ) ^ ((d : ℤ) - (n + 2 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203411.P4051035113562380135

/-! ## A203411.P4757930969367105142

`record[∏{p}[2*n+1, #^(#-(n+2))]]`
-/

namespace A203411.P4757930969367105142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (p : ℚ) ^ ((p : ℤ) - (n + 2 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203411.P4757930969367105142

/-! ## A203411.P8482329037403176900

`A193681(p?[2*n+1])`
-/

namespace A203411.P8482329037403176900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193681 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A203411.P8482329037403176900

/-! ## A203411.P2788021178136227052

`A193681(A045344(n+1))`
-/

namespace A203411.P2788021178136227052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193681 (A045344 (n + 1)).toNat

end

end A203411.P2788021178136227052

/-!
# A203413: G.f.: exp( Sum_{n>=1} A203414(n)*x^n/n ) where A203414(n) = n*Pell(n)*Sum_{d|n} 1/(d*Pell(d)).

The programs for A203413, there is no canonical definition to state claims against.
-/

/-! ## A203413.P10836144785755507659

`A194698(13*A237262(n+1))`
-/

namespace A203413.P10836144785755507659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (13 * A237262 (n + 1)).toNat

end

end A203413.P10836144785755507659

/-! ## A203413.P10526112510956571038

`A194698(lcm(13, A237262(n+1)))`
-/

namespace A203413.P10526112510956571038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (Int.lcm 13 (A237262 (n + 1)))

end

end A203413.P10526112510956571038

/-! ## A203413.P8544135961699645639

`∑[A307438(record[A263489(n+2)])]`
-/

namespace A203413.P8544135961699645639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263489 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307438 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203413.P8544135961699645639

/-!
# A203414: a(n) = n*Pell(n) * Sum_{d|n} 1/(d*Pell(d)) where Pell(n) = A000129(n).

The programs for A203414, there is no canonical definition to state claims against.
-/

/-! ## A203414.P7862839666163783789

`A338910(a(n-2))` with `a(0)=1, a(1)=5, a(2)=16, a(3)=61`
-/

namespace A203414.P7862839666163783789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 16, 61] fun n a =>
  A338910 (a (n - 2)).toNat

end

end A203414.P7862839666163783789

/-!
# A203415: Vandermonde determinant of the first n nonprimes (A018252).

The programs for A203415, there is no canonical definition to state claims against.
-/

/-! ## A203415.P644224626038164081

`A000178(n)*A203417(n+1)`
-/

namespace A203415.P644224626038164081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203417 (n + 1)

end

end A203415.P644224626038164081

/-! ## A203415.P15738514133446486980

`∏[A000142(n)]*A203417(n+1)`
-/

namespace A203415.P15738514133446486980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A203417 (n + 1)

end

end A203415.P15738514133446486980

/-! ## A203415.P3095478094191797058

`∏[Δ[A003422(n)]]*A203417(n+1)`
-/

namespace A203415.P3095478094191797058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A203417 (n + 1)

end

end A203415.P3095478094191797058

/-! ## A203415.P6493883918750974590

`A203417(n+1)/A203420(n+1)*A203418(n+1)`
-/

namespace A203415.P6493883918750974590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203417 (n + 1) : ℚ) / (A203420 (n + 1) : ℚ) * (A203418 (n + 1) : ℚ)

end

end A203415.P6493883918750974590

/-! ## A203415.P5700967361447643497

`∏[A203416(n+1)]/A203416(n+1)`
-/

namespace A203415.P5700967361447643497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203416 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203416 (n + 1) : ℚ)

end

end A203415.P5700967361447643497

/-!
# A203416: a(n) = A203415(n+1)/A203415(n).

The programs for A203416, there is no canonical definition to state claims against.
-/

/-! ## A203416.P4773632873062410257

`A203415(n+2)/A203415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203416.P4773632873062410257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203415 (n + 2) : ℚ) / (A203415 (n + 1) : ℚ)

end

end A203416.P4773632873062410257

/-! ## A203416.P12032940821049276064

`A072668(n+1)*A080498(lt[1, A074206(n)])`
-/

namespace A203416.P12032940821049276064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) * A080498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A203416.P12032940821049276064

/-! ## A203416.P1826031454334909354

`A072668(n+1)*A080498(lt[1, A175126(n)])`
-/

namespace A203416.P1826031454334909354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) * A080498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A203416.P1826031454334909354

/-! ## A203416.P906091604760501502

`A072668(n+1)*A080498(A072668(n+1)+1)`
-/

namespace A203416.P906091604760501502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) * A080498 (A072668 (n + 1) + 1).toNat

end

end A203416.P906091604760501502

/-! ## A203416.P10169922990220063898

`(A002808(n+1)-1)*A080498(A002808(n+1))`
-/

namespace A203416.P10169922990220063898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) - 1) * A080498 (A002808 (n + 1)).toNat

end

end A203416.P10169922990220063898

/-!
# A203417: a(n) = A203415(n)/A000178(n).

The programs for A203417, there is no canonical definition to state claims against.
-/

/-! ## A203417.P15541204447515124634

`A203415(n+1)/A000178(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203417.P15541204447515124634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203415 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203417.P15541204447515124634

/-! ## A203417.P4439705062184814640

`A203415(n+1)/A290518(∑[n])`
-/

namespace A203417.P4439705062184814640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203415 (n + 1) : ℚ) / (A290518 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A203417.P4439705062184814640

/-! ## A203417.P10737243039303898800

`A203415(n+1)/∏[A000142(n)]`
-/

namespace A203417.P10737243039303898800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203415 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A203417.P10737243039303898800

/-! ## A203417.P12190877097751035717

`A203415(n+1)/∏[∏[A028310(n)]]`
-/

namespace A203417.P12190877097751035717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203415 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A203417.P12190877097751035717

/-! ## A203417.P12126184501546911292

`A203415(n+1)/A203418(n+1)*A203420(n+1)`
-/

namespace A203417.P12126184501546911292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203415 (n + 1) : ℚ) / (A203418 (n + 1) : ℚ) * (A203420 (n + 1) : ℚ)

end

end A203417.P12126184501546911292

/-!
# A203418: Vandermonde determinant of the first n composite numbers (A002808).

The programs for A203418, there is no canonical definition to state claims against.
-/

/-! ## A203418.P12467376838389871087

`∏[n*a(n-1)]*A203420(n+1)` with `a(0)=1`
-/

namespace A203418.P12467376838389871087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A203420 (n + 1)

end

end A203418.P12467376838389871087

/-! ## A203418.P13438220437848864193

`∏[A080498(A002808(n+1))]`
-/

namespace A203418.P13438220437848864193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080498 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203418.P13438220437848864193

/-! ## A203418.P16947213809771668280

`∏[A080498(A018252(n+2))]`
-/

namespace A203418.P16947213809771668280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080498 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203418.P16947213809771668280

/-! ## A203418.P10157069858765367730

`A000178(n)*A203420(n+1)`
-/

namespace A203418.P10157069858765367730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203420 (n + 1)

end

end A203418.P10157069858765367730

/-! ## A203418.P9269072989175543125

`∏[A000142(n)]*A203420(n+1)`
-/

namespace A203418.P9269072989175543125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A203420 (n + 1)

end

end A203418.P9269072989175543125

/-!
# A203419: a(n) = A203418(n+1)/A203418(n).

The programs for A203419, there is no canonical definition to state claims against.
-/

/-! ## A203419.P955995408876916257

`A203418(n+2)/A203418(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203419.P955995408876916257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203418 (n + 2) : ℚ) / (A203418 (n + 1) : ℚ)

end

end A203419.P955995408876916257

/-! ## A203419.P11185187539906541300

`A080498(A002808(n+2))`
-/

namespace A203419.P11185187539906541300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080498 (A002808 (n + 2)).toNat

end

end A203419.P11185187539906541300

/-! ## A203419.P5679007642921734109

`A080498(A056653(n+2))`
-/

namespace A203419.P5679007642921734109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080498 (A056653 (n + 2)).toNat

end

end A203419.P5679007642921734109

/-! ## A203419.P4103230115476529268

`A080498(A018252(n+3))`
-/

namespace A203419.P4103230115476529268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080498 (A018252 (n + 3)).toNat

end

end A203419.P4103230115476529268

/-! ## A203419.P7047172795080412934

`A080498(A065090(n+4))`
-/

namespace A203419.P7047172795080412934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080498 (A065090 (n + 4)).toNat

end

end A203419.P7047172795080412934

/-! ## A203419.P2858511128426175575

`A080498(A141468(n+4))`
-/

namespace A203419.P2858511128426175575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080498 (A141468 (n + 4)).toNat

end

end A203419.P2858511128426175575

/-!
# A203420: a(n) = A203418(n)/A000178(n).

The programs for A203420, there is no canonical definition to state claims against.
-/

/-! ## A203420.P9004554310062569984

`A203418(n+1)/A000178(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203420.P9004554310062569984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203418 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203420.P9004554310062569984

/-! ## A203420.P3550258527551373485

`A203418(n+1)/A107415(∑[n])`
-/

namespace A203420.P3550258527551373485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203418 (n + 1) : ℚ) / (A107415 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A203420.P3550258527551373485

/-! ## A203420.P12773306027484650716

`A203418(n+1)/∏[A000142(n)]`
-/

namespace A203420.P12773306027484650716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203418 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A203420.P12773306027484650716

/-! ## A203420.P902216192768703893

`A203418(n+1)/(A030428(n)+1)`
-/

namespace A203420.P902216192768703893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203418 (n + 1) : ℚ) / (A030428 n + 1 : ℚ)

end

end A203420.P902216192768703893

/-! ## A203420.P5499124387206119306

`∏[A080498(A002808(n+1))]/A000178(n)`
-/

namespace A203420.P5499124387206119306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080498 (A002808 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000178 n : ℚ)

end

end A203420.P5499124387206119306

/-!
# A203421: Reciprocal of Vandermonde determinant of (1,1/2,...,1/n).

The programs for A203421, there is no canonical definition to state claims against.
-/

/-! ## A203421.P5234769032617968539

`A057077(n)*A002109(n)/n!`
-/

namespace A203421.P5234769032617968539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057077 n * A002109 n : ℚ) / (Nat.factorial n : ℚ)

end

end A203421.P5234769032617968539

/-! ## A203421.P11334165512334633354

`∏[(-n)^((n-1)%(n+1))]`
-/

namespace A203421.P11334165512334633354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ) : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203421.P11334165512334633354

/-! ## A203421.P12580888357215146264

`(-n)^(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A203421.P12580888357215146264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (-(n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1)

end

end A203421.P12580888357215146264

/-! ## A203421.P9188142109188153758

`∏[(C(2, n+2)-n)^(n-1)]`
-/

namespace A203421.P9188142109188153758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n + 2) : ℤ) - (n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203421.P9188142109188153758

/-! ## A203421.P15444346167655226376

`∏[or(-n, (n+1)!)^(n-1)]`
-/

namespace A203421.P15444346167655226376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (-(n : ℤ)) (Nat.factorial (n + 1) : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203421.P15444346167655226376

/-!
# A203422: Reciprocal of Vandermonde determinant of (1/2,1/3,...,1/(n+1)).

The programs for A203422, there is no canonical definition to state claims against.
-/

/-! ## A203422.P3313019657329317713

`∏[(n+1)*(-(n+2))^n]`
-/

namespace A203422.P3313019657329317713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-(n + 2 : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203422.P3313019657329317713

/-! ## A203422.P7958517363486856507

`(n+1)*(-(n+2))^n*a(n-1)` with `a(0)=1`
-/

namespace A203422.P7958517363486856507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * (-(n + 2 : ℤ)) ^ n * a (n - 1)

end

end A203422.P7958517363486856507

/-!
# A203423: a(n) = w(n+1)/(2*w(n)), where w=A203422.

The programs for A203423, the canonical program `A203423.P8514608259224849318` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203423 has offset 1).

The definition of A203423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203423.P8514608259224849318

`(-1)^(n+1)*(n+2)*(n+3)^(n+1)/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A203423

/-- `(-1)^(n+1)*(n+2)*(n+3)^(n+1)/2` -/
def P8514608259224849318.Spec : Prop :=
  ∀ n, P8514608259224849318.a n = (A203423 (n + 1) : ℚ)

end A203423

/-! ## A203423.P8526904446648842488

`ceil(A203427(n+1)/A000079(n))`
-/

namespace A203423.P8526904446648842488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203427 (n + 1) : ℚ) / (A000079 n : ℚ)⌉

end

end A203423.P8526904446648842488

namespace A203423

/-- `ceil(A203427(n+1)/A000079(n))` -/
def P8526904446648842488.Spec : Prop :=
  ∀ n, P8526904446648842488.a n = A203423 (n + 1)

end A203423

/-! ## A203423.P1317718486486666782

`floor(A203427(n+1)/A017980(3*n))`
-/

namespace A203423.P1317718486486666782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A203427 (n + 1) : ℚ) / (A017980 (3 * n) : ℚ)⌋

end

end A203423.P1317718486486666782

namespace A203423

/-- `floor(A203427(n+1)/A017980(3*n))` -/
def P1317718486486666782.Spec : Prop :=
  ∀ n, P1317718486486666782.a n = A203423 (n + 1)

end A203423

/-!
# A203424: Reciprocal of Vandermonde determinant of (1/2,1/4,...,1/(2n)).

The programs for A203424, there is no canonical definition to state claims against.
-/

/-! ## A203424.P12572542512733872528

`2^C(n+1, 2)*A203421(n+1)`
-/

namespace A203424.P12572542512733872528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose (n + 1) 2 : ℤ) * A203421 (n + 1)

end

end A203424.P12572542512733872528

/-! ## A203424.P17626174720465366758

`∏[(-2*(n+1))^n]`
-/

namespace A203424.P17626174720465366758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(2 * (n + 1) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203424.P17626174720465366758

/-! ## A203424.P15924768356926682015

`(-2*(n+1))^n*a(n-1)` with `a(0)=1`
-/

namespace A203424.P15924768356926682015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-(2 * (n + 1) : ℤ)) ^ n * a (n - 1)

end

end A203424.P15924768356926682015

/-! ## A203424.P1306256875639325514

`(n+1)^n*a(n-1)*(-2)^n` with `a(0)=1`
-/

namespace A203424.P1306256875639325514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ n : ℤ) * a (n - 1) * (-2) ^ n

end

end A203424.P1306256875639325514

/-!
# A203425: a(n) = w(n+1)/(4*w(n)), where w = A203424.

The programs for A203425, there is no canonical definition to state claims against.
-/

/-! ## A203425.P9671267541600554417

`2^(n-1)*(-(n+2))^(n+1)`
-/

namespace A203425.P9671267541600554417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((-(n + 2 : ℤ)) ^ (n + 1) : ℚ)

end

end A203425.P9671267541600554417

/-! ## A203425.P4651464947784864007

`Δ[∑[(-A103517(n))^n]/4]`
-/

namespace A203425.P4651464947784864007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A103517 n) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203425.P4651464947784864007

/-! ## A203425.P6346348605647536738

`(2*(n+2)/A008683(A151800(n)))^(n+1)/4`
-/

namespace A203425.P6346348605647536738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 2) : ℚ) / (A008683 (A151800 n).toNat : ℚ)) ^ (n + 1) / 4

end

end A203425.P6346348605647536738

/-! ## A203425.P2273793602281855166

`ratio[A203424(n+1)]/4`
-/

namespace A203425.P2273793602281855166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203424 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) / 4

end

end A203425.P2273793602281855166

/-!
# A203426: Reciprocal of Vandermonde determinant of (1/4,1/6,...,1/(2n+2)).

The programs for A203426, there is no canonical definition to state claims against.
-/

/-! ## A203426.P9838244320062090016

`∏[A000079(n)]*A203422(n+1)`
-/

namespace A203426.P9838244320062090016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A203422 (n + 1)

end

end A203426.P9838244320062090016

/-!
# A203427: a(n) = w(n+1)/(4*w(n)), where w = A203426.

The programs for A203427, there is no canonical definition to state claims against.
-/

/-! ## A203427.P2269451540201376755

`∑[n+1]/(n+1)*(-(n+3))^(n+1)*2^n`
-/

namespace A203427.P2269451540201376755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) * ((-(n + 3 : ℤ)) ^ (n + 1) : ℚ) * (2 ^ n : ℚ)

end

end A203427.P2269451540201376755

/-! ## A203427.P5826952262389641547

`A203423(n+1)/2^-n`
-/

namespace A203427.P5826952262389641547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203423 (n + 1) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A203427.P5826952262389641547

/-! ## A203427.P4281407448576417838

`floor((n+2)/2*(-(n+3))^(n+1)*A000079(n))`
-/

namespace A203427.P4281407448576417838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2 * ((-(n + 3 : ℤ)) ^ (n + 1) : ℚ) * (A000079 n : ℚ)⌋

end

end A203427.P4281407448576417838

/-! ## A203427.P12788468346326242204

`(n+2)/2*(-(n+3))^(n+1)/(A062157(n)/2)^n`
-/

namespace A203427.P12788468346326242204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * ((-(n + 3 : ℤ)) ^ (n + 1) : ℚ) / ((A062157 n : ℚ) / 2) ^ n

end

end A203427.P12788468346326242204

/-! ## A203427.P13581577821808098636

`ratio[A203426(n+1)]/4`
-/

namespace A203427.P13581577821808098636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203426 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) / 4

end

end A203427.P13581577821808098636

/-!
# A203428: Reciprocal of Vandermonde determinant of (1/3,1/6,...,1/(3n)).

The programs for A203428, there is no canonical definition to state claims against.
-/

/-! ## A203428.P17130215266729401555

`∏[(-3*(n+1))^n]`
-/

namespace A203428.P17130215266729401555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(3 * (n + 1) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203428.P17130215266729401555

/-! ## A203428.P15791122308285366657

`(-3*(n+1))^n*a(n-1)` with `a(0)=1`
-/

namespace A203428.P15791122308285366657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-(3 * (n + 1) : ℤ)) ^ n * a (n - 1)

end

end A203428.P15791122308285366657

/-!
# A203429: a(n) = w(n+1)/(3*w(n)), where w = A203428.

The programs for A203429, there is no canonical definition to state claims against.
-/

/-! ## A203429.P14921685232096176282

`(-3*(n+2))^(n+1)/3`
-/

namespace A203429.P14921685232096176282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-(3 * (n + 2) : ℤ)) ^ (n + 1) : ℚ) / 3

end

end A203429.P14921685232096176282

/-! ## A203429.P413108243551394082

`3^n*A213236(n+2)`
-/

namespace A203429.P413108243551394082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A213236 (n + 2)

end

end A203429.P413108243551394082

/-! ## A203429.P1113010623022163041

`A001489(n+2)^(n+1)*3^n`
-/

namespace A203429.P1113010623022163041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 2) ^ (n + 1) * (3 ^ n : ℤ)

end

end A203429.P1113010623022163041

/-! ## A203429.P8011947853639143266

`floor((-(A016789(n+1)+1))^(n+1)/3)`
-/

namespace A203429.P8011947853639143266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((-(A016789 (n + 1) + 1)) ^ (n + 1) : ℚ) / 3⌋

end

end A203429.P8011947853639143266

/-! ## A203429.P16706739612609450193

`A130472(2*n+3)^n*3^n*A130472(2*n+3)`
-/

namespace A203429.P16706739612609450193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (2 * n + 3) ^ n * (3 ^ n : ℤ) * A130472 (2 * n + 3)

end

end A203429.P16706739612609450193

/-!
# A203430: Vandermonde determinant of the first n numbers (1,3,4,6,7,9,10,...) = (j+floor(j/2)).

The programs for A203430, there is no canonical definition to state claims against.
-/

/-! ## A203430.P15889044435539159990

`a(n-1)*A203431(n)` with `a(0)=1`
-/

namespace A203430.P15889044435539159990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203431 n

end

end A203430.P15889044435539159990

/-! ## A203430.P1672035066116847770

`A000178(n)*A203432(n+1)`
-/

namespace A203430.P1672035066116847770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203432 (n + 1)

end

end A203430.P1672035066116847770

/-! ## A203430.P4228632111704611118

`∏[A000142(n)]*A203432(n+1)`
-/

namespace A203430.P4228632111704611118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A203432 (n + 1)

end

end A203430.P4228632111704611118

/-! ## A203430.P9556840125626347230

`A107415(A000217(n))*A203432(n+1)`
-/

namespace A203430.P9556840125626347230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107415 (A000217 n).toNat * A203432 (n + 1)

end

end A203430.P9556840125626347230

/-! ## A203430.P14955619894703854655

`∏[A203431(n+1)]/A203431(n+1)`
-/

namespace A203430.P14955619894703854655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203431 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203431 (n + 1) : ℚ)

end

end A203430.P14955619894703854655

/-!
# A203431: a(n) = v(n+1)/v(n), where v=A203430.

The programs for A203431, there is no canonical definition to state claims against.
-/

/-! ## A203431.P8425473945653215246

`∑[gcd(2, n)]*A014402(n)`
-/

namespace A203431.P8425473945653215246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A014402 n

end

end A203431.P8425473945653215246

/-! ## A203431.P3935759912719727932

`a(n-2)*∑[A165988(n)]` with `a(0)=2, a(1)=3`
-/

namespace A203431.P3935759912719727932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203431.P3935759912719727932

/-! ## A203431.P11400383693303697325

`a(n-2)*A057780(n+1)` with `a(0)=2, a(1)=3`
-/

namespace A203431.P11400383693303697325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) * A057780 (n + 1)

end

end A203431.P11400383693303697325

/-! ## A203431.P9474524849847456906

`3*a(n-2)*A001082(n+1)` with `a(0)=2, a(1)=3`
-/

namespace A203431.P9474524849847456906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 * (a (n - 2) * A001082 (n + 1))

end

end A203431.P9474524849847456906

/-! ## A203431.P17972629496717834678

`A007494(n+1)*A014402(n)`
-/

namespace A203431.P17972629496717834678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1) * A014402 n

end

end A203431.P17972629496717834678

/-! ## A203431.P6908712487950123385

`(A032766(n)+2)*A014402(n)`
-/

namespace A203431.P6908712487950123385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032766 n + 2) * A014402 n

end

end A203431.P6908712487950123385

/-! ## A203431.P5099613351484597139

`(A001651(n+1)+1)*A014402(n)`
-/

namespace A203431.P5099613351484597139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001651 (n + 1) + 1) * A014402 n

end

end A203431.P5099613351484597139

/-! ## A203431.P1909222215496556504

`A014402(n+2)/A032766(n+2)`
-/

namespace A203431.P1909222215496556504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014402 (n + 2) : ℚ) / (A032766 (n + 2) : ℚ)

end

end A203431.P1909222215496556504

/-!
# A203432: a(n) = A203430(n)/A000178(n) where A000178=(superfactorials).

The programs for A203432, there is no canonical definition to state claims against.
-/

/-! ## A203432.P16541819725667021974

`A203430(n+1)/A000178(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203432.P16541819725667021974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203430 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203432.P16541819725667021974

/-! ## A203432.P13603337044332462083

`A203430(n+1)/∏[A000142(n)]`
-/

namespace A203432.P13603337044332462083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203430 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A203432.P13603337044332462083

/-! ## A203432.P12840818665944095848

`A203420(n+1)/A203418(n+1)*A203430(n+1)`
-/

namespace A203432.P12840818665944095848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203420 (n + 1) : ℚ) / (A203418 (n + 1) : ℚ) * (A203430 (n + 1) : ℚ)

end

end A203432.P12840818665944095848

/-! ## A203432.P12835737207999244994

`A203430(n+1)/A093883(n+1)*A203469(n+1)`
-/

namespace A203432.P12835737207999244994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203430 (n + 1) : ℚ) / (A093883 (n + 1) : ℚ) * (A203469 (n + 1) : ℚ)

end

end A203432.P12835737207999244994

/-! ## A203432.P15946580254495324977

`A203430(n+1)/A203470(n+1)*A203471(n+1)`
-/

namespace A203432.P15946580254495324977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203430 (n + 1) : ℚ) / (A203470 (n + 1) : ℚ) * (A203471 (n + 1) : ℚ)

end

end A203432.P15946580254495324977

/-!
# A203433: Vandermonde determinant of the first n terms of (2,3,5,6,8,9,...) = (j+floor((j+1)/2)).

The programs for A203433, there is no canonical definition to state claims against.
-/

/-! ## A203433.P18056739125559667558

`∏[A014402(n)]`
-/

namespace A203433.P18056739125559667558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203433.P18056739125559667558

/-! ## A203433.P15984903699189189567

`A000178(n)*A203434(n+1)`
-/

namespace A203433.P15984903699189189567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203434 (n + 1)

end

end A203433.P15984903699189189567

/-! ## A203433.P12267519896492322508

`∏[record[A318918(n)]/A000034(n)]`
-/

namespace A203433.P12267519896492322508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318918 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203433.P12267519896492322508

/-! ## A203433.P13716787225681763961

`∏[A000142(n)]*A203434(n+1)`
-/

namespace A203433.P13716787225681763961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A203434 (n + 1)

end

end A203433.P13716787225681763961

/-! ## A203433.P9567104029064957657

`∏[record[A318918(n)]/(2-A059841(n))]`
-/

namespace A203433.P9567104029064957657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318918 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (2 - A059841 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203433.P9567104029064957657

/-!
# A203434: a(n) = A203433(n)/A000178(n) where A000178=(superfactorials).

The programs for A203434, there is no canonical definition to state claims against.
-/

/-! ## A203434.P14845175625294160491

`A203433(n+1)/A000178(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203434.P14845175625294160491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203433 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203434.P14845175625294160491

/-! ## A203434.P18366274602501296380

`∏[A014402(n)/A000142(n)]`
-/

namespace A203434.P18366274602501296380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014402 n : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203434.P18366274602501296380

/-! ## A203434.P6647333125625569573

`∏[abs(A014402(n)/A133942(n))]`
-/

namespace A203434.P6647333125625569573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A014402 n : ℚ) / (A133942 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203434.P6647333125625569573

/-! ## A203434.P16665394671941214136

`∏[abs(A014402(n)/A165233(n))]`
-/

namespace A203434.P16665394671941214136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A014402 n : ℚ) / (A165233 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203434.P16665394671941214136

/-!
# A203435: Number of partitions of {1,2,...,4n} into n 4-element subsets having the same sum.

The programs for A203435, there is no canonical definition to state claims against.
-/

/-! ## A203435.P9159455595820521471

`A203986(∑[a(n-1)+1])` with `a(0)=4, a(1)=12, a(2)=7`
-/

namespace A203435.P9159455595820521471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 12, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203435.P9159455595820521471

/-! ## A203435.P786458130428709280

`A203986(2*n+∑[n+3]+7)`
-/

namespace A203435.P786458130428709280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203986 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A203435.P786458130428709280

/-! ## A203435.P5295938496585587910

`A326525(n)+A203986(A052905(n+2))`
-/

namespace A203435.P5295938496585587910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326525 n + A203986 (A052905 (n + 2)).toNat

end

end A203435.P5295938496585587910

/-! ## A203435.P8888975138703978226

`A203986(A052905(n+2))*A203986(n)`
-/

namespace A203435.P8888975138703978226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203986 (A052905 (n + 2)).toNat * A203986 n

end

end A203435.P8888975138703978226

/-!
# A203436: Number of n X n 0..7 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203436, there is no canonical definition to state claims against.
-/

/-! ## A203436.P6542919190952115334

`A203443(∑[4*n]+1)`
-/

namespace A203436.P6542919190952115334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203436.P6542919190952115334

/-!
# A203437: Number of nX2 0..7 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203437, there is no canonical definition to state claims against.
-/

/-! ## A203437.P2951581773948621933

`record[ratio[A203443(n+1)]]`
-/

namespace A203437.P2951581773948621933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203437.P2951581773948621933

/-! ## A203437.P3680318816651056785

`A203443(∑[n+1]+2)`
-/

namespace A203437.P3680318816651056785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203437.P3680318816651056785

/-! ## A203437.P15884610828299773274

`record[A010054(n)*A203443(n+2)]`
-/

namespace A203437.P15884610828299773274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203443 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203437.P15884610828299773274

/-! ## A203437.P14823270743422655036

`record[A203443(n+2)/A157150(n)]`
-/

namespace A203437.P14823270743422655036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203443 (n + 2) : ℚ) / (A157150 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203437.P14823270743422655036

/-! ## A203437.P13499635433459269487

`record[root(A203443(n+1), A102480(n))]`
-/

namespace A203437.P13499635433459269487
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203443 (n + 1) : ℝ) ^ (1 / (A102480 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203437.P13499635433459269487

/-!
# A203438: Number of nX3 0..7 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203438, there is no canonical definition to state claims against.
-/

/-! ## A203438.P11683339686670930009

`A203443(∑[n+2]+4)`
-/

namespace A203438.P11683339686670930009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203438.P11683339686670930009

/-! ## A203438.P2800424881495476257

`record[A010054(n)*A203443(n+3)]`
-/

namespace A203438.P2800424881495476257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203443 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203438.P2800424881495476257

/-! ## A203438.P4690149157484789196

`record[gcd(A106356(n+1), A203443(n+5))]`
-/

namespace A203438.P4690149157484789196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106356 (n + 1)) (A203443 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203438.P4690149157484789196

/-! ## A203438.P3492938412153849519

`A203443(A167614(n+1))+∑{digits}[n, #]-∏{digits}[n, #]`
-/

namespace A203438.P3492938412153849519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (A167614 (n + 1)).toNat + (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ))

end

end A203438.P3492938412153849519

/-! ## A203438.P5078894788072339756

`A203443(A167614(n+1))+A054899(n)`
-/

namespace A203438.P5078894788072339756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (A167614 (n + 1)).toNat + A054899 n

end

end A203438.P5078894788072339756

/-!
# A203439: Number of n X 4 0..7 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203439, there is no canonical definition to state claims against.
-/

/-! ## A203439.P1097033171300545720

`A203443(A374004(n+1))`
-/

namespace A203439.P1097033171300545720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (A374004 (n + 1)).toNat

end

end A203439.P1097033171300545720

/-! ## A203439.P10486332393122435146

`A203443(A145018(n+4))`
-/

namespace A203439.P10486332393122435146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (A145018 (n + 4)).toNat

end

end A203439.P10486332393122435146

/-! ## A203439.P1288968185366264791

`A203443(A141214(n)+7)`
-/

namespace A203439.P1288968185366264791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (A141214 n + 7).toNat

end

end A203439.P1288968185366264791

/-! ## A203439.P10652113001053841532

`A203443(A052905(n)+9)`
-/

namespace A203439.P10652113001053841532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (A052905 n + 9).toNat

end

end A203439.P10652113001053841532

/-!
# A203440: Number of nX5 0..7 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203440, there is no canonical definition to state claims against.
-/

/-! ## A203440.P3678413551753358523

`A203443(A374005(n+1))`
-/

namespace A203440.P3678413551753358523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (A374005 (n + 1)).toNat

end

end A203440.P3678413551753358523

/-! ## A203440.P1277237553172095485

`A203443(A056000(n)+15)`
-/

namespace A203440.P1277237553172095485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (A056000 n + 15).toNat

end

end A203440.P1277237553172095485

/-!
# A203441: Number of nX6 0..7 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203441, there is no canonical definition to state claims against.
-/

/-! ## A203441.P2735689029807764074

`A203443(A374007(n+1))`
-/

namespace A203441.P2735689029807764074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203443 (A374007 (n + 1)).toNat

end

end A203441.P2735689029807764074

/-!
# A203443: T(n,k)=Number of nXk 0..7 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203443, there is no canonical definition to state claims against.
-/

/-! ## A203443.P15640083634446461735

`A075449(A056941(n))`
-/

namespace A203443.P15640083634446461735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075449 (A056941 n).toNat

end

end A203443.P15640083634446461735

/-! ## A203443.P2242442269093202991

`A202916(A157243(n))`
-/

namespace A203443.P2242442269093202991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202916 (A157243 n).toNat

end

end A203443.P2242442269093202991

/-! ## A203443.P9583057094307625663

`A026233(A157150(n*A124094(n)))`
-/

namespace A203443.P9583057094307625663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A157150 ((n : ℤ) * A124094 n).toNat).toNat

end

end A203443.P9583057094307625663

/-! ## A203443.P4845436516605581289

`A026233(A157150(n*A293112(n)))`
-/

namespace A203443.P4845436516605581289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A157150 ((n : ℤ) * A293112 n).toNat).toNat

end

end A203443.P4845436516605581289

/-! ## A203443.P2534836817657703868

`A272644(n+2)+A190310(A272644(n+2))`
-/

namespace A203443.P2534836817657703868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272644 (n + 2) + A190310 (A272644 (n + 2)).toNat

end

end A203443.P2534836817657703868

/-!
# A203444: Numbers in range of Dedekind Psi function: A001615.

The programs for A203444, the canonical program `A203444.P8004498472754597362` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203444 has offset 1).

The definition of A203444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203444.P15662352910891477722

`record[lcm(n+1, A124767(A332042(n+1)))]`
-/

namespace A203444.P15662352910891477722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A124767 (A332042 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203444.P15662352910891477722

namespace A203444

/-- `record[lcm(n+1, A124767(A332042(n+1)))]` -/
def P15662352910891477722.Spec : Prop :=
  ∀ n, (P15662352910891477722.a n : ℤ) = A203444 (n + 1)

end A203444

/-! ## A203444.P11180784863039024944

`eq[1, char[A000113(n+1)]]`
-/

namespace A203444.P11180784863039024944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203444.P11180784863039024944

namespace A203444

/-- `eq[1, char[A000113(n+1)]]` -/
def P11180784863039024944.Spec : Prop :=
  ∀ n, (P11180784863039024944.a n : ℤ) = A203444 (n + 1)

end A203444

/-! ## A203444.P8004498472754597362

`lt[0, char[A001615(n+1)]]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A203444

/-- `lt[0, char[A001615(n+1)]]` -/
def P8004498472754597362.Spec : Prop :=
  ∀ n, (P8004498472754597362.a n : ℤ) = A203444 (n + 1)

theorem P8004498472754597362.correct : P8004498472754597362.Spec := by
  intro n
  simp only [A203444, Nat.add_sub_cancel]

end A203444

/-! ## A203444.P2524740145867251448

`lt[0, char[A322319(n+1)]]`
-/

namespace A203444.P2524740145867251448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322319 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203444.P2524740145867251448

namespace A203444

/-- `lt[0, char[A322319(n+1)]]` -/
def P2524740145867251448.Spec : Prop :=
  ∀ n, (P2524740145867251448.a n : ℤ) = A203444 (n + 1)

end A203444

/-! ## A203444.P6086960119030634357

`eq[char[A001615(n+1)], A057427(2*(n+1))]`
-/

namespace A203444.P6086960119030634357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A203444.P6086960119030634357

namespace A203444

/-- `eq[char[A001615(n+1)], A057427(2*(n+1))]` -/
def P6086960119030634357.Spec : Prop :=
  ∀ n, (P6086960119030634357.a n : ℤ) = A203444 (n + 1)

end A203444

/-!
# A203445: Number of (n+1)X(n+1) 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203445, there is no canonical definition to state claims against.
-/

/-! ## A203445.P4389962374127316072

`A203452(∑[4*n]+1)`
-/

namespace A203445.P4389962374127316072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203445.P4389962374127316072

/-! ## A203445.P6196888860925604057

`record[root(A203452(n+1), A143182(n))]`
-/

namespace A203445.P6196888860925604057
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203452 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203445.P6196888860925604057

/-! ## A203445.P16086328299123063169

`record[gcd(A003987(n), A203452(n+1))]`
-/

namespace A203445.P16086328299123063169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A203452 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203445.P16086328299123063169

/-! ## A203445.P846179331411903784

`record[char[A046092(n)]*A203452(n+1)]`
-/

namespace A203445.P846179331411903784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A203452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203445.P846179331411903784

/-! ## A203445.P7507786386552870260

`A203452(A001844(n))+A062329(n)`
-/

namespace A203445.P7507786386552870260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A001844 n).toNat + A062329 n

end

end A203445.P7507786386552870260

/-!
# A203446: Number of (n+1) X 3 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203446, there is no canonical definition to state claims against.
-/

/-! ## A203446.P11283308072844565843

`A203452(∑[n+1]+2)`
-/

namespace A203446.P11283308072844565843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203446.P11283308072844565843

/-! ## A203446.P6351247942333449240

`record[lcm(A073423(n), A203452(n+2))]`
-/

namespace A203446.P6351247942333449240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073423 n) (A203452 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203446.P6351247942333449240

/-! ## A203446.P2757142689730777060

`record[A203452(A133263(A000174(n)))]`
-/

namespace A203446.P2757142689730777060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A133263 (A000174 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203446.P2757142689730777060

/-! ## A203446.P2173585877320954272

`record[A203452(abs(A201163(n)))]`
-/

namespace A203446.P2173585877320954272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203446.P2173585877320954272

/-! ## A203446.P16740002387283256416

`record[A203452(Δ[A003453(n+5)])]`
-/

namespace A203446.P16740002387283256416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203446.P16740002387283256416

/-!
# A203447: Number of (n+1)X4 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203447, there is no canonical definition to state claims against.
-/

/-! ## A203447.P1389740151726874221

`A203452(∑[n+2]+4)`
-/

namespace A203447.P1389740151726874221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203447.P1389740151726874221

/-! ## A203447.P5522668810448967977

`A203452(A167614(n+1))+A185238(n)`
-/

namespace A203447.P5522668810448967977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A167614 (n + 1)).toNat + A185238 n

end

end A203447.P5522668810448967977

/-! ## A203447.P16252329570803654893

`lcm(A020985(n), A203452(A167614(n+1)))`
-/

namespace A203447.P16252329570803654893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A203452 (A167614 (n + 1)).toNat)

end

end A203447.P16252329570803654893

/-! ## A203447.P6189244772671022739

`A203452(A167614(n+1))%A085610(n+1)`
-/

namespace A203447.P6189244772671022739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203452 (A167614 (n + 1)).toNat) (A085610 (n + 1))

end

end A203447.P6189244772671022739

/-! ## A203447.P4376448264270229600

`or(A203452(A167614(n+1)), A297237(n+1))`
-/

namespace A203447.P4376448264270229600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A203452 (A167614 (n + 1)).toNat) (A297237 (n + 1))

end

end A203447.P4376448264270229600

/-!
# A203448: Number of (n+1)X5 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203448, there is no canonical definition to state claims against.
-/

/-! ## A203448.P7524349085191301008

`A203452(A374004(n+1))`
-/

namespace A203448.P7524349085191301008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A374004 (n + 1)).toNat

end

end A203448.P7524349085191301008

/-! ## A203448.P5134600605996501189

`A203452(A141214(n)+7)`
-/

namespace A203448.P5134600605996501189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A141214 n + 7).toNat

end

end A203448.P5134600605996501189

/-! ## A203448.P12518420237439077986

`A203452(A052905(n)+9)`
-/

namespace A203448.P12518420237439077986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A052905 n + 9).toNat

end

end A203448.P12518420237439077986

/-! ## A203448.P4056597989681740576

`A203452(A055999(n)+10)`
-/

namespace A203448.P4056597989681740576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A055999 n + 10).toNat

end

end A203448.P4056597989681740576

/-! ## A203448.P4823291628686588571

`A203452(A167614(n+2)+1)`
-/

namespace A203448.P4823291628686588571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A167614 (n + 2) + 1).toNat

end

end A203448.P4823291628686588571

/-!
# A203449: Number of (n+1)X6 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203449, there is no canonical definition to state claims against.
-/

/-! ## A203449.P18417689316201989583

`A203452(A374005(n+1))`
-/

namespace A203449.P18417689316201989583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A374005 (n + 1)).toNat

end

end A203449.P18417689316201989583

/-! ## A203449.P18346670251716503345

`A203452(A167499(n+3))`
-/

namespace A203449.P18346670251716503345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A167499 (n + 3)).toNat

end

end A203449.P18346670251716503345

/-! ## A203449.P660817862855545138

`A203452(A056000(n)+15)`
-/

namespace A203449.P660817862855545138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A056000 n + 15).toNat

end

end A203449.P660817862855545138

/-! ## A203449.P17975962685383686059

`A203452(A141214(n+1)+8)`
-/

namespace A203449.P17975962685383686059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A141214 (n + 1) + 8).toNat

end

end A203449.P17975962685383686059

/-! ## A203449.P15518606537222933163

`A203452(Δ[A264443(n)])`
-/

namespace A203449.P15518606537222933163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (f1 (n + 1) - f1 n).toNat

end

end A203449.P15518606537222933163

/-!
# A203450: Number of (n+1)X7 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203450, there is no canonical definition to state claims against.
-/

/-! ## A203450.P16391790248522503019

`A203452(A374007(n+1))`
-/

namespace A203450.P16391790248522503019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A374007 (n + 1)).toNat

end

end A203450.P16391790248522503019

/-! ## A203450.P1249083816860016751

`A203452(Δ[A264443(n)]+10)`
-/

namespace A203450.P1249083816860016751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (f1 (n + 1) - f1 n + 10).toNat

end

end A203450.P1249083816860016751

/-! ## A203450.P2208853837255940907

`A203452(A141214(n+2)+9)`
-/

namespace A203450.P2208853837255940907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A141214 (n + 2) + 9).toNat

end

end A203450.P2208853837255940907

/-! ## A203450.P6894444536946181926

`A203452(eq[7, A131818(n+1)])`
-/

namespace A203450.P6894444536946181926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203450.P6894444536946181926

/-! ## A203450.P11171751287158205668

`A203452(A000096(n+5)-(n-1))`
-/

namespace A203450.P11171751287158205668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A203450.P11171751287158205668

/-!
# A203451: Number of (n+1)X8 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203451, there is no canonical definition to state claims against.
-/

/-! ## A203451.P9996727853566942955

`A203452(A374008(n+1))`
-/

namespace A203451.P9996727853566942955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (A374008 (n + 1)).toNat

end

end A203451.P9996727853566942955

/-! ## A203451.P3016623048798742555

`A203452(eq[11, A066657(n)])`
-/

namespace A203451.P3016623048798742555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203451.P3016623048798742555

/-! ## A203451.P9720317200277635293

`A203452(eq[8, A131818(n+1)])`
-/

namespace A203451.P9720317200277635293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203451.P9720317200277635293

/-! ## A203451.P12545106438493063668

`A203452(eq[6, A193592(n)])`
-/

namespace A203451.P12545106438493063668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203451.P12545106438493063668

/-! ## A203451.P9808397304057943010

`A203452(eq[7, A200370(n+1)])`
-/

namespace A203451.P9808397304057943010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203451.P9808397304057943010

/-!
# A203452: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203452, there is no canonical definition to state claims against.
-/

/-! ## A203452.P15012803040439882230

`A209382(A070941(n)+A032555(n+1))`
-/

namespace A203452.P15012803040439882230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A070941 n + A032555 (n + 1)).toNat

end

end A203452.P15012803040439882230

/-! ## A203452.P1867446899776591881

`A209382(record[A334299(n+3)-A010051(n+1)])`
-/

namespace A203452.P1867446899776591881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 (n + 3) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A203452.P1867446899776591881

/-!
# A203453: Number of n X n 0..2 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203453, there is no canonical definition to state claims against.
-/

/-! ## A203453.P11043716190924529408

`A203460(∑[4*n]+1)`
-/

namespace A203453.P11043716190924529408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203453.P11043716190924529408

/-! ## A203453.P4839505509485174449

`record[A203460(Δ[A235355(n)])]`
-/

namespace A203453.P4839505509485174449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203453.P4839505509485174449

/-! ## A203453.P11111875176368371780

`record[A003982(n)*A203460(n+1)]`
-/

namespace A203453.P11111875176368371780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A203460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203453.P11111875176368371780

/-! ## A203453.P14647630997214416606

`record[A115718(n)*A203460(n+1)]`
-/

namespace A203453.P14647630997214416606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n * A203460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203453.P14647630997214416606

/-!
# A203454: Number of n X 2 0..2 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203454, there is no canonical definition to state claims against.
-/

/-! ## A203454.P14505214456966872162

`record[ratio[A203460(n+1)]]`
-/

namespace A203454.P14505214456966872162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203454.P14505214456966872162

/-! ## A203454.P7288658101810108123

`A203460(∑[n+1]+2)`
-/

namespace A203454.P7288658101810108123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203454.P7288658101810108123

/-! ## A203454.P18067431045491057786

`record[A203460(A117142(n+1)+2)]`
-/

namespace A203454.P18067431045491057786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A117142 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203454.P18067431045491057786

/-! ## A203454.P10814718434586586429

`record[A203460(n+1)/A294950(n)]`
-/

namespace A203454.P10814718434586586429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203460 (n + 1) : ℚ) / (A294950 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203454.P10814718434586586429

/-! ## A203454.P12956933459162105602

`record[A203460(A117142(n+1))]`
-/

namespace A203454.P12956933459162105602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203454.P12956933459162105602

/-!
# A203455: Number of nX3 0..2 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203455, there is no canonical definition to state claims against.
-/

/-! ## A203455.P12840292260192412149

`A203460(∑[n+2]+4)`
-/

namespace A203455.P12840292260192412149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203455.P12840292260192412149

/-! ## A203455.P11117293495199594379

`A203460(A167614(n+1))+A055965(n)`
-/

namespace A203455.P11117293495199594379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A167614 (n + 1)).toNat + A055965 n

end

end A203455.P11117293495199594379

/-! ## A203455.P7683459104084778656

`gcd(A000038(n), A203460(A167614(n+1)))`
-/

namespace A203455.P7683459104084778656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A203460 (A167614 (n + 1)).toNat)

end

end A203455.P7683459104084778656

/-! ## A203455.P1456113629951913164

`lcm(A033999(n), A203460(A167614(n+1)))`
-/

namespace A203455.P1456113629951913164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203460 (A167614 (n + 1)).toNat)

end

end A203455.P1456113629951913164

/-! ## A203455.P11503222060050336266

`or(A000007(n), A203460(A167614(n+1)))`
-/

namespace A203455.P11503222060050336266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203460 (A167614 (n + 1)).toNat)

end

end A203455.P11503222060050336266

/-!
# A203456: Number of nX4 0..2 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203456, there is no canonical definition to state claims against.
-/

/-! ## A203456.P5646438201646534788

`A203460(A374004(n+1))`
-/

namespace A203456.P5646438201646534788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A374004 (n + 1)).toNat

end

end A203456.P5646438201646534788

/-! ## A203456.P8571530091829398031

`A203460(A141214(n)+7)`
-/

namespace A203456.P8571530091829398031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A141214 n + 7).toNat

end

end A203456.P8571530091829398031

/-! ## A203456.P16864616497759590705

`A203460(A052905(n)+9)`
-/

namespace A203456.P16864616497759590705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A052905 n + 9).toNat

end

end A203456.P16864616497759590705

/-! ## A203456.P2782563684633840405

`A203460(A167614(n+2)+1)`
-/

namespace A203456.P2782563684633840405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A167614 (n + 2) + 1).toNat

end

end A203456.P2782563684633840405

/-! ## A203456.P11324567207098959795

`A203460(eq[5, A131818(n+1)])`
-/

namespace A203456.P11324567207098959795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203456.P11324567207098959795

/-!
# A203457: Number of nX5 0..2 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203457, there is no canonical definition to state claims against.
-/

/-! ## A203457.P16418425902838737422

`A203460(A374005(n+1))`
-/

namespace A203457.P16418425902838737422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A374005 (n + 1)).toNat

end

end A203457.P16418425902838737422

/-! ## A203457.P17307736783362079219

`A203460(A056000(n)+15)`
-/

namespace A203457.P17307736783362079219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A056000 n + 15).toNat

end

end A203457.P17307736783362079219

/-! ## A203457.P2968032879144898535

`A203460(eq[6, A131818(n+1)])`
-/

namespace A203457.P2968032879144898535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203457.P2968032879144898535

/-! ## A203457.P11585494735477470604

`A203460(Δ[A264443(n)])`
-/

namespace A203457.P11585494735477470604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (f1 (n + 1) - f1 n).toNat

end

end A203457.P11585494735477470604

/-! ## A203457.P11013664706381023377

`A203460(eq[4, A193592(n)])`
-/

namespace A203457.P11013664706381023377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203457.P11013664706381023377

/-!
# A203458: Number of nX6 0..2 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203458, there is no canonical definition to state claims against.
-/

/-! ## A203458.P15752374559250326177

`A203460(A374007(n+1))`
-/

namespace A203458.P15752374559250326177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A374007 (n + 1)).toNat

end

end A203458.P15752374559250326177

/-! ## A203458.P16459461831738711551

`A203460(eq[7, A131818(n+1)])`
-/

namespace A203458.P16459461831738711551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203458.P16459461831738711551

/-! ## A203458.P11271048015588125959

`A203460(A000096(n+5)-(n-1))`
-/

namespace A203458.P11271048015588125959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A203458.P11271048015588125959

/-! ## A203458.P9154264317950662974

`A203460(eq[3, A219347(n)])`
-/

namespace A203458.P9154264317950662974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203458.P9154264317950662974

/-! ## A203458.P15628044568341417475

`A203460(eq[5, A193592(n)])`
-/

namespace A203458.P15628044568341417475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203458.P15628044568341417475

/-!
# A203459: Number of nX7 0..2 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203459, there is no canonical definition to state claims against.
-/

/-! ## A203459.P341109068782659957

`A203460(A374008(n+1))`
-/

namespace A203459.P341109068782659957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (A374008 (n + 1)).toNat

end

end A203459.P341109068782659957

/-! ## A203459.P3635952024362267454

`A203460(eq[11, A066657(n)])`
-/

namespace A203459.P3635952024362267454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203459.P3635952024362267454

/-! ## A203459.P6002300135106281506

`A203460(eq[8, A131818(n+1)])`
-/

namespace A203459.P6002300135106281506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203459.P6002300135106281506

/-! ## A203459.P16025114715578659317

`A203460(eq[4, A219347(n)])`
-/

namespace A203459.P16025114715578659317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203459.P16025114715578659317

/-! ## A203459.P18168064012989838387

`A203460(eq[6, A193592(n)])`
-/

namespace A203459.P18168064012989838387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203459.P18168064012989838387

/-!
# A203460: T(n,k) = Number of n X k 0..2 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203460, there is no canonical definition to state claims against.
-/

/-! ## A203460.P4448741258945633114

`A184164(A184173(n))-A077028(n)`
-/

namespace A203460.P4448741258945633114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184164 (A184173 n).toNat - A077028 n

end

end A203460.P4448741258945633114

/-!
# A203461: Let a(n) and the ratio r(n) = greatest prime divisor of a(n) / sum of the distinct prime divisors of a(n). The sequence a(n) is defined by the recurrence a(1) = 2, a(n+1) such that r(n+1) < r(n).

The programs for A203461, there is no canonical definition to state claims against.
-/

/-! ## A203461.P8303303559621014862

`lcm(A110560(n), A275733(A344080(n+1)))`
-/

namespace A203461.P8303303559621014862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110560 n) (A275733 (A344080 (n + 1)).toNat)

end

end A203461.P8303303559621014862

/-! ## A203461.P10580696943603388897

`record[A284003(A353846(n))]`
-/

namespace A203461.P10580696943603388897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A353846 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203461.P10580696943603388897

/-!
# A203462: Numbers n such that n!! contains every digit at least once.

The programs for A203462, there is no canonical definition to state claims against.
-/

/-! ## A203462.P14694665062841202612

`eq[0, A204773(n)]`
-/

namespace A203462.P14694665062841202612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A203462.P14694665062841202612

/-!
# A203463: Where Golay-Rudin-Shapiro sequence A020985 is positive.

The programs for A203463, the canonical program `A203463.P15275112682331819246` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203463 has offset 1).

The definition of A203463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203463.P7767674282997846702

`comp[A022155(n+1)]`
-/

namespace A203463.P7767674282997846702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A203463.P7767674282997846702

namespace A203463

/-- `comp[A022155(n+1)]` -/
def P7767674282997846702.Spec : Prop :=
  ∀ n, (P7767674282997846702.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P15275112682331819246

`lt[A065620(and(n, 2*n)/2), 1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A203463

/-- `lt[A065620(and(n, 2*n)/2), 1]` -/
def P15275112682331819246.Spec : Prop :=
  ∀ n, (P15275112682331819246.a n : ℤ) = A203463 (n + 1)

theorem P15275112682331819246.correct : P15275112682331819246.Spec := by
  intro n
  simp only [A203463, Nat.add_sub_cancel]

end A203463

/-! ## A203463.P17559885840492430565

`lt[A010060(A318921(n)), 1]`
-/

namespace A203463.P17559885840492430565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A318921 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A203463.P17559885840492430565

namespace A203463

/-- `lt[A010060(A318921(n)), 1]` -/
def P17559885840492430565.Spec : Prop :=
  ∀ n, (P17559885840492430565.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P5985097764681690823

`lt[A100260(n+1), 2]`
-/

namespace A203463.P5985097764681690823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A203463.P5985097764681690823

namespace A203463

/-- `lt[A100260(n+1), 2]` -/
def P5985097764681690823.Spec : Prop :=
  ∀ n, (P5985097764681690823.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P1054352964062315646

`eq[1, A106400(and(n, 2*n))]`
-/

namespace A203463.P1054352964062315646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A203463.P1054352964062315646

namespace A203463

/-- `eq[1, A106400(and(n, 2*n))]` -/
def P1054352964062315646.Spec : Prop :=
  ∀ n, (P1054352964062315646.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P6928168247321094092

`lt[A065620(2*and(n, 2*n)), 1]`
-/

namespace A203463.P6928168247321094092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (2 * Nat.land n (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A203463.P6928168247321094092

namespace A203463

/-- `lt[A065620(2*and(n, 2*n)), 1]` -/
def P6928168247321094092.Spec : Prop :=
  ∀ n, (P6928168247321094092.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P3829223383451107998

`eq[0, A020987(n)]`
-/

namespace A203463.P3829223383451107998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A203463.P3829223383451107998

namespace A203463

/-- `eq[0, A020987(n)]` -/
def P3829223383451107998.Spec : Prop :=
  ∀ n, (P3829223383451107998.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P2199281289652388427

`lt[0, A020985(n)]`
-/

namespace A203463.P2199281289652388427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A203463.P2199281289652388427

namespace A203463

/-- `lt[0, A020985(n)]` -/
def P2199281289652388427.Spec : Prop :=
  ∀ n, (P2199281289652388427.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P9678508848079290905

`record[n/cos(π*A014081(n))]`
-/

namespace A203463.P9678508848079290905
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.cos (Real.pi * (A014081 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203463.P9678508848079290905

namespace A203463

/-- `record[n/cos(π*A014081(n))]` -/
def P9678508848079290905.Spec : Prop :=
  ∀ n, P9678508848079290905.a n = (A203463 (n + 1) : ℝ)

end A203463

/-! ## A203463.P13997723242484610121

`eq[0, A000035(A014081(n))]`
-/

namespace A203463.P13997723242484610121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014081 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A203463.P13997723242484610121

namespace A203463

/-- `eq[0, A000035(A014081(n))]` -/
def P13997723242484610121.Spec : Prop :=
  ∀ n, (P13997723242484610121.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P12519482989653414549

`eq[A020985(n), A267871(n)]`
-/

namespace A203463.P12519482989653414549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203463.P12519482989653414549

namespace A203463

/-- `eq[A020985(n), A267871(n)]` -/
def P12519482989653414549.Spec : Prop :=
  ∀ n, (P12519482989653414549.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P7804927922976100910

`lt[1, A001511(A014081(n)+2)]`
-/

namespace A203463.P7804927922976100910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A014081 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A203463.P7804927922976100910

namespace A203463

/-- `lt[1, A001511(A014081(n)+2)]` -/
def P7804927922976100910.Spec : Prop :=
  ∀ n, (P7804927922976100910.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P4078343224252781060

`eq[2-A020985(n), A106400(n)²]`
-/

namespace A203463.P4078343224252781060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A020985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203463.P4078343224252781060

namespace A203463

/-- `eq[2-A020985(n), A106400(n)²]` -/
def P4078343224252781060.Spec : Prop :=
  ∀ n, (P4078343224252781060.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P6617149581329447591

`eq[A040021(A014081(n)+n), A040021(n)]`
-/

namespace A203463.P6617149581329447591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 (A014081 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203463.P6617149581329447591

namespace A203463

/-- `eq[A040021(A014081(n)+n), A040021(n)]` -/
def P6617149581329447591.Spec : Prop :=
  ∀ n, (P6617149581329447591.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P14427480583376736040

`lt[A105584(n), 3]`
-/

namespace A203463.P14427480583376736040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105584 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A203463.P14427480583376736040

namespace A203463

/-- `lt[A105584(n), 3]` -/
def P14427480583376736040.Spec : Prop :=
  ∀ n, (P14427480583376736040.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P7468178296036890940

`eq[1, (1-A340503(n+1))²]`
-/

namespace A203463.P7468178296036890940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A340503 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A203463.P7468178296036890940

namespace A203463

/-- `eq[1, (1-A340503(n+1))²]` -/
def P7468178296036890940.Spec : Prop :=
  ∀ n, (P7468178296036890940.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P18289281172298213256

`eq[A000034(n), A105584(n)]`
-/

namespace A203463.P18289281172298213256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203463.P18289281172298213256

namespace A203463

/-- `eq[A000034(n), A105584(n)]` -/
def P18289281172298213256.Spec : Prop :=
  ∀ n, (P18289281172298213256.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P15522016434414606121

`eq[A010060(n), A268411(n)]`
-/

namespace A203463.P15522016434414606121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203463.P15522016434414606121

namespace A203463

/-- `eq[A010060(n), A268411(n)]` -/
def P15522016434414606121.Spec : Prop :=
  ∀ n, (P15522016434414606121.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P17635406364236927716

`eq[A000035(n), A100260(n+1)]`
-/

namespace A203463.P17635406364236927716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203463.P17635406364236927716

namespace A203463

/-- `eq[A000035(n), A100260(n+1)]` -/
def P17635406364236927716.Spec : Prop :=
  ∀ n, (P17635406364236927716.a n : ℤ) = A203463 (n + 1)

end A203463

/-! ## A203463.P14167794296234149978

`eq[1, A268411(n)+A010059(n)]`
-/

namespace A203463.P14167794296234149978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n + A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A203463.P14167794296234149978

namespace A203463

/-- `eq[1, A268411(n)+A010059(n)]` -/
def P14167794296234149978.Spec : Prop :=
  ∀ n, (P14167794296234149978.a n : ℤ) = A203463 (n + 1)

end A203463

/-!
# A203464: Numbers n such that 65 divides 4n^2 + 1; alternately, numbers which are 4, 9, 56, or 61 mod 65.

The programs for A203464, there is no canonical definition to state claims against.
-/

/-! ## A203464.P3867568900637814171

`∑[A040559(n)-A040406(n)]`
-/

namespace A203464.P3867568900637814171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040559 n - A040406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203464.P3867568900637814171

/-! ## A203464.P2535042802002122127

`∩[a(n-2)+13, comp[round(5*n/3)]]` with `a(0)=0, a(1)=4, a(2)=9`
-/

namespace A203464.P2535042802002122127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 9] fun n f1 =>
  f1 (n - 2) + 13

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 3))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A203464.P2535042802002122127

/-! ## A203464.P16134191951159237863

`∩[A047209(n+1), A092464(n+1)]`
-/

namespace A203464.P16134191951159237863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203464.P16134191951159237863

/-! ## A203464.P8883947155147150403

`A152833(∩[A106389(n+1), A306277(n+1)])`
-/

namespace A203464.P8883947155147150403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152833 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A203464.P8883947155147150403

/-!
# A203465: a(n) = A203305(n)/A000178(n) where A000178 are superfactorials.

The programs for A203465, there is no canonical definition to state claims against.
-/

/-! ## A203465.P18302963298511306195

`A203305(n+1)/A000178(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203465.P18302963298511306195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203305 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203465.P18302963298511306195

/-! ## A203465.P4268442694695398348

`∏[A377642(n+1)]`
-/

namespace A203465.P4268442694695398348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203465.P4268442694695398348

/-! ## A203465.P16779035000657898895

`∏[A000079(n)*A053601(n)]`
-/

namespace A203465.P16779035000657898895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A053601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203465.P16779035000657898895

/-! ## A203465.P14810765190677719510

`∏[A270882(∑[n+2])]`
-/

namespace A203465.P14810765190677719510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270882 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203465.P14810765190677719510

/-!
# A203466: a(n) = A203306(n)/A000178(n) where A000178 are superfactorials.

The programs for A203466, there is no canonical definition to state claims against.
-/

/-! ## A203466.P635779397468740884

`A203306(n+1)/A000178(n)`
-/

namespace A203466.P635779397468740884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203306 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203466.P635779397468740884

/-!
# A203467: a(n) = A203309(n)/A000178(n) where A000178 are superfactorials.

The programs for A203467, there is no canonical definition to state claims against.
-/

/-! ## A203467.P11585449692670542752

`∏[A001761(n)/A011782(n)]`
-/

namespace A203467.P11585449692670542752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001761 n : ℚ) / (A011782 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203467.P11585449692670542752

/-! ## A203467.P1557968828226619677

`A000108(n)*A057863(A028310(n)-1)`
-/

namespace A203467.P1557968828226619677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A057863 (A028310 n - 1).toNat

end

end A203467.P1557968828226619677

/-!
# A203468: Numbers that have a unique triangular proper divisor greater than 1.

The programs for A203468, the canonical program `A203468.P281610576651752722` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203468 has offset 1).

The definition of A203468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203468.P281610576651752722

`eq[A035214(n), A325334(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A203468

/-- `eq[A035214(n), A325334(n)]` -/
def P281610576651752722.Spec : Prop :=
  ∀ n, (P281610576651752722.a n : ℤ) = A203468 (n + 1)

theorem P281610576651752722.correct : P281610576651752722.Spec := by
  intro n
  simp only [A203468, Nat.add_sub_cancel]

end A203468

/-! ## A203468.P10603953343080675917

`eq[A010054(n)+1, A325334(n)]`
-/

namespace A203468.P10603953343080675917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203468.P10603953343080675917

namespace A203468

/-- `eq[A010054(n)+1, A325334(n)]` -/
def P10603953343080675917.Spec : Prop :=
  ∀ n, (P10603953343080675917.a n : ℤ) = A203468 (n + 1)

end A203468

/-! ## A203468.P817547507079186192

`eq[A073423(n)+1, A325334(n)]`
-/

namespace A203468.P817547507079186192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203468.P817547507079186192

namespace A203468

/-- `eq[A073423(n)+1, A325334(n)]` -/
def P817547507079186192.Spec : Prop :=
  ∀ n, (P817547507079186192.a n : ℤ) = A203468 (n + 1)

end A203468

/-! ## A203468.P84785790843393360

`eq[A073424(n)+1, A325334(n)]`
-/

namespace A203468.P84785790843393360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203468.P84785790843393360

namespace A203468

/-- `eq[A073424(n)+1, A325334(n)]` -/
def P84785790843393360.Spec : Prop :=
  ∀ n, (P84785790843393360.a n : ℤ) = A203468 (n + 1)

end A203468

/-! ## A203468.P13543325502634122884

`eq[A010054(n), A023443(A325334(n))]`
-/

namespace A203468.P13543325502634122884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A325334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203468.P13543325502634122884

namespace A203468

/-- `eq[A010054(n), A023443(A325334(n))]` -/
def P13543325502634122884.Spec : Prop :=
  ∀ n, (P13543325502634122884.a n : ℤ) = A203468 (n + 1)

end A203468

/-! ## A203468.P6261696146095217106

`eq[A023443(A325334(n)), A073423(n)]`
-/

namespace A203468.P6261696146095217106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A325334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203468.P6261696146095217106

namespace A203468

/-- `eq[A023443(A325334(n)), A073423(n)]` -/
def P6261696146095217106.Spec : Prop :=
  ∀ n, (P6261696146095217106.a n : ℤ) = A203468 (n + 1)

end A203468

/-! ## A203468.P10173718860947634394

`eq[A023443(A325334(n)), A073424(n)]`
-/

namespace A203468.P10173718860947634394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A325334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203468.P10173718860947634394

namespace A203468

/-- `eq[A023443(A325334(n)), A073424(n)]` -/
def P10173718860947634394.Spec : Prop :=
  ∀ n, (P10173718860947634394.a n : ℤ) = A203468 (n + 1)

end A203468

/-! ## A203468.P15298699482007285440

`eq[A040001(A278511(n+1)), A325334(n)]`
-/

namespace A203468.P15298699482007285440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A278511 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203468.P15298699482007285440

namespace A203468

/-- `eq[A040001(A278511(n+1)), A325334(n)]` -/
def P15298699482007285440.Spec : Prop :=
  ∀ n, (P15298699482007285440.a n : ℤ) = A203468 (n + 1)

end A203468

/-!
# A203469: a(n) = v(n)/A000178(n), v = A093883 and A000178 = (superfactorials).

The programs for A203469, there is no canonical definition to state claims against.
-/

/-! ## A203469.P2347829395980487140

`∏[C(Δ[n²], n)]`
-/

namespace A203469.P2347829395980487140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203469.P2347829395980487140

/-! ## A203469.P14150910487100410421

`abs(∏[-C(2*n+1, n)])`
-/

namespace A203469.P14150910487100410421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (2 * n + 1) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A203469.P14150910487100410421

/-! ## A203469.P13612373509806420502

`∏[sqrt(C(2*n+1, n))]²`
-/

namespace A203469.P13612373509806420502
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.choose (2 * n + 1) n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A203469.P13612373509806420502

/-! ## A203469.P16006802563758873094

`∏[∏[4-2/(n+1)]/2]`
-/

namespace A203469.P16006802563758873094
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203469.P16006802563758873094

/-! ## A203469.P10793121888773729748

`C(Δ[n²], n)*a(n-1)` with `a(0)=1`
-/

namespace A203469.P10793121888773729748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n * a (n - 1)

end

end A203469.P10793121888773729748

/-!
# A203470: a(n) = Product_{2 <= i < j <= n+1} (i + j).

The programs for A203470, there is no canonical definition to state claims against.
-/

/-! ## A203470.P7114147754972069723

`∏[(2*n+3)!/(n+3)!]`
-/

namespace A203470.P7114147754972069723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 3) : ℚ) / (Nat.factorial (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203470.P7114147754972069723

/-! ## A203470.P8227671463398130957

`∏[A102693(n+2)]`
-/

namespace A203470.P8227671463398130957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203470.P8227671463398130957

/-! ## A203470.P14095419117836998628

`A000178(n)*A203471(n+1)`
-/

namespace A203470.P14095419117836998628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203471 (n + 1)

end

end A203470.P14095419117836998628

/-! ## A203470.P1928445688317860491

`∏[A002054(n+1)]*A000178(n)`
-/

namespace A203470.P1928445688317860491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000178 n

end

end A203470.P1928445688317860491

/-! ## A203470.P14220378851947333242

`∏[A001715(2*n+3)/A001715(n+3)]`
-/

namespace A203470.P14220378851947333242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001715 (2 * n + 3) : ℚ) / (A001715 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203470.P14220378851947333242

/-!
# A203471: a(n) = v(n)/A000178(n), v = A203470, A000178 = (superfactorials).

The programs for A203471, there is no canonical definition to state claims against.
-/

/-! ## A203471.P2541580207836800627

`∏[C(2*n+3, n)]`
-/

namespace A203471.P2541580207836800627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203471.P2541580207836800627

/-! ## A203471.P14175086198158377532

`C(2*n+3, n)*a(n-1)` with `a(0)=1`
-/

namespace A203471.P14175086198158377532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n + 3) n * a (n - 1)

end

end A203471.P14175086198158377532

/-! ## A203471.P1215886069698273337

`∏[A002054(n+1)]`
-/

namespace A203471.P1215886069698273337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203471.P1215886069698273337

/-! ## A203471.P3026611790024252200

`∏[A099813((n+2)²)]`
-/

namespace A203471.P3026611790024252200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099813 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203471.P3026611790024252200

/-! ## A203471.P8609909638953022792

`∏[sqrt(A337901(n+1))]`
-/

namespace A203471.P8609909638953022792
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A337901 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203471.P8609909638953022792

/-!
# A203472: a(n) = Product_{3 <= i < j <= n+2} (i + j).

The programs for A203472, there is no canonical definition to state claims against.
-/

/-! ## A203472.P13819259197612424629

`∏[n!]*A203474(n+1)`
-/

namespace A203472.P13819259197612424629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A203474 (n + 1)

end

end A203472.P13819259197612424629

/-! ## A203472.P10220917923251322648

`A000178(n)*A203474(n+1)`
-/

namespace A203472.P10220917923251322648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203474 (n + 1)

end

end A203472.P10220917923251322648

/-! ## A203472.P15612639321448959192

`∏[A000142(n)*A003516(n+2)]`
-/

namespace A203472.P15612639321448959192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003516 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203472.P15612639321448959192

/-! ## A203472.P15393632610730271257

`(A019515(n)-1)*A203474(n+1)`
-/

namespace A203472.P15393632610730271257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A019515 n - 1) * A203474 (n + 1)

end

end A203472.P15393632610730271257

/-! ## A203472.P950361156391425691

`∏{d}[2^n, A001222(#)!]*A203474(n+1)`
-/

namespace A203472.P950361156391425691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), Nat.factorial (A001222 d).toNat : ℕ) : ℤ) * A203474 (n + 1)

end

end A203472.P950361156391425691

/-!
# A203473: a(n) = v(n+1)/v(n), where v=A203472.

The programs for A203473, there is no canonical definition to state claims against.
-/

/-! ## A203473.P4206585362227808947

`(n+1)!*C(2*n+7, n+1)`
-/

namespace A203473.P4206585362227808947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (2 * n + 7) (n + 1)

end

end A203473.P4206585362227808947

/-! ## A203473.P16794232040417359720

`(n+1)!*A003516(n+3)`
-/

namespace A203473.P16794232040417359720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A003516 (n + 3)

end

end A203473.P16794232040417359720

/-! ## A203473.P11144262770476820841

`A000142(n+1)*A003516(n+3)`
-/

namespace A203473.P11144262770476820841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A003516 (n + 3)

end

end A203473.P11144262770476820841

/-! ## A203473.P7876689788376465387

`A001725(2*n+7)/A001725(n+6)`
-/

namespace A203473.P7876689788376465387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001725 (2 * n + 7) : ℚ) / (A001725 (n + 6) : ℚ)

end

end A203473.P7876689788376465387

/-! ## A203473.P7898910275982912440

`A001730(2*n+7)/A001730(n+6)`
-/

namespace A203473.P7898910275982912440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001730 (2 * n + 7) : ℚ) / (A001730 (n + 6) : ℚ)

end

end A203473.P7898910275982912440

/-!
# A203474: a(n) = A203472(n) / A000178(n-1), where A000178 are the superfactorials.

The programs for A203474, there is no canonical definition to state claims against.
-/

/-! ## A203474.P8478074846390845399

`A203472(n+1)/A000178(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203474.P8478074846390845399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203472 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203474.P8478074846390845399

/-! ## A203474.P291251198079219360

`∏[C(2*n+5, n)]`
-/

namespace A203474.P291251198079219360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 5) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203474.P291251198079219360

/-! ## A203474.P17897944166760196837

`C(2*n+5, n)*a(n-1)` with `a(0)=1`
-/

namespace A203474.P17897944166760196837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n + 5) n * a (n - 1)

end

end A203474.P17897944166760196837

/-! ## A203474.P8813761278739903609

`∏[A003516(n+2)]`
-/

namespace A203474.P8813761278739903609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003516 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203474.P8813761278739903609

/-! ## A203474.P18016803796269909689

`∏[A122366(∑[n+3])]`
-/

namespace A203474.P18016803796269909689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203474.P18016803796269909689

/-!
# A203475: a(n) = Product_{1 <= i < j <= n} (i^2 + j^2).

The programs for A203475, there is no canonical definition to state claims against.
-/

/-! ## A203475.P6683655573203547597

`∏[A203774(n+1)/(n+1)]`
-/

namespace A203475.P6683655573203547597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203774 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203475.P6683655573203547597

/-! ## A203475.P3004911154959435995

`∏[A203476(n+1)]/A203476(n+1)`
-/

namespace A203475.P3004911154959435995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203476 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203476 (n + 1) : ℚ)

end

end A203475.P3004911154959435995

/-!
# A203476: a(n) = v(n+1)/v(n), where v = A203475.

The programs for A203476, there is no canonical definition to state claims against.
-/

/-! ## A203476.P15548774832397338017

`A203774(n+2)/(n+2)`
-/

namespace A203476.P15548774832397338017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203774 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A203476.P15548774832397338017

/-! ## A203476.P8378864993862796522

`A203775(n+2)/(n+2)²`
-/

namespace A203476.P8378864993862796522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203775 (n + 2) : ℚ) / ((n + 2) ^ 2 : ℚ)

end

end A203476.P8378864993862796522

/-! ## A203476.P17409668341366305537

`ratio[A203475(n+1)]`
-/

namespace A203476.P17409668341366305537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203475 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203476.P17409668341366305537

/-!
# A203477: a(n) = Product_{0 <= i < j <= n-1} (2^i + 2^j).

The programs for A203477, there is no canonical definition to state claims against.
-/

/-! ## A203477.P8438243422624094483

`∏[∏[C(2^n+1, 2)]]`
-/

namespace A203477.P8438243422624094483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203477.P8438243422624094483

/-! ## A203477.P3568806517434717639

`∏[∏[(2^n+4^n)/2]]`
-/

namespace A203477.P3568806517434717639
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 4 ^ n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203477.P3568806517434717639

/-! ## A203477.P3862845070527579646

`a(n-1)*∏[a(n-1)+a(n-1)+4^(n-1)]` with `a(0)=1`
-/

namespace A203477.P3862845070527579646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A203477.P3862845070527579646

/-! ## A203477.P10347438438043631985

`a(n-1)*A203478(n)` with `a(0)=1`
-/

namespace A203477.P10347438438043631985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203478 n

end

end A203477.P10347438438043631985

/-!
# A203478: a(n) = v(n+1)/v(n), where v = A203477.

The programs for A203478, there is no canonical definition to state claims against.
-/

/-! ## A203478.P14818124591802457964

`A028362(n+2)*2^((n+1)*n/2)`
-/

namespace A203478.P14818124591802457964
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028362 (n + 2) : ℝ) * (2 : ℝ) ^ ((n + 1 : ℚ) * ((n : ℚ) / 2) : ℝ)

end

end A203478.P14818124591802457964

/-! ## A203478.P14304801342760144137

`∏[C(∑[2^n]+2, 2)]`
-/

namespace A203478.P14304801342760144137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203478.P14304801342760144137

/-! ## A203478.P1319239276117040972

`∏[2*4^n+2^n]`
-/

namespace A203478.P1319239276117040972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n + 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203478.P1319239276117040972

/-! ## A203478.P3567477427569197248

`C(2^(n+1)+1, 2)*a(n-1)` with `a(0)=3`
-/

namespace A203478.P3567477427569197248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.choose (2 ^ (n + 1) + 1) 2 * a (n - 1)

end

end A203478.P3567477427569197248

/-! ## A203478.P8785781129374367369

`(∑[2^n]+2)*2^n*a(n-1)` with `a(0)=3`
-/

namespace A203478.P8785781129374367369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) * 2 ^ n * a (n - 1)

end

end A203478.P8785781129374367369

/-!
# A203479: a(n) = Product_{1 <= i < j <= n} (2^i + 2^j - 2).

The programs for A203479, there is no canonical definition to state claims against.
-/

/-! ## A203479.P1725409739397739288

`∏[A203480(n+1)]/A203480(n+1)`
-/

namespace A203479.P1725409739397739288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203480 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203480 (n + 1) : ℚ)

end

end A203479.P1725409739397739288

/-!
# A203480: a(n) = v(n+1)/v(n), where v = A203479.

The programs for A203480, there is no canonical definition to state claims against.
-/

/-! ## A203480.P10256933839125058871

`4*A203481(n+1)`
-/

namespace A203480.P10256933839125058871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A203481 (n + 1)

end

end A203480.P10256933839125058871

/-! ## A203480.P13799186764451890851

`ratio[A203479(n+1)]`
-/

namespace A203480.P13799186764451890851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203479 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203480.P13799186764451890851

/-!
# A203481: a(n) = v(n+1)/(4*v(n)), where v = A203479.

The programs for A203481, there is no canonical definition to state claims against.
-/

/-! ## A203481.P2992255935525157499

`A203480(n+1)/4`
-/

namespace A203481.P2992255935525157499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203480 (n + 1) : ℚ) / 4

end

end A203481.P2992255935525157499

/-!
# A203482: a(n) = Product_{1 <= i < j <= n} (i! + j!).

The programs for A203482, there is no canonical definition to state claims against.
-/

/-! ## A203482.P14717565130025807926

`∏[n!]*A203510(n+1)`
-/

namespace A203482.P14717565130025807926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A203510 (n + 1)

end

end A203482.P14717565130025807926

/-! ## A203482.P15846568319609489332

`∏[A000142(n)]*A203510(n+1)`
-/

namespace A203482.P15846568319609489332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A203510 (n + 1)

end

end A203482.P15846568319609489332

/-!
# A203483: a(n) = v(n+1)/v(n), where v = A203482.

The programs for A203483, there is no canonical definition to state claims against.
-/

/-! ## A203483.P11130714165109260001

`ratio[A203482(n+1)]`
-/

namespace A203483.P11130714165109260001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203482 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203483.P11130714165109260001

/-!
# A203485: Number of n X 2 0..2 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203485, there is no canonical definition to state claims against.
-/

/-! ## A203485.P14066409150481225907

`A203491(∑[n+2])`
-/

namespace A203485.P14066409150481225907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203485.P14066409150481225907

/-! ## A203485.P8947191013706182191

`record[A203491(A101881(n)+1)]`
-/

namespace A203485.P8947191013706182191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203485.P8947191013706182191

/-! ## A203485.P4338366144742439749

`lcm(2, A203491(A000096(n+1)))`
-/

namespace A203485.P4338366144742439749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203491 (A000096 (n + 1)).toNat)

end

end A203485.P4338366144742439749

/-! ## A203485.P252905884400646058

`record[A203491(lt[A297519(n+1), n])]`
-/

namespace A203485.P252905884400646058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203485.P252905884400646058

/-! ## A203485.P10335437334382877777

`record[A203491(A000096(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A203485.P10335437334382877777
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (A000096 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203485.P10335437334382877777

/-!
# A203486: Number of nX3 0..2 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203486, there is no canonical definition to state claims against.
-/

/-! ## A203486.P15092832580828318534

`A203491(∑[n+3]+1)`
-/

namespace A203486.P15092832580828318534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203486.P15092832580828318534

/-! ## A203486.P5259554628542604294

`record[A203491(A347633(n+4))]`
-/

namespace A203486.P5259554628542604294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (A347633 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203486.P5259554628542604294

/-!
# A203487: Number of nX4 0..2 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203487, there is no canonical definition to state claims against.
-/

/-! ## A203487.P3924802482092117780

`A203491(∑[n+4]+3)`
-/

namespace A203487.P3924802482092117780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A203487.P3924802482092117780

/-! ## A203487.P5611127772347238137

`A054722(n+1)*A203491(C(n+5, 2)-3)`
-/

namespace A203487.P5611127772347238137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054722 (n + 1) * A203491 (Nat.choose (n + 5) 2 - 3)

end

end A203487.P5611127772347238137

/-! ## A203487.P7773045472836562017

`A065941(n+1)*A203491(C(n+5, 2)-3)`
-/

namespace A203487.P7773045472836562017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (n + 1) * A203491 (Nat.choose (n + 5) 2 - 3)

end

end A203487.P7773045472836562017

/-!
# A203488: Number of n X 5 0..2 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203488, there is no canonical definition to state claims against.
-/

/-! ## A203488.P1352222956831042138

`A203491(C(n+5, 2)+n+1)`
-/

namespace A203488.P1352222956831042138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (Nat.choose (n + 5) 2 + (n + 1))

end

end A203488.P1352222956831042138

/-! ## A203488.P3408174164038601536

`A203491(Δ[A264443(n)])`
-/

namespace A203488.P3408174164038601536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (f1 (n + 1) - f1 n).toNat

end

end A203488.P3408174164038601536

/-!
# A203489: Number of nX6 0..2 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203489, there is no canonical definition to state claims against.
-/

/-! ## A203489.P9027318677628454130

`A203491(A052905(n+3))`
-/

namespace A203489.P9027318677628454130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (A052905 (n + 3)).toNat

end

end A203489.P9027318677628454130

/-!
# A203492: Number of 2Xn 0..2 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203492, there is no canonical definition to state claims against.
-/

/-! ## A203492.P240547889796792426

`A203491(∑[n+1]+2)`
-/

namespace A203492.P240547889796792426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203492.P240547889796792426

/-! ## A203492.P9128484822553413263

`record[root(A203491(n+1), A057059(n+1))]`
-/

namespace A203492.P9128484822553413263
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203491 (n + 1) : ℝ) ^ (1 / (A057059 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203492.P9128484822553413263

/-! ## A203492.P5231607483102190571

`record[root(A203491(n+1), A130270(n+1))]`
-/

namespace A203492.P5231607483102190571
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203491 (n + 1) : ℝ) ^ (1 / (A130270 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203492.P5231607483102190571

/-! ## A203492.P349935854528213030

`record[root(A203491(n+1), A237448(n+1))]`
-/

namespace A203492.P349935854528213030
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203491 (n + 1) : ℝ) ^ (1 / (A237448 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203492.P349935854528213030

/-! ## A203492.P16253247087497655273

`lcm(A100092(n), A203491(A167499(n)-3))`
-/

namespace A203492.P16253247087497655273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100092 n) (A203491 (A167499 n - 3).toNat)

end

end A203492.P16253247087497655273

/-!
# A203493: Number of 3Xn 0..2 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203493, there is no canonical definition to state claims against.
-/

/-! ## A203493.P4277215571929174231

`A203491(∑[n+2]+4)`
-/

namespace A203493.P4277215571929174231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203493.P4277215571929174231

/-! ## A203493.P12107267579302974727

`lcm(3, A203491(A167614(n+1)))`
-/

namespace A203493.P12107267579302974727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A203491 (A167614 (n + 1)).toNat)

end

end A203493.P12107267579302974727

/-! ## A203493.P1216127578041404384

`record[A203491(record[A195081(n+1)])]`
-/

namespace A203493.P1216127578041404384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195081 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203493.P1216127578041404384

/-! ## A203493.P15052566802140808177

`A203491(A167614(n+1))+A025443(n)`
-/

namespace A203493.P15052566802140808177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (A167614 (n + 1)).toNat + A025443 n

end

end A203493.P15052566802140808177

/-! ## A203493.P15701651179828638974

`A203491(A167614(n+1))+A033665(n)`
-/

namespace A203493.P15701651179828638974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (A167614 (n + 1)).toNat + A033665 n

end

end A203493.P15701651179828638974

/-!
# A203494: Number of 4Xn 0..2 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203494, there is no canonical definition to state claims against.
-/

/-! ## A203494.P17357007806565347437

`A203491(∑[n+3]+7)`
-/

namespace A203494.P17357007806565347437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A203494.P17357007806565347437

/-! ## A203494.P2095573125523339168

`A203491(A055999(n)+10)+n-∑{digits}[n, #]`
-/

namespace A203494.P2095573125523339168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (A055999 n + 10).toNat + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A203494.P2095573125523339168

/-! ## A203494.P18281430481922991192

`A136522(n)*A203491(A055999(n)+10)`
-/

namespace A203494.P18281430481922991192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n * A203491 (A055999 n + 10).toNat

end

end A203494.P18281430481922991192

/-!
# A203495: Number of 5Xn 0..2 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203495, there is no canonical definition to state claims against.
-/

/-! ## A203495.P10347308489901585271

`A203491(C(n+5, 2)+5)`
-/

namespace A203495.P10347308489901585271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (Nat.choose (n + 5) 2 + 5)

end

end A203495.P10347308489901585271

/-! ## A203495.P2600855346789663318

`A203491(A167499(n+3))`
-/

namespace A203495.P2600855346789663318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (A167499 (n + 3)).toNat

end

end A203495.P2600855346789663318

/-!
# A203496: Number of 6Xn 0..2 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203496, there is no canonical definition to state claims against.
-/

/-! ## A203496.P7880412665902627878

`A203491(A166136(n+4))`
-/

namespace A203496.P7880412665902627878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203491 (A166136 (n + 4)).toNat

end

end A203496.P7880412665902627878

/-!
# A203499: 

The programs for A203499, there is no canonical definition to state claims against.
-/

/-! ## A203499.P8362410977854016682

`A203506((n+1)²+n²)`
-/

namespace A203499.P8362410977854016682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203506 ((n + 1) ^ 2 + n ^ 2)

end

end A203499.P8362410977854016682

