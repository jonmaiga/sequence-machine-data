import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C012
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A013900: 

The programs for A013900, there is no canonical definition to state claims against.
-/

/-! ## A013900.P15920470325050376595

`21^(5*n+3)`
-/

namespace A013900.P15920470325050376595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ (5 * n + 3)

end

end A013900.P15920470325050376595

/-! ## A013900.P4813783991964975867

`21*A009965(4*n+n+2)`
-/

namespace A013900.P4813783991964975867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A009965 (4 * n + (n + 2))

end

end A013900.P4813783991964975867

/-! ## A013900.P14051203061576563694

`A017967(A017341(n))`
-/

namespace A013900.P14051203061576563694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017967 (A017341 n).toNat

end

end A013900.P14051203061576563694

/-!
# A013901: 

The programs for A013901, there is no canonical definition to state claims against.
-/

/-! ## A013901.P14669956642640181021

`21^(5*n+4)`
-/

namespace A013901.P14669956642640181021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ (5 * n + 4)

end

end A013901.P14669956642640181021

/-! ## A013901.P3902817491838686886

`A009965(abs(6*(n+1)-(n+2)))`
-/

namespace A013901.P3902817491838686886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009965 |(6 * (n + 1) : ℤ) - (n + 2 : ℤ)|.toNat

end

end A013901.P3902817491838686886

/-! ## A013901.P11061548697356460913

`A009965(2*n+2)²*A009965(n)`
-/

namespace A013901.P11061548697356460913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009965 (2 * n + 2) ^ 2 * A009965 n

end

end A013901.P11061548697356460913

/-!
# A013902: 

The programs for A013902, there is no canonical definition to state claims against.
-/

/-! ## A013902.P17588703092416262393

`22^(5*n+1)`
-/

namespace A013902.P17588703092416262393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ (5 * n + 1)

end

end A013902.P17588703092416262393

/-! ## A013902.P8457816277717918134

`22*22^A008587(n)`
-/

namespace A013902.P8457816277717918134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  22 * (22 : ℚ) ^ (A008587 n : ℤ)

end

end A013902.P8457816277717918134

/-!
# A013903: 

The programs for A013903, there is no canonical definition to state claims against.
-/

/-! ## A013903.P263364011386897708

`22^(5*n+2)`
-/

namespace A013903.P263364011386897708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ (5 * n + 2)

end

end A013903.P263364011386897708

/-!
# A013904: 

The programs for A013904, there is no canonical definition to state claims against.
-/

/-! ## A013904.P12292365735586571055

`22^(5*n+3)`
-/

namespace A013904.P12292365735586571055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ (5 * n + 3)

end

end A013904.P12292365735586571055

/-! ## A013904.P8589156389008630503

`A009966(abs(6*(n+1)-(n+3)))`
-/

namespace A013904.P8589156389008630503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009966 |(6 * (n + 1) : ℤ) - (n + 3 : ℤ)|.toNat

end

end A013904.P8589156389008630503

/-!
# A013905: 

The programs for A013905, there is no canonical definition to state claims against.
-/

/-! ## A013905.P4027144284614567545

`22^(5*n+4)`
-/

namespace A013905.P4027144284614567545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ (5 * n + 4)

end

end A013905.P4027144284614567545

/-! ## A013905.P18395019234409325372

`A009966(abs(6*(n+1)-(n+2)))`
-/

namespace A013905.P18395019234409325372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009966 |(6 * (n + 1) : ℤ) - (n + 2 : ℤ)|.toNat

end

end A013905.P18395019234409325372

/-!
# A013906: 

The programs for A013906, there is no canonical definition to state claims against.
-/

/-! ## A013906.P14215588976694158252

`23^(5*n+1)`
-/

namespace A013906.P14215588976694158252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ (5 * n + 1)

end

end A013906.P14215588976694158252

/-! ## A013906.P4574603611033905022

`A009967(5*n+1)`
-/

namespace A013906.P4574603611033905022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009967 (5 * n + 1)

end

end A013906.P4574603611033905022

/-! ## A013906.P4419741304716243893

`23*A009967(n)^5`
-/

namespace A013906.P4419741304716243893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A009967 n ^ 5

end

end A013906.P4419741304716243893

/-! ## A013906.P14863573313447325129

`A017973(A017281(n)+1)`
-/

namespace A013906.P14863573313447325129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017973 (A017281 n + 1).toNat

end

end A013906.P14863573313447325129

/-!
# A013907: 

The programs for A013907, there is no canonical definition to state claims against.
-/

/-! ## A013907.P15767410499709506296

`23^(5*n+2)`
-/

namespace A013907.P15767410499709506296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ (5 * n + 2)

end

end A013907.P15767410499709506296

/-! ## A013907.P9006942322705902375

`23*23*A009967(n)^5`
-/

namespace A013907.P9006942322705902375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (23 * A009967 n ^ 5)

end

end A013907.P9006942322705902375

/-! ## A013907.P37658335523754998

`A009967(abs(6*(n+1)-(n+3)))/23`
-/

namespace A013907.P37658335523754998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009967 |(6 * (n + 1) : ℤ) - (n + 3 : ℤ)|.toNat : ℚ) / 23

end

end A013907.P37658335523754998

/-!
# A013908: 

The programs for A013908, there is no canonical definition to state claims against.
-/

/-! ## A013908.P16067528979472960282

`23^(5*n+3)`
-/

namespace A013908.P16067528979472960282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ (5 * n + 3)

end

end A013908.P16067528979472960282

/-! ## A013908.P4539498974787486307

`A009967(abs(6*(n+1)-(n+3)))`
-/

namespace A013908.P4539498974787486307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009967 |(6 * (n + 1) : ℤ) - (n + 3 : ℤ)|.toNat

end

end A013908.P4539498974787486307

/-! ## A013908.P17482835338636116182

`A017973(A017281(n)+5)`
-/

namespace A013908.P17482835338636116182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017973 (A017281 n + 5).toNat

end

end A013908.P17482835338636116182

/-!
# A013909: 

The programs for A013909, there is no canonical definition to state claims against.
-/

/-! ## A013909.P14912918790922844111

`23^(5*n+4)`
-/

namespace A013909.P14912918790922844111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ (5 * n + 4)

end

end A013909.P14912918790922844111

/-! ## A013909.P6677118758957376749

`A009967(abs(6*(n+1)-(n+2)))`
-/

namespace A013909.P6677118758957376749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009967 |(6 * (n + 1) : ℤ) - (n + 2 : ℤ)|.toNat

end

end A013909.P6677118758957376749

/-! ## A013909.P2383043148371849171

`A017973(A017281(n)+7)`
-/

namespace A013909.P2383043148371849171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017973 (A017281 n + 7).toNat

end

end A013909.P2383043148371849171

/-!
# A013910: 

The programs for A013910, there is no canonical definition to state claims against.
-/

/-! ## A013910.P2753400689758729285

`24^(5*n+1)`
-/

namespace A013910.P2753400689758729285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ (5 * n + 1)

end

end A013910.P2753400689758729285

/-! ## A013910.P13850085297304145244

`A009968(5*n+1)`
-/

namespace A013910.P13850085297304145244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009968 (5 * n + 1)

end

end A013910.P13850085297304145244

/-!
# A013911: 

The programs for A013911, there is no canonical definition to state claims against.
-/

/-! ## A013911.P8697787120215014377

`24^(5*n+2)`
-/

namespace A013911.P8697787120215014377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ (5 * n + 2)

end

end A013911.P8697787120215014377

/-!
# A013912: 

The programs for A013912, there is no canonical definition to state claims against.
-/

/-! ## A013912.P2035646553621343990

`24^(5*n+3)`
-/

namespace A013912.P2035646553621343990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ (5 * n + 3)

end

end A013912.P2035646553621343990

/-! ## A013912.P16638948168267655262

`A009968(abs(6*(n+1)-(n+3)))`
-/

namespace A013912.P16638948168267655262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009968 |(6 * (n + 1) : ℤ) - (n + 3 : ℤ)|.toNat

end

end A013912.P16638948168267655262

/-!
# A013913: 

The programs for A013913, there is no canonical definition to state claims against.
-/

/-! ## A013913.P11552208339479242046

`24^(5*n+4)`
-/

namespace A013913.P11552208339479242046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ (5 * n + 4)

end

end A013913.P11552208339479242046

/-! ## A013913.P12456264232800335517

`A009968(abs(6*(n+1)-(n+2)))`
-/

namespace A013913.P12456264232800335517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009968 |(6 * (n + 1) : ℤ) - (n + 2 : ℤ)|.toNat

end

end A013913.P12456264232800335517

/-!
# A013914: Number of distinct nonzero absolute values of Sum_{j=1..n} sigma_j * exp(i * Pi * j / n) where sigma_j = +- 1.

The programs for A013914, there is no canonical definition to state claims against.
-/

/-! ## A013914.P17818641893088341539

`A221356(A063895(n+2)+1)`
-/

namespace A013914.P17818641893088341539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221356 (A063895 (n + 2) + 1).toNat

end

end A013914.P17818641893088341539

/-! ## A013914.P15573135548612668807

`A219968(n)-A261887(round(π*a(n-1)))` with `a(0)=1`
-/

namespace A013914.P15573135548612668807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A219968 n - A261887 (SequenceMachineLib.roundAway (Real.pi * (a (n - 1) : ℝ))).toNat

end

end A013914.P15573135548612668807

/-!
# A013915: a(n) = F(n) + L(n) + n, where F(n) (A000045) and L(n) (A000204) are Fibonacci and Lucas numbers respectively.

The programs for A013915, the canonical program `A013915.P5526775988631183026` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013915 has offset 0).

The definition of A013915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013915.P7324560264718765780

`ogf((3-6x+4x^2-2x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A013915.P7324560264718765780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, 4, -2] [1, -3, 2, 1, -1] n

end

end A013915.P7324560264718765780

namespace A013915

/-- `ogf((3-6x+4x^2-2x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P7324560264718765780.Spec : Prop :=
  ∀ n, P7324560264718765780.a n = A013915 n

end A013915

/-! ## A013915.P117620386582290797

`a(n-1)+a(n-2)-n+3` with `a(0)=3, a(1)=3`
-/

namespace A013915.P117620386582290797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 1) + a (n - 2) - (n : ℤ) + 3

end

end A013915.P117620386582290797

namespace A013915

/-- `a(n-1)+a(n-2)-n+3` -/
def P117620386582290797.Spec : Prop :=
  ∀ n, P117620386582290797.a n = A013915 n

end A013915

/-! ## A013915.P5526775988631183026

`n+A013655(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013915

/-- `n+A013655(n)` -/
def P5526775988631183026.Spec : Prop :=
  ∀ n, P5526775988631183026.a n = A013915 n

theorem P5526775988631183026.correct : P5526775988631183026.Spec := by
  intro n
  simp only [A013915]

end A013915

/-! ## A013915.P15316425421822972573

`∑[a(n-2)+a(n-1)-1]` with `a(0)=3, a(1)=0, a(2)=4`
-/

namespace A013915.P15316425421822972573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 4] fun n f1 =>
  f1 (n - 2) + f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013915.P15316425421822972573

namespace A013915

/-- `∑[a(n-2)+a(n-1)-1]` -/
def P15316425421822972573.Spec : Prop :=
  ∀ n, P15316425421822972573.a n = A013915 n

end A013915

/-! ## A013915.P3054269463860233037

`∑[a(n-1)-(1-a(n-2))]` with `a(0)=3, a(1)=0, a(2)=4`
-/

namespace A013915.P3054269463860233037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 4] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013915.P3054269463860233037

namespace A013915

/-- `∑[a(n-1)-(1-a(n-2))]` -/
def P3054269463860233037.Spec : Prop :=
  ∀ n, P3054269463860233037.a n = A013915 n

end A013915

/-! ## A013915.P8594817548627959926

`3-(n-a(n-1)-a(n-2))` with `a(0)=3, a(1)=3`
-/

namespace A013915.P8594817548627959926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  3 - ((n : ℤ) - a (n - 1) - a (n - 2))

end

end A013915.P8594817548627959926

namespace A013915

/-- `3-(n-a(n-1)-a(n-2))` -/
def P8594817548627959926.Spec : Prop :=
  ∀ n, P8594817548627959926.a n = A013915 n

end A013915

/-! ## A013915.P18391506884498983516

`A187890(n+2)-1+n`
-/

namespace A013915.P18391506884498983516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 2) - 1 + (n : ℤ)

end

end A013915.P18391506884498983516

namespace A013915

/-- `A187890(n+2)-1+n` -/
def P18391506884498983516.Spec : Prop :=
  ∀ n, P18391506884498983516.a n = A013915 n

end A013915

/-! ## A013915.P4330577217827235853

`A081659(n)+A000032(n)`
-/

namespace A013915.P4330577217827235853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n + A000032 n

end

end A013915.P4330577217827235853

namespace A013915

/-- `A081659(n)+A000032(n)` -/
def P4330577217827235853.Spec : Prop :=
  ∀ n, P4330577217827235853.a n = A013915 n

end A013915

/-! ## A013915.P8617659341498979076

`A104449(n)+A002062(n)`
-/

namespace A013915.P8617659341498979076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A002062 n

end

end A013915.P8617659341498979076

namespace A013915

/-- `A104449(n)+A002062(n)` -/
def P8617659341498979076.Spec : Prop :=
  ∀ n, P8617659341498979076.a n = A013915 n

end A013915

/-! ## A013915.P2965507276408301583

`A013655(n)-A001489(n)`
-/

namespace A013915.P2965507276408301583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n - A001489 n

end

end A013915.P2965507276408301583

namespace A013915

/-- `A013655(n)-A001489(n)` -/
def P2965507276408301583.Spec : Prop :=
  ∀ n, P2965507276408301583.a n = A013915 n

theorem P2965507276408301583.correct : P2965507276408301583.Spec := by
  intro n
  simp only [A013915, Nat.add_sub_cancel, A013915.P2965507276408301583.a, A013915.P5526775988631183026.a, A001489, A001489.P15233530513763566776.a, A013655, A013655.P8111097168935384148.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013915

/-! ## A013915.P7016833250421348535

`A048577(n)-A210673(n)`
-/

namespace A013915.P7016833250421348535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - A210673 n

end

end A013915.P7016833250421348535

namespace A013915

/-- `A048577(n)-A210673(n)` -/
def P7016833250421348535.Spec : Prop :=
  ∀ n, P7016833250421348535.a n = A013915 n

end A013915

/-! ## A013915.P13222693349923059276

`A118658(n)+∑[A001611(n)]`
-/

namespace A013915.P13222693349923059276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013915.P13222693349923059276

namespace A013915

/-- `A118658(n)+∑[A001611(n)]` -/
def P13222693349923059276.Spec : Prop :=
  ∀ n, P13222693349923059276.a n = A013915 n

end A013915

/-! ## A013915.P3468219717694471969

`A014217(n)+A052959(n)+n`
-/

namespace A013915.P3468219717694471969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n + (A052959 n + (n : ℤ))

end

end A013915.P3468219717694471969

namespace A013915

/-- `A014217(n)+A052959(n)+n` -/
def P3468219717694471969.Spec : Prop :=
  ∀ n, P3468219717694471969.a n = A013915 n

end A013915

/-! ## A013915.P5536467427617341073

`A000045(n)+A104449(n)+n`
-/

namespace A013915.P5536467427617341073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A104449 n + (n : ℤ))

end

end A013915.P5536467427617341073

namespace A013915

/-- `A000045(n)+A104449(n)+n` -/
def P5536467427617341073.Spec : Prop :=
  ∀ n, P5536467427617341073.a n = A013915 n

end A013915

/-! ## A013915.P7851271142704813899

`A020695(n)+A152163(n)+n`
-/

namespace A013915.P7851271142704813899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (A152163 n + (n : ℤ))

end

end A013915.P7851271142704813899

namespace A013915

/-- `A020695(n)+A152163(n)+n` -/
def P7851271142704813899.Spec : Prop :=
  ∀ n, P7851271142704813899.a n = A013915 n

end A013915

/-! ## A013915.P12553493930450829739

`A118658(n)+∑[A000045(n)+1]`
-/

namespace A013915.P12553493930450829739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013915.P12553493930450829739

namespace A013915

/-- `A118658(n)+∑[A000045(n)+1]` -/
def P12553493930450829739.Spec : Prop :=
  ∀ n, P12553493930450829739.a n = A013915 n

end A013915

/-! ## A013915.P11235384639624696182

`A000032(n)+∑[A212804(n)]+n`
-/

namespace A013915.P11235384639624696182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A013915.P11235384639624696182

namespace A013915

/-- `A000032(n)+∑[A212804(n)]+n` -/
def P11235384639624696182.Spec : Prop :=
  ∀ n, P11235384639624696182.a n = A013915 n

end A013915

/-! ## A013915.P11857473097955945072

`A000045(n+1)+A000032(n)+n`
-/

namespace A013915.P11857473097955945072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000032 n + (n : ℤ))

end

end A013915.P11857473097955945072

namespace A013915

/-- `A000045(n+1)+A000032(n)+n` -/
def P11857473097955945072.Spec : Prop :=
  ∀ n, P11857473097955945072.a n = A013915 n

end A013915

/-! ## A013915.P5959585726438809549

`A000071(n+1)+A001612(n)+n`
-/

namespace A013915.P5959585726438809549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A001612 n + (n : ℤ))

end

end A013915.P5959585726438809549

namespace A013915

/-- `A000071(n+1)+A001612(n)+n` -/
def P5959585726438809549.Spec : Prop :=
  ∀ n, P5959585726438809549.a n = A013915 n

end A013915

/-! ## A013915.P8330677598912848568

`A007492(n+1)+A098600(n)+n`
-/

namespace A013915.P8330677598912848568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007492 (n + 1) + (A098600 n + (n : ℤ))

end

end A013915.P8330677598912848568

namespace A013915

/-- `A007492(n+1)+A098600(n)+n` -/
def P8330677598912848568.Spec : Prop :=
  ∀ n, P8330677598912848568.a n = A013915 n

end A013915

/-!
# A013916: Numbers k such that the sum of the first k primes is prime.

The programs for A013916, the canonical program `A013916.P10696422965911932612` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013916 has offset 1).

The definition of A013916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013916.P16615910471076863703

`A000720(A013917(n+1))`
-/

namespace A013916.P16615910471076863703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A013917 (n + 1)).toNat

end

end A013916.P16615910471076863703

namespace A013916

/-- `A000720(A013917(n+1))` -/
def P16615910471076863703.Spec : Prop :=
  ∀ n, P16615910471076863703.a n = A013916 (n + 1)

end A013916

/-! ## A013916.P4204244285844837984

`lt[A105783(n+1), acot(n)]+1`
-/

namespace A013916.P4204244285844837984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A013916.P4204244285844837984

namespace A013916

/-- `lt[A105783(n+1), acot(n)]+1` -/
def P4204244285844837984.Spec : Prop :=
  ∀ n, (P4204244285844837984.a n : ℤ) = A013916 (n + 1)

end A013916

/-! ## A013916.P14080596526872736075

`eq[0, A366092(n)]`
-/

namespace A013916.P14080596526872736075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013916.P14080596526872736075

namespace A013916

/-- `eq[0, A366092(n)]` -/
def P14080596526872736075.Spec : Prop :=
  ∀ n, (P14080596526872736075.a n : ℤ) = A013916 (n + 1)

end A013916

/-! ## A013916.P10696422965911932612

`eq[1, A102862(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A013916

/-- `eq[1, A102862(n+1)]+1` -/
def P10696422965911932612.Spec : Prop :=
  ∀ n, (P10696422965911932612.a n : ℤ) = A013916 (n + 1)

theorem P10696422965911932612.correct : P10696422965911932612.Spec := by
  intro n
  simp only [A013916, Nat.add_sub_cancel]

end A013916

/-! ## A013916.P15298453841262262059

`eq[2, A007610(n+1)]+1`
-/

namespace A013916.P15298453841262262059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013916.P15298453841262262059

namespace A013916

/-- `eq[2, A007610(n+1)]+1` -/
def P15298453841262262059.Spec : Prop :=
  ∀ n, (P15298453841262262059.a n : ℤ) = A013916 (n + 1)

end A013916

/-! ## A013916.P973918010417490940

`eq[2, A074369(n+1)]+1`
-/

namespace A013916.P973918010417490940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013916.P973918010417490940

namespace A013916

/-- `eq[2, A074369(n+1)]+1` -/
def P973918010417490940.Spec : Prop :=
  ∀ n, (P973918010417490940.a n : ℤ) = A013916 (n + 1)

end A013916

/-! ## A013916.P8280591823871205243

`eq[1, A302567(n+1)+1]+1`
-/

namespace A013916.P8280591823871205243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302567 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013916.P8280591823871205243

namespace A013916

/-- `eq[1, A302567(n+1)+1]+1` -/
def P8280591823871205243.Spec : Prop :=
  ∀ n, (P8280591823871205243.a n : ℤ) = A013916 (n + 1)

end A013916

/-! ## A013916.P18226022240669974095

`eq[n, n*A132995(n+1)]+1`
-/

namespace A013916.P18226022240669974095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A132995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013916.P18226022240669974095

namespace A013916

/-- `eq[n, n*A132995(n+1)]+1` -/
def P18226022240669974095.Spec : Prop :=
  ∀ n, (P18226022240669974095.a n : ℤ) = A013916 (n + 1)

end A013916

/-! ## A013916.P4408584548623549139

`record[n+1-n*A102863(n+1)]`
-/

namespace A013916.P4408584548623549139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (n : ℤ) * A102863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013916.P4408584548623549139

namespace A013916

/-- `record[n+1-n*A102863(n+1)]` -/
def P4408584548623549139.Spec : Prop :=
  ∀ n, P4408584548623549139.a n = A013916 (n + 1)

end A013916

/-! ## A013916.P18010439340630166505

`lt[A007504(n), A121755(n+1)]+1`
-/

namespace A013916.P18010439340630166505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A013916.P18010439340630166505

namespace A013916

/-- `lt[A007504(n), A121755(n+1)]+1` -/
def P18010439340630166505.Spec : Prop :=
  ∀ n, (P18010439340630166505.a n : ℤ) = A013916 (n + 1)

end A013916

/-!
# A013917: a(n) is prime and sum of all primes <= a(n) is prime.

The programs for A013917, the canonical program `A013917.P2257545791031421638` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013917 has offset 1).

The definition of A013917 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A013917.P2257545791031421638

`A000040(A013916(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A013917

/-- `A000040(A013916(n+1))` -/
def P2257545791031421638.Spec : Prop :=
  ∀ n, P2257545791031421638.a n = A013917 (n + 1)

theorem P2257545791031421638.correct : P2257545791031421638.Spec := by
  intro n
  simp only [A013917, Nat.add_sub_cancel]

end A013917

/-! ## A013917.P12119760213157266530

`A013918(n+1)-A007504(A013916(n+1)-1)`
-/

namespace A013917.P12119760213157266530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013918 (n + 1) - A007504 (A013916 (n + 1) - 1).toNat

end

end A013917.P12119760213157266530

namespace A013917

/-- `A013918(n+1)-A007504(A013916(n+1)-1)` -/
def P12119760213157266530.Spec : Prop :=
  ∀ n, P12119760213157266530.a n = A013917 (n + 1)

end A013917

/-! ## A013917.P6055908443638896833

`p?[A228102(n+1)]`
-/

namespace A013917.P6055908443638896833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A013917.P6055908443638896833

namespace A013917

/-- `p?[A228102(n+1)]` -/
def P6055908443638896833.Spec : Prop :=
  ∀ n, P6055908443638896833.a n = A013917 (n + 1)

end A013917

/-! ## A013917.P15849511357798787334

`∩[A106118(n+1), A228102(n+1)]`
-/

namespace A013917.P15849511357798787334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013917.P15849511357798787334

namespace A013917

/-- `∩[A106118(n+1), A228102(n+1)]` -/
def P15849511357798787334.Spec : Prop :=
  ∀ n, (P15849511357798787334.a n : ℤ) = A013917 (n + 1)

end A013917

/-! ## A013917.P7800660826486427687

`A008578(A013916(n+1)+1)`
-/

namespace A013917.P7800660826486427687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A013916 (n + 1) + 1).toNat

end

end A013917.P7800660826486427687

namespace A013917

/-- `A008578(A013916(n+1)+1)` -/
def P7800660826486427687.Spec : Prop :=
  ∀ n, P7800660826486427687.a n = A013917 (n + 1)

end A013917

/-! ## A013917.P4532499539331768672

`∩[A000040(n+1), A228102(n+1)]`
-/

namespace A013917.P4532499539331768672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013917.P4532499539331768672

namespace A013917

/-- `∩[A000040(n+1), A228102(n+1)]` -/
def P4532499539331768672.Spec : Prop :=
  ∀ n, (P4532499539331768672.a n : ℤ) = A013917 (n + 1)

end A013917

/-! ## A013917.P15242517545200086059

`∩[A008578(n+1), A228102(n+1)]`
-/

namespace A013917.P15242517545200086059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013917.P15242517545200086059

namespace A013917

/-- `∩[A008578(n+1), A228102(n+1)]` -/
def P15242517545200086059.Spec : Prop :=
  ∀ n, (P15242517545200086059.a n : ℤ) = A013917 (n + 1)

end A013917

/-! ## A013917.P3750547545296933165

`∩[A045319(n+1), A228102(n+1)]`
-/

namespace A013917.P3750547545296933165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013917.P3750547545296933165

namespace A013917

/-- `∩[A045319(n+1), A228102(n+1)]` -/
def P3750547545296933165.Spec : Prop :=
  ∀ n, (P3750547545296933165.a n : ℤ) = A013917 (n + 1)

end A013917

/-! ## A013917.P9358142687170451663

`∩[A053813(n+1), A228102(n+1)]`
-/

namespace A013917.P9358142687170451663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013917.P9358142687170451663

namespace A013917

/-- `∩[A053813(n+1), A228102(n+1)]` -/
def P9358142687170451663.Spec : Prop :=
  ∀ n, (P9358142687170451663.a n : ℤ) = A013917 (n + 1)

end A013917

/-! ## A013917.P7289818369103407541

`∩[A116974(n+1), A228102(n+1)]`
-/

namespace A013917.P7289818369103407541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013917.P7289818369103407541

namespace A013917

/-- `∩[A116974(n+1), A228102(n+1)]` -/
def P7289818369103407541.Spec : Prop :=
  ∀ n, (P7289818369103407541.a n : ℤ) = A013917 (n + 1)

end A013917

/-! ## A013917.P7680022395570176169

`∩[A158611(n+1), A228102(n+1)]`
-/

namespace A013917.P7680022395570176169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013917.P7680022395570176169

namespace A013917

/-- `∩[A158611(n+1), A228102(n+1)]` -/
def P7680022395570176169.Spec : Prop :=
  ∀ n, (P7680022395570176169.a n : ℤ) = A013917 (n + 1)

end A013917

/-! ## A013917.P16263961653382766630

`∩[A182986(n+1), A228102(n+1)]`
-/

namespace A013917.P16263961653382766630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013917.P16263961653382766630

namespace A013917

/-- `∩[A182986(n+1), A228102(n+1)]` -/
def P16263961653382766630.Spec : Prop :=
  ∀ n, (P16263961653382766630.a n : ℤ) = A013917 (n + 1)

end A013917

/-! ## A013917.P18046618834614267689

`∩[A228102(n+1), A283599(n+1)]`
-/

namespace A013917.P18046618834614267689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013917.P18046618834614267689

namespace A013917

/-- `∩[A228102(n+1), A283599(n+1)]` -/
def P18046618834614267689.Spec : Prop :=
  ∀ n, (P18046618834614267689.a n : ℤ) = A013917 (n + 1)

end A013917

/-! ## A013917.P17846786980062283214

`∩[A228102(n+1), A326715(n+1)]`
-/

namespace A013917.P17846786980062283214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013917.P17846786980062283214

namespace A013917

/-- `∩[A228102(n+1), A326715(n+1)]` -/
def P17846786980062283214.Spec : Prop :=
  ∀ n, (P17846786980062283214.a n : ℤ) = A013917 (n + 1)

end A013917

/-! ## A013917.P5026002596284959283

`filter[A228102(n+1), A010051(#)]`
-/

namespace A013917.P5026002596284959283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A013917.P5026002596284959283

namespace A013917

/-- `filter[A228102(n+1), A010051(#)]` -/
def P5026002596284959283.Spec : Prop :=
  ∀ n, P5026002596284959283.a n = A013917 (n + 1)

end A013917

/-! ## A013917.P10071777430817496467

`A006530(A033286(A013916(n+1))/A013916(n+1))`
-/

namespace A013917.P10071777430817496467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A033286 (A013916 (n + 1)).toNat : ℚ) / (A013916 (n + 1) : ℚ))).toNat

end

end A013917.P10071777430817496467

namespace A013917

/-- `A006530(A033286(A013916(n+1))/A013916(n+1))` -/
def P10071777430817496467.Spec : Prop :=
  ∀ n, P10071777430817496467.a n = A013917 (n + 1)

end A013917

/-! ## A013917.P13140126816411715261

`A020639(A033286(A013916(n+1))/A013916(n+1))`
-/

namespace A013917.P13140126816411715261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A033286 (A013916 (n + 1)).toNat : ℚ) / (A013916 (n + 1) : ℚ))).toNat

end

end A013917.P13140126816411715261

namespace A013917

/-- `A020639(A033286(A013916(n+1))/A013916(n+1))` -/
def P13140126816411715261.Spec : Prop :=
  ∀ n, P13140126816411715261.a n = A013917 (n + 1)

end A013917

/-! ## A013917.P5490117851527033178

`filter[A228102(n+1), A323152(#)]`
-/

namespace A013917.P5490117851527033178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A013917.P5490117851527033178

namespace A013917

/-- `filter[A228102(n+1), A323152(#)]` -/
def P5490117851527033178.Spec : Prop :=
  ∀ n, P5490117851527033178.a n = A013917 (n + 1)

end A013917

/-! ## A013917.P9158098018422018873

`filter[A228102(n+1), A323153(#)]`
-/

namespace A013917.P9158098018422018873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A013917.P9158098018422018873

namespace A013917

/-- `filter[A228102(n+1), A323153(#)]` -/
def P9158098018422018873.Spec : Prop :=
  ∀ n, P9158098018422018873.a n = A013917 (n + 1)

end A013917

/-!
# A013918: Primes equal to the sum of the first k primes for some k.

The programs for A013918, the canonical program `A013918.P18405346169258133439` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013918 has offset 1).

The definition of A013918 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A013918.P18405346169258133439

`A007504(A013916(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A013918

/-- `A007504(A013916(n+1))` -/
def P18405346169258133439.Spec : Prop :=
  ∀ n, P18405346169258133439.a n = A013918 (n + 1)

theorem P18405346169258133439.correct : P18405346169258133439.Spec := by
  intro n
  simp only [A013918, Nat.add_sub_cancel]

end A013918

/-! ## A013918.P17320416986377396122

`∩[A066039(n+1), A007504(n)]`
-/

namespace A013918.P17320416986377396122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013918.P17320416986377396122

namespace A013918

/-- `∩[A066039(n+1), A007504(n)]` -/
def P17320416986377396122.Spec : Prop :=
  ∀ n, (P17320416986377396122.a n : ℤ) = A013918 (n + 1)

end A013918

/-! ## A013918.P16443370516555584031

`∩[A076873(n+1), A007504(n)]`
-/

namespace A013918.P16443370516555584031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013918.P16443370516555584031

namespace A013918

/-- `∩[A076873(n+1), A007504(n)]` -/
def P16443370516555584031.Spec : Prop :=
  ∀ n, (P16443370516555584031.a n : ℤ) = A013918 (n + 1)

end A013918

/-! ## A013918.P7077354096548844273

`A007504(eq[2, A074369(n+1)]+1)`
-/

namespace A013918.P7077354096548844273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A013918.P7077354096548844273

namespace A013918

/-- `A007504(eq[2, A074369(n+1)]+1)` -/
def P7077354096548844273.Spec : Prop :=
  ∀ n, P7077354096548844273.a n = A013918 (n + 1)

end A013918

/-! ## A013918.P220905324473185113

`A070281(A013916(2*n+1-n))`
-/

namespace A013918.P220905324473185113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (A013916 (2 * n + 1 - n)).toNat

end

end A013918.P220905324473185113

namespace A013918

/-- `A070281(A013916(2*n+1-n))` -/
def P220905324473185113.Spec : Prop :=
  ∀ n, P220905324473185113.a n = A013918 (n + 1)

end A013918

/-! ## A013918.P10778598187677185243

`∩[A066039(n+1), A076873(n+1)]`
-/

namespace A013918.P10778598187677185243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013918.P10778598187677185243

namespace A013918

/-- `∩[A066039(n+1), A076873(n+1)]` -/
def P10778598187677185243.Spec : Prop :=
  ∀ n, (P10778598187677185243.a n : ℤ) = A013918 (n + 1)

end A013918

/-! ## A013918.P16689458158411986418

`A075881(A013916(2*(n+1)-(n+1)))`
-/

namespace A013918.P16689458158411986418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075881 (A013916 (2 * (n + 1) - (n + 1))).toNat

end

end A013918.P16689458158411986418

namespace A013918

/-- `A075881(A013916(2*(n+1)-(n+1)))` -/
def P16689458158411986418.Spec : Prop :=
  ∀ n, P16689458158411986418.a n = A013918 (n + 1)

end A013918

/-! ## A013918.P2042270687024963297

`A076873(A013916((n+1)²-(n²+n)))`
-/

namespace A013918.P2042270687024963297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076873 (A013916 ((n + 1) ^ 2 - (n ^ 2 + n))).toNat

end

end A013918.P2042270687024963297

namespace A013918

/-- `A076873(A013916((n+1)²-(n²+n)))` -/
def P2042270687024963297.Spec : Prop :=
  ∀ n, P2042270687024963297.a n = A013918 (n + 1)

end A013918

/-! ## A013918.P10424450965535395895

`A007504(lt[A007504(n), A121755(n+1)]+1)`
-/

namespace A013918.P10424450965535395895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A013918.P10424450965535395895

namespace A013918

/-- `A007504(lt[A007504(n), A121755(n+1)]+1)` -/
def P10424450965535395895.Spec : Prop :=
  ∀ n, P10424450965535395895.a n = A013918 (n + 1)

end A013918

/-! ## A013918.P16933869820330781003

`A076873(2*A013916(n+1)-A013916(n+1))`
-/

namespace A013918.P16933869820330781003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076873 (2 * A013916 (n + 1) - A013916 (n + 1)).toNat

end

end A013918.P16933869820330781003

namespace A013918

/-- `A076873(2*A013916(n+1)-A013916(n+1))` -/
def P16933869820330781003.Spec : Prop :=
  ∀ n, P16933869820330781003.a n = A013918 (n + 1)

end A013918

/-! ## A013918.P15453754806882968637

`A007504(A000720(A013917(n+1)))`
-/

namespace A013918.P15453754806882968637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (A013917 (n + 1)).toNat).toNat

end

end A013918.P15453754806882968637

namespace A013918

/-- `A007504(A000720(A013917(n+1)))` -/
def P15453754806882968637.Spec : Prop :=
  ∀ n, P15453754806882968637.a n = A013918 (n + 1)

end A013918

/-! ## A013918.P15421658499193444483

`A160793(2*A013916(n+1))`
-/

namespace A013918.P15421658499193444483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (2 * A013916 (n + 1)).toNat

end

end A013918.P15421658499193444483

namespace A013918

/-- `A160793(2*A013916(n+1))` -/
def P15421658499193444483.Spec : Prop :=
  ∀ n, P15421658499193444483.a n = A013918 (n + 1)

end A013918

/-! ## A013918.P11984197778090959971

`∩[A066039(n+1), A213011(n+1)]`
-/

namespace A013918.P11984197778090959971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013918.P11984197778090959971

namespace A013918

/-- `∩[A066039(n+1), A213011(n+1)]` -/
def P11984197778090959971.Spec : Prop :=
  ∀ n, (P11984197778090959971.a n : ℤ) = A013918 (n + 1)

end A013918

/-! ## A013918.P12384720297992047930

`∩[A076873(n+1), A213011(n+1)]`
-/

namespace A013918.P12384720297992047930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013918.P12384720297992047930

namespace A013918

/-- `∩[A076873(n+1), A213011(n+1)]` -/
def P12384720297992047930.Spec : Prop :=
  ∀ n, (P12384720297992047930.a n : ℤ) = A013918 (n + 1)

end A013918

/-! ## A013918.P3358221742963869407

`p?[∑[record[∑{p}[n, #]]]]`
-/

namespace A013918.P3358221742963869407
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A013918.P3358221742963869407

namespace A013918

/-- `p?[∑[record[∑{p}[n, #]]]]` -/
def P3358221742963869407.Spec : Prop :=
  ∀ n, (P3358221742963869407.a n : ℤ) = A013918 (n + 1)

end A013918

/-!
# A013919: Numbers n such that sum of first n composites is composite.

The programs for A013919, the canonical program `A013919.P4603668033826040602` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013919 has offset 1).

The definition of A013919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9394 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013919.P4603668033826040602

`record[(n+1)%(A227314(n+1)+n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A013919

/-- `record[(n+1)%(A227314(n+1)+n)]` -/
def P4603668033826040602.Spec : Prop :=
  ∀ n, P4603668033826040602.a n = A013919 (n + 1)

theorem P4603668033826040602.correct : P4603668033826040602.Spec := by
  intro n
  simp only [A013919, Nat.add_sub_cancel]

end A013919

/-! ## A013919.P14952788478481422158

`A026238(A013920(n+1))`
-/

namespace A013919.P14952788478481422158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A013920 (n + 1)).toNat

end

end A013919.P14952788478481422158

namespace A013919

/-- `A026238(A013920(n+1))` -/
def P14952788478481422158.Spec : Prop :=
  ∀ n, P14952788478481422158.a n = A013919 (n + 1)

end A013919

/-! ## A013919.P7569578218603480953

`lt[1, ∏{e}[A053767(n), #+1]-1]`
-/

namespace A013919.P7569578218603480953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A013919.P7569578218603480953

namespace A013919

/-- `lt[1, ∏{e}[A053767(n), #+1]-1]` -/
def P7569578218603480953.Spec : Prop :=
  ∀ n, (P7569578218603480953.a n : ℤ) = A013919 (n + 1)

end A013919

/-! ## A013919.P7917211536178832932

`lt[2, A077462(A053767(n))]`
-/

namespace A013919.P7917211536178832932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A053767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A013919.P7917211536178832932

namespace A013919

/-- `lt[2, A077462(A053767(n))]` -/
def P7917211536178832932.Spec : Prop :=
  ∀ n, (P7917211536178832932.a n : ℤ) = A013919 (n + 1)

end A013919

/-! ## A013919.P6359615409515158559

`eq[0, A010051(∑[A002808(n+1)])]+1`
-/

namespace A013919.P6359615409515158559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013919.P6359615409515158559

namespace A013919

/-- `eq[0, A010051(∑[A002808(n+1)])]+1` -/
def P6359615409515158559.Spec : Prop :=
  ∀ n, (P6359615409515158559.a n : ℤ) = A013919 (n + 1)

end A013919

/-! ## A013919.P3308033470157753358

`eq[1, A005171(∑[A002808(n+1)])]+1`
-/

namespace A013919.P3308033470157753358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013919.P3308033470157753358

namespace A013919

/-- `eq[1, A005171(∑[A002808(n+1)])]+1` -/
def P3308033470157753358.Spec : Prop :=
  ∀ n, (P3308033470157753358.a n : ℤ) = A013919 (n + 1)

end A013919

/-! ## A013919.P9575784670487358768

`eq[1, A066247(∑[A002808(n+1)])]+1`
-/

namespace A013919.P9575784670487358768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013919.P9575784670487358768

namespace A013919

/-- `eq[1, A066247(∑[A002808(n+1)])]+1` -/
def P9575784670487358768.Spec : Prop :=
  ∀ n, (P9575784670487358768.a n : ℤ) = A013919 (n + 1)

end A013919

/-! ## A013919.P15390662528010051355

`A111654(A013921(n+1))`
-/

namespace A013919.P15390662528010051355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A013921 (n + 1)).toNat

end

end A013919.P15390662528010051355

namespace A013919

/-- `A111654(A013921(n+1))` -/
def P15390662528010051355.Spec : Prop :=
  ∀ n, P15390662528010051355.a n = A013919 (n + 1)

end A013919

/-! ## A013919.P16381554649904847562

`lt[0, A066246(∑[A002808(n+1)])]+1`
-/

namespace A013919.P16381554649904847562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A013919.P16381554649904847562

namespace A013919

/-- `lt[0, A066246(∑[A002808(n+1)])]+1` -/
def P16381554649904847562.Spec : Prop :=
  ∀ n, (P16381554649904847562.a n : ℤ) = A013919 (n + 1)

end A013919

/-! ## A013919.P9025058023337709077

`eq[A000007(n), A055671(A053767(n))]`
-/

namespace A013919.P9025058023337709077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A053767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A013919.P9025058023337709077

namespace A013919

/-- `eq[A000007(n), A055671(A053767(n))]` -/
def P9025058023337709077.Spec : Prop :=
  ∀ n, (P9025058023337709077.a n : ℤ) = A013919 (n + 1)

end A013919

/-!
# A013920: Composite numbers k such that the sum of all composites <= k is composite.

The programs for A013920, the canonical program `A013920.P16885706931666390019` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013920 has offset 1).

The definition of A013920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013920.P16885706931666390019

`A002808(A013919(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A013920

/-- `A002808(A013919(n+1))` -/
def P16885706931666390019.Spec : Prop :=
  ∀ n, P16885706931666390019.a n = A013920 (n + 1)

theorem P16885706931666390019.correct : P16885706931666390019.Spec := by
  intro n
  simp only [A013920, Nat.add_sub_cancel]

end A013920

/-! ## A013920.P17486725696838983695

`A018252(A013919(n+1)+1)`
-/

namespace A013920.P17486725696838983695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A013919 (n + 1) + 1).toNat

end

end A013920.P17486725696838983695

namespace A013920

/-- `A018252(A013919(n+1)+1)` -/
def P17486725696838983695.Spec : Prop :=
  ∀ n, P17486725696838983695.a n = A013920 (n + 1)

end A013920

/-! ## A013920.P2755521515001473260

`A141468(A013919(n+1)+2)`
-/

namespace A013920.P2755521515001473260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A013919 (n + 1) + 2).toNat

end

end A013920.P2755521515001473260

namespace A013920

/-- `A141468(A013919(n+1)+2)` -/
def P2755521515001473260.Spec : Prop :=
  ∀ n, P2755521515001473260.a n = A013920 (n + 1)

end A013920

/-! ## A013920.P1242544216175656524

`A067747(2*A013919(n+1))`
-/

namespace A013920.P1242544216175656524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * A013919 (n + 1)).toNat

end

end A013920.P1242544216175656524

namespace A013920

/-- `A067747(2*A013919(n+1))` -/
def P1242544216175656524.Spec : Prop :=
  ∀ n, P1242544216175656524.a n = A013920 (n + 1)

end A013920

/-! ## A013920.P8181703924312124986

`A026239(∑{d}[A013919(n+1), A007444(#)])`
-/

namespace A013920.P8181703924312124986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d).toNat

end

end A013920.P8181703924312124986

namespace A013920

/-- `A026239(∑{d}[A013919(n+1), A007444(#)])` -/
def P8181703924312124986.Spec : Prop :=
  ∀ n, P8181703924312124986.a n = A013920 (n + 1)

end A013920

/-! ## A013920.P1217001678354277787

`A111655(A013921(n+1))`
-/

namespace A013920.P1217001678354277787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111655 (A013921 (n + 1)).toNat

end

end A013920.P1217001678354277787

namespace A013920

/-- `A111655(A013921(n+1))` -/
def P1217001678354277787.Spec : Prop :=
  ∀ n, P1217001678354277787.a n = A013920 (n + 1)

end A013920

/-!
# A013921: Composite numbers that are equal to the sum of the first k composites for some k.

The programs for A013921, the canonical program `A013921.P17312843061294283561` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013921 has offset 1).

The definition of A013921 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013919, A053767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A013921.P17312843061294283561

`A053767(A013919(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A013921

/-- `A053767(A013919(n+1))` -/
def P17312843061294283561.Spec : Prop :=
  ∀ n, P17312843061294283561.a n = A013921 (n + 1)

theorem P17312843061294283561.correct : P17312843061294283561.Spec := by
  intro n
  simp only [A013921, Nat.add_sub_cancel]

end A013921

/-! ## A013921.P16976273698562981974

`A101256(A013920(n+1))`
-/

namespace A013921.P16976273698562981974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101256 (A013920 (n + 1)).toNat

end

end A013921.P16976273698562981974

namespace A013921

/-- `A101256(A013920(n+1))` -/
def P16976273698562981974.Spec : Prop :=
  ∀ n, P16976273698562981974.a n = A013921 (n + 1)

end A013921

/-! ## A013921.P11836905806134918560

`A329484(A328579(n))+A101203(A013920(n+1))+1`
-/

namespace A013921.P11836905806134918560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A328579 n).toNat + (A101203 (A013920 (n + 1)).toNat + 1)

end

end A013921.P11836905806134918560

namespace A013921

/-- `A329484(A328579(n))+A101203(A013920(n+1))+1` -/
def P11836905806134918560.Spec : Prop :=
  ∀ n, P11836905806134918560.a n = A013921 (n + 1)

end A013921

/-! ## A013921.P2310258759256780824

`∩[A073621(n+1), A053767(n)]`
-/

namespace A013921.P2310258759256780824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013921.P2310258759256780824

namespace A013921

/-- `∩[A073621(n+1), A053767(n)]` -/
def P2310258759256780824.Spec : Prop :=
  ∀ n, (P2310258759256780824.a n : ℤ) = A013921 (n + 1)

end A013921

/-! ## A013921.P15762756843305793219

`A260196(3*(n+1))+A101203(A013920(n+1))`
-/

namespace A013921.P15762756843305793219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (3 * (n + 1)) + A101203 (A013920 (n + 1)).toNat

end

end A013921.P15762756843305793219

namespace A013921

/-- `A260196(3*(n+1))+A101203(A013920(n+1))` -/
def P15762756843305793219.Spec : Prop :=
  ∀ n, P15762756843305793219.a n = A013921 (n + 1)

end A013921

/-! ## A013921.P7975679852124803114

`filter[A053767(n+1), A005171(#)]`
-/

namespace A013921.P7975679852124803114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A013921.P7975679852124803114

namespace A013921

/-- `filter[A053767(n+1), A005171(#)]` -/
def P7975679852124803114.Spec : Prop :=
  ∀ n, P7975679852124803114.a n = A013921 (n + 1)

end A013921

/-! ## A013921.P16631134782702322721

`filter[A053767(n+1), A066247(#)]`
-/

namespace A013921.P16631134782702322721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A013921.P16631134782702322721

namespace A013921

/-- `filter[A053767(n+1), A066247(#)]` -/
def P16631134782702322721.Spec : Prop :=
  ∀ n, P16631134782702322721.a n = A013921 (n + 1)

end A013921

/-! ## A013921.P7856122214784052186

`A002808(A020642(n+1))`
-/

namespace A013921.P7856122214784052186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A020642 (n + 1)).toNat

end

end A013921.P7856122214784052186

namespace A013921

/-- `A002808(A020642(n+1))` -/
def P7856122214784052186.Spec : Prop :=
  ∀ n, P7856122214784052186.a n = A013921 (n + 1)

end A013921

/-! ## A013921.P2856993332230108468

`A018252(A020642(n+1)+1)`
-/

namespace A013921.P2856993332230108468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A020642 (n + 1) + 1).toNat

end

end A013921.P2856993332230108468

namespace A013921

/-- `A018252(A020642(n+1)+1)` -/
def P2856993332230108468.Spec : Prop :=
  ∀ n, P2856993332230108468.a n = A013921 (n + 1)

end A013921

/-! ## A013921.P13718906889838968013

`A141468(A020642(n+1)+2)`
-/

namespace A013921.P13718906889838968013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A020642 (n + 1) + 2).toNat

end

end A013921.P13718906889838968013

namespace A013921

/-- `A141468(A020642(n+1)+2)` -/
def P13718906889838968013.Spec : Prop :=
  ∀ n, P13718906889838968013.a n = A013921 (n + 1)

end A013921

/-! ## A013921.P6896482148003233418

`∩[A002808(n+1), A053767(n)]`
-/

namespace A013921.P6896482148003233418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013921.P6896482148003233418

namespace A013921

/-- `∩[A002808(n+1), A053767(n)]` -/
def P6896482148003233418.Spec : Prop :=
  ∀ n, (P6896482148003233418.a n : ℤ) = A013921 (n + 1)

end A013921

/-! ## A013921.P6090687632427832566

`∩[A018252(n+1), A053767(n)]`
-/

namespace A013921.P6090687632427832566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013921.P6090687632427832566

namespace A013921

/-- `∩[A018252(n+1), A053767(n)]` -/
def P6090687632427832566.Spec : Prop :=
  ∀ n, (P6090687632427832566.a n : ℤ) = A013921 (n + 1)

end A013921

/-! ## A013921.P3634260214283510073

`∩[A018252(n+1), A051349(n)-1]`
-/

namespace A013921.P3634260214283510073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013921.P3634260214283510073

namespace A013921

/-- `∩[A018252(n+1), A051349(n)-1]` -/
def P3634260214283510073.Spec : Prop :=
  ∀ n, (P3634260214283510073.a n : ℤ) = A013921 (n + 1)

end A013921

/-! ## A013921.P10383028139140978584

`∩[A065090(n+1), A053767(n)]`
-/

namespace A013921.P10383028139140978584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013921.P10383028139140978584

namespace A013921

/-- `∩[A065090(n+1), A053767(n)]` -/
def P10383028139140978584.Spec : Prop :=
  ∀ n, (P10383028139140978584.a n : ℤ) = A013921 (n + 1)

end A013921

/-! ## A013921.P4814688060401317599

`∩[A171581(n+1), A053767(n)]`
-/

namespace A013921.P4814688060401317599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013921.P4814688060401317599

namespace A013921

/-- `∩[A171581(n+1), A053767(n)]` -/
def P4814688060401317599.Spec : Prop :=
  ∀ n, (P4814688060401317599.a n : ℤ) = A013921 (n + 1)

end A013921

/-! ## A013921.P17108661655873149196

`∩[A193166(n+1), A053767(n)]`
-/

namespace A013921.P17108661655873149196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013921.P17108661655873149196

namespace A013921

/-- `∩[A193166(n+1), A053767(n)]` -/
def P17108661655873149196.Spec : Prop :=
  ∀ n, (P17108661655873149196.a n : ℤ) = A013921 (n + 1)

end A013921

/-!
# A013922: Number of labeled connected graphs with n nodes and 0 cutpoints (blocks or nonseparable graphs).

The programs for A013922, there is no canonical definition to state claims against.
-/

/-! ## A013922.P7419582954827788438

`A370064(lt[A063007(n), A195459(n+1)])`
-/

namespace A013922.P7419582954827788438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370064 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A013922.P7419582954827788438

/-! ## A013922.P17055669138475455964

`A317671(A152947(n+1))-A000007(n)`
-/

namespace A013922.P17055669138475455964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317671 (A152947 (n + 1)).toNat - A000007 n

end

end A013922.P17055669138475455964

/-! ## A013922.P11171929506632527662

`A317671(A152947(n+1))-A010894(n)`
-/

namespace A013922.P11171929506632527662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317671 (A152947 (n + 1)).toNat - A010894 (n + 21)

end

end A013922.P11171929506632527662

/-! ## A013922.P9182475486137508190

`A317671(A152947(n+1))-A025926(n)`
-/

namespace A013922.P9182475486137508190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317671 (A152947 (n + 1)).toNat - A025926 n

end

end A013922.P9182475486137508190

/-! ## A013922.P888094999033515531

`A317671(A152947(n+1))-A028240(n)`
-/

namespace A013922.P888094999033515531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317671 (A152947 (n + 1)).toNat - A028240 n

end

end A013922.P888094999033515531

/-!
# A013923: Number of labeled connected graphs with n vertices and 1 cutpoint.

The programs for A013923, there is no canonical definition to state claims against.
-/

/-! ## A013923.P14759439699147045715

`A370064(A000217(n+3)+1)`
-/

namespace A013923.P14759439699147045715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370064 (A000217 (n + 3) + 1).toNat

end

end A013923.P14759439699147045715

/-! ## A013923.P6895411654691917176

`A370064(A167499(n)+A005408(n))`
-/

namespace A013923.P6895411654691917176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370064 (A167499 n + A005408 n).toNat

end

end A013923.P6895411654691917176

/-! ## A013923.P7580861285095907356

`A370064(A087811(n+1)+A087811(n+4))`
-/

namespace A013923.P7580861285095907356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370064 (A087811 (n + 1) + A087811 (n + 4)).toNat

end

end A013923.P7580861285095907356

/-!
# A013924: Number of labeled connected graphs with n nodes and 2 cutpoints.

The programs for A013924, there is no canonical definition to state claims against.
-/

/-! ## A013924.P13325892399183315529

`A370064(A000217(n+4)+2)`
-/

namespace A013924.P13325892399183315529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370064 (A000217 (n + 4) + 2).toNat

end

end A013924.P13325892399183315529

/-!
# A013925: Number of labeled connected graphs with n nodes and 3 cutpoints.

The programs for A013925, there is no canonical definition to state claims against.
-/

/-! ## A013925.P17598868517854842378

`A370064(A055998(n+4)-n)`
-/

namespace A013925.P17598868517854842378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370064 (A055998 (n + 4) - (n : ℤ)).toNat

end

end A013925.P17598868517854842378

/-!
# A013928: Number of (positive) squarefree numbers < n.

The programs for A013928, the canonical program `A013928.P10879382919085182663` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013928 has offset 1).

The definition of A013928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013928.P8574985469801466686

`A107079(n+1)-1`
-/

namespace A013928.P8574985469801466686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - 1

end

end A013928.P8574985469801466686

namespace A013928

/-- `A107079(n+1)-1` -/
def P8574985469801466686.Spec : Prop :=
  ∀ n, P8574985469801466686.a n = A013928 (n + 1)

theorem P8574985469801466686.correct : P8574985469801466686.Spec := by
  intro n
  simp only [A013928, Nat.add_sub_cancel, A013928.P8574985469801466686.a, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A107079, A107079.P8145768499534566836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013928

/-! ## A013928.P10879382919085182663

`∑{#}[floor(sqrt(n))-1, A008683(#+1)*floor(n/(#+1)²)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013928

/-- `∑{#}[floor(sqrt(n))-1, A008683(#+1)*floor(n/(#+1)²)]` -/
def P10879382919085182663.Spec : Prop :=
  ∀ n, P10879382919085182663.a n = A013928 (n + 1)

theorem P10879382919085182663.correct : P10879382919085182663.Spec := by
  intro n
  simp only [A013928, Nat.add_sub_cancel]

end A013928

/-! ## A013928.P12891540521727461604

`∑[C(∏{p}[n, #], n)]-1`
-/

namespace A013928.P12891540521727461604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A013928.P12891540521727461604

namespace A013928

/-- `∑[C(∏{p}[n, #], n)]-1` -/
def P12891540521727461604.Spec : Prop :=
  ∀ n, P12891540521727461604.a n = A013928 (n + 1)

end A013928

/-! ## A013928.P16335103818116300411

`∑[A074206(n)%2]`
-/

namespace A013928.P16335103818116300411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074206 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013928.P16335103818116300411

namespace A013928

/-- `∑[A074206(n)%2]` -/
def P16335103818116300411.Spec : Prop :=
  ∀ n, P16335103818116300411.a n = A013928 (n + 1)

end A013928

/-! ## A013928.P9453543531601980624

`∑[A325144(n)%2]`
-/

namespace A013928.P9453543531601980624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325144 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013928.P9453543531601980624

namespace A013928

/-- `∑[A325144(n)%2]` -/
def P9453543531601980624.Spec : Prop :=
  ∀ n, P9453543531601980624.a n = A013928 (n + 1)

end A013928

/-! ## A013928.P222584188253830729

`∑[char[comp[A105570(n)]]]`
-/

namespace A013928.P222584188253830729
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013928.P222584188253830729

namespace A013928

/-- `∑[char[comp[A105570(n)]]]` -/
def P222584188253830729.Spec : Prop :=
  ∀ n, (P222584188253830729.a n : ℤ) = A013928 (n + 1)

end A013928

/-! ## A013928.P13129114718449931815

`∑[char[A005117(n+1)]]`
-/

namespace A013928.P13129114718449931815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013928.P13129114718449931815

namespace A013928

/-- `∑[char[A005117(n+1)]]` -/
def P13129114718449931815.Spec : Prop :=
  ∀ n, (P13129114718449931815.a n : ℤ) = A013928 (n + 1)

end A013928

/-! ## A013928.P9189425345052941909

`∑[char[A007913(n+1)]]`
-/

namespace A013928.P9189425345052941909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013928.P9189425345052941909

namespace A013928

/-- `∑[char[A007913(n+1)]]` -/
def P9189425345052941909.Spec : Prop :=
  ∀ n, (P9189425345052941909.a n : ℤ) = A013928 (n + 1)

end A013928

/-! ## A013928.P6569704915668166721

`∑[char[A007947(n+1)]]`
-/

namespace A013928.P6569704915668166721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013928.P6569704915668166721

namespace A013928

/-- `∑[char[A007947(n+1)]]` -/
def P6569704915668166721.Spec : Prop :=
  ∀ n, (P6569704915668166721.a n : ℤ) = A013928 (n + 1)

end A013928

/-! ## A013928.P12207126603492093643

`∑[char[A055231(n+1)]]`
-/

namespace A013928.P12207126603492093643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013928.P12207126603492093643

namespace A013928

/-- `∑[char[A055231(n+1)]]` -/
def P12207126603492093643.Spec : Prop :=
  ∀ n, (P12207126603492093643.a n : ℤ) = A013928 (n + 1)

end A013928

/-! ## A013928.P14618983527806759156

`∑[char[A067535(n+1)]]`
-/

namespace A013928.P14618983527806759156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013928.P14618983527806759156

namespace A013928

/-- `∑[char[A067535(n+1)]]` -/
def P14618983527806759156.Spec : Prop :=
  ∀ n, (P14618983527806759156.a n : ℤ) = A013928 (n + 1)

end A013928

/-! ## A013928.P6042356175479787738

`A072490(n+1)+A057427(n)`
-/

namespace A013928.P6042356175479787738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072490 (n + 1) + A057427 n

end

end A013928.P6042356175479787738

namespace A013928

/-- `A072490(n+1)+A057427(n)` -/
def P6042356175479787738.Spec : Prop :=
  ∀ n, P6042356175479787738.a n = A013928 (n + 1)

end A013928

/-! ## A013928.P329912951066808451

`A072490(n+1)-A057428(n)`
-/

namespace A013928.P329912951066808451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072490 (n + 1) - A057428 n

end

end A013928.P329912951066808451

namespace A013928

/-- `A072490(n+1)-A057428(n)` -/
def P329912951066808451.Spec : Prop :=
  ∀ n, P329912951066808451.a n = A013928 (n + 1)

end A013928

/-! ## A013928.P18346363281898951938

`A294101(n+1)+A098235(n+1)`
-/

namespace A013928.P18346363281898951938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294101 (n + 1) + A098235 (n + 1)

end

end A013928.P18346363281898951938

namespace A013928

/-- `A294101(n+1)+A098235(n+1)` -/
def P18346363281898951938.Spec : Prop :=
  ∀ n, P18346363281898951938.a n = A013928 (n + 1)

theorem P18346363281898951938.correct : P18346363281898951938.Spec := by
  intro n
  simp only [A013928, Nat.add_sub_cancel, A013928.P18346363281898951938.a, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A098235, A098235.P13701616657231446329.a, A294101, A294101.P14662150348021070417.a, A071068, A071068.P12535416172445046017.f1, A071068.P12535416172445046017.a, A262991, A262991.P2037548391319313371.a, A262868, A262868.P7114850670441579188.f1, A262868.P7114850670441579188.a, A262869, A262869.P10644154218626239048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013928

/-! ## A013928.P3313786063738406256

`A368673(n+1)+A293227(n+1)`
-/

namespace A013928.P3313786063738406256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368673 (n + 1) + A293227 (n + 1)

end

end A013928.P3313786063738406256

namespace A013928

/-- `A368673(n+1)+A293227(n+1)` -/
def P3313786063738406256.Spec : Prop :=
  ∀ n, P3313786063738406256.a n = A013928 (n + 1)

end A013928

/-! ## A013928.P8763988238154005604

`A368677(n+1)+A330868(n+1)`
-/

namespace A013928.P8763988238154005604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368677 (n + 1) + A330868 (n + 1)

end

end A013928.P8763988238154005604

namespace A013928

/-- `A368677(n+1)+A330868(n+1)` -/
def P8763988238154005604.Spec : Prop :=
  ∀ n, P8763988238154005604.a n = A013928 (n + 1)

end A013928

/-! ## A013928.P10820837478696357082

`A060431(n+1)-(A072358(n+1)+A008966(n+1))`
-/

namespace A013928.P10820837478696357082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (n + 1) - (A072358 (n + 1) + A008966 (n + 1))

end

end A013928.P10820837478696357082

namespace A013928

/-- `A060431(n+1)-(A072358(n+1)+A008966(n+1))` -/
def P10820837478696357082.Spec : Prop :=
  ∀ n, P10820837478696357082.a n = A013928 (n + 1)

end A013928

/-! ## A013928.P4816204394817263729

`A034444(n+1)+A368673(n+1)-A008966(n+1)`
-/

namespace A013928.P4816204394817263729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + (A368673 (n + 1) - A008966 (n + 1))

end

end A013928.P4816204394817263729

namespace A013928

/-- `A034444(n+1)+A368673(n+1)-A008966(n+1)` -/
def P4816204394817263729.Spec : Prop :=
  ∀ n, P4816204394817263729.a n = A013928 (n + 1)

end A013928

/-! ## A013928.P13481523867609932497

`∑[char[record[∏{p}[n, #]]]]`
-/

namespace A013928.P13481523867609932497
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013928.P13481523867609932497

namespace A013928

/-- `∑[char[record[∏{p}[n, #]]]]` -/
def P13481523867609932497.Spec : Prop :=
  ∀ n, (P13481523867609932497.a n : ℤ) = A013928 (n + 1)

end A013928

/-! ## A013928.P9378064252586027351

`∑[char[A070321(n+1)]]`
-/

namespace A013928.P9378064252586027351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013928.P9378064252586027351

namespace A013928

/-- `∑[char[A070321(n+1)]]` -/
def P9378064252586027351.Spec : Prop :=
  ∀ n, (P9378064252586027351.a n : ℤ) = A013928 (n + 1)

end A013928

/-!
# A013929: Numbers that are not squarefree. Numbers that are divisible by a square greater than 1. The complement of A005117.

The programs for A013929, the canonical program `A013929.P16481699796765016237` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013929 has offset 1).

The definition of A013929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013929.P10670638489230981755

`lt[0, A105570(n)]`
-/

namespace A013929.P10670638489230981755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A013929.P10670638489230981755

namespace A013929

/-- `lt[0, A105570(n)]` -/
def P10670638489230981755.Spec : Prop :=
  ∀ n, (P10670638489230981755.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P8824191633032079298

`sqrt(A062320(n+1))`
-/

namespace A013929.P8824191633032079298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062320 (n + 1) : ℝ)

end

end A013929.P8824191633032079298

namespace A013929

/-- `sqrt(A062320(n+1))` -/
def P8824191633032079298.Spec : Prop :=
  ∀ n, P8824191633032079298.a n = (A013929 (n + 1) : ℝ)

end A013929

/-! ## A013929.P16442156044280627304

`record[A105570(n+4)]`
-/

namespace A013929.P16442156044280627304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013929.P16442156044280627304

namespace A013929

/-- `record[A105570(n+4)]` -/
def P16442156044280627304.Spec : Prop :=
  ∀ n, P16442156044280627304.a n = A013929 (n + 1)

end A013929

/-! ## A013929.P7142288227296897381

`lt[1, n*A087049(n)]`
-/

namespace A013929.P7142288227296897381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A013929.P7142288227296897381

namespace A013929

/-- `lt[1, n*A087049(n)]` -/
def P7142288227296897381.Spec : Prop :=
  ∀ n, (P7142288227296897381.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P16428963298060684982

`comp[C(A007913(n+1), n)]`
-/

namespace A013929.P16428963298060684982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007913 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A013929.P16428963298060684982

namespace A013929

/-- `comp[C(A007913(n+1), n)]` -/
def P16428963298060684982.Spec : Prop :=
  ∀ n, (P16428963298060684982.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P1205998766243881019

`comp[C(A007947(n+1), n)]`
-/

namespace A013929.P1205998766243881019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007947 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A013929.P1205998766243881019

namespace A013929

/-- `comp[C(A007947(n+1), n)]` -/
def P1205998766243881019.Spec : Prop :=
  ∀ n, (P1205998766243881019.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P4007581133823597687

`comp[C(A083346(n+1), n)]`
-/

namespace A013929.P4007581133823597687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083346 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A013929.P4007581133823597687

namespace A013929

/-- `comp[C(A083346(n+1), n)]` -/
def P4007581133823597687.Spec : Prop :=
  ∀ n, (P4007581133823597687.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P7372229022351150476

`eq[0, A008683(n+1)]+1`
-/

namespace A013929.P7372229022351150476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013929.P7372229022351150476

namespace A013929

/-- `eq[0, A008683(n+1)]+1` -/
def P7372229022351150476.Spec : Prop :=
  ∀ n, (P7372229022351150476.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P16481699796765016237

`lt[1, A005361(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A013929

/-- `lt[1, A005361(n+1)]+1` -/
def P16481699796765016237.Spec : Prop :=
  ∀ n, (P16481699796765016237.a n : ℤ) = A013929 (n + 1)

theorem P16481699796765016237.correct : P16481699796765016237.Spec := by
  intro n
  simp only [A013929, Nat.add_sub_cancel]

end A013929

/-! ## A013929.P15265312975624237075

`eq[2, A007424(n+1)]+1`
-/

namespace A013929.P15265312975624237075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013929.P15265312975624237075

namespace A013929

/-- `eq[2, A007424(n+1)]+1` -/
def P15265312975624237075.Spec : Prop :=
  ∀ n, (P15265312975624237075.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P2884939974624682324

`lt[1, A008833(n+1)]+1`
-/

namespace A013929.P2884939974624682324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A013929.P2884939974624682324

namespace A013929

/-- `lt[1, A008833(n+1)]+1` -/
def P2884939974624682324.Spec : Prop :=
  ∀ n, (P2884939974624682324.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P2015111309489405326

`lt[1, A051903(n+1)]+1`
-/

namespace A013929.P2015111309489405326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A013929.P2015111309489405326

namespace A013929

/-- `lt[1, A051903(n+1)]+1` -/
def P2015111309489405326.Spec : Prop :=
  ∀ n, (P2015111309489405326.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P6006495909874575100

`A078147(n)+a(n-1)` with `a(0)=4`
-/

namespace A013929.P6006495909874575100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A078147 n + a (n - 1)

end

end A013929.P6006495909874575100

namespace A013929

/-- `A078147(n)+a(n-1)` -/
def P6006495909874575100.Spec : Prop :=
  ∀ n, P6006495909874575100.a n = A013929 (n + 1)

end A013929

/-! ## A013929.P16566260043135839395

`lt[A008683(n+2)², 1]+2`
-/

namespace A013929.P16566260043135839395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A013929.P16566260043135839395

namespace A013929

/-- `lt[A008683(n+2)², 1]+2` -/
def P16566260043135839395.Spec : Prop :=
  ∀ n, (P16566260043135839395.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P8064968250903360401

`lt[A008683(n+3)^4, 1]+3`
-/

namespace A013929.P8064968250903360401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3) ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A013929.P8064968250903360401

namespace A013929

/-- `lt[A008683(n+3)^4, 1]+3` -/
def P8064968250903360401.Spec : Prop :=
  ∀ n, (P8064968250903360401.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P2076307887382153070

`eq[0, A008683(n)/(2-a(n-1))]` with `a(0)=1`
-/

namespace A013929.P2076307887382153070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (A008683 n : ℚ) / (2 - f2 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A013929.P2076307887382153070

namespace A013929

/-- `eq[0, A008683(n)/(2-a(n-1))]` -/
def P2076307887382153070.Spec : Prop :=
  ∀ n, (P2076307887382153070.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P3723214454590740830

`A065642(A362041(n+1))`
-/

namespace A013929.P3723214454590740830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A362041 (n + 1)).toNat

end

end A013929.P3723214454590740830

namespace A013929

/-- `A065642(A362041(n+1))` -/
def P3723214454590740830.Spec : Prop :=
  ∀ n, P3723214454590740830.a n = A013929 (n + 1)

end A013929

/-! ## A013929.P1962058291564578986

`∪[A046790(n+1), A017113(n)]`
-/

namespace A013929.P1962058291564578986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013929.P1962058291564578986

namespace A013929

/-- `∪[A046790(n+1), A017113(n)]` -/
def P1962058291564578986.Spec : Prop :=
  ∀ n, (P1962058291564578986.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P2917092162740891960

`∪[A002011(n), A080756(n+1)]`
-/

namespace A013929.P2917092162740891960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013929.P2917092162740891960

namespace A013929

/-- `∪[A002011(n), A080756(n+1)]` -/
def P2917092162740891960.Spec : Prop :=
  ∀ n, (P2917092162740891960.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P7508202413640426009

`∪[A049199(n+1), A034023(n)]`
-/

namespace A013929.P7508202413640426009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013929.P7508202413640426009

namespace A013929

/-- `∪[A049199(n+1), A034023(n)]` -/
def P7508202413640426009.Spec : Prop :=
  ∀ n, (P7508202413640426009.a n : ℤ) = A013929 (n + 1)

end A013929

/-! ## A013929.P10938005577030908004

`lt[1, ∏{e}[n+1, #]]+1`
-/

namespace A013929.P10938005577030908004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A013929.P10938005577030908004

namespace A013929

/-- `lt[1, ∏{e}[n+1, #]]+1` -/
def P10938005577030908004.Spec : Prop :=
  ∀ n, (P10938005577030908004.a n : ℤ) = A013929 (n + 1)

end A013929

/-!
# A013930: Sum of first a(n) squarefrees is squarefree.

The programs for A013930, there is no canonical definition to state claims against.
-/

/-! ## A013930.P15544787032704940039

`A107079(A013931(n+1))`
-/

namespace A013930.P15544787032704940039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A013931 (n + 1)).toNat

end

end A013930.P15544787032704940039

/-! ## A013930.P763177982985915891

`A013928(A013931(n+1)+1)`
-/

namespace A013930.P763177982985915891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A013931 (n + 1) + 1).toNat

end

end A013930.P763177982985915891

/-! ## A013930.P2781671585851614618

`A322590(2*A013931(n+1)-A013931(n+1))`
-/

namespace A013930.P2781671585851614618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (2 * A013931 (n + 1) - A013931 (n + 1)).toNat

end

end A013930.P2781671585851614618

/-! ## A013930.P1386518131845752834

`A100112(A013931(n+1))`
-/

namespace A013930.P1386518131845752834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A013931 (n + 1)).toNat

end

end A013930.P1386518131845752834

/-! ## A013930.P13422951675780398708

`record[lcm(n+1, A008683(A173143(n+1)))]`
-/

namespace A013930.P13422951675780398708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A008683 (A173143 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013930.P13422951675780398708

/-! ## A013930.P7777406434515097799

`record[A008966(A066779(n+1))*A100112(n+1)]`
-/

namespace A013930.P7777406434515097799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A066779 (n + 1)).toNat * A100112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013930.P7777406434515097799

/-! ## A013930.P17630218643330272993

`A322590(A013931(n+1)²)`
-/

namespace A013930.P17630218643330272993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (A013931 (n + 1) ^ 2).toNat

end

end A013930.P17630218643330272993

/-!
# A013931: a(n) is squarefree and sum of all squarefrees <= a(n) is squarefree.

The programs for A013931, there is no canonical definition to state claims against.
-/

/-! ## A013931.P420993940165572575

`A005117(A013930(n+1))`
-/

namespace A013931.P420993940165572575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A013930 (n + 1)).toNat

end

end A013931.P420993940165572575

/-! ## A013931.P8034316139524039238

`record[A007913(n+1)*A008966(A066779(n+1))]`
-/

namespace A013931.P8034316139524039238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A008966 (A066779 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013931.P8034316139524039238

/-! ## A013931.P11770251235786090817

`record[A007947(n+1)*A008966(A066779(n+1))]`
-/

namespace A013931.P11770251235786090817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A008966 (A066779 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013931.P11770251235786090817

/-! ## A013931.P9013871906139772234

`record[A008966(A066779(n+1))*A015052(n+1)]`
-/

namespace A013931.P9013871906139772234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A066779 (n + 1)).toNat * A015052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013931.P9013871906139772234

/-! ## A013931.P9296994287709442915

`record[A008966(A066779(n+1))*A019554(n+1)]`
-/

namespace A013931.P9296994287709442915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A066779 (n + 1)).toNat * A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013931.P9296994287709442915

/-! ## A013931.P14113786417477037547

`record[A008966(A066779(n+1))*A055231(n+1)]`
-/

namespace A013931.P14113786417477037547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A066779 (n + 1)).toNat * A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013931.P14113786417477037547

/-! ## A013931.P3289080388771896218

`record[A008966(A066779(n+1))*A083346(n+1)]`
-/

namespace A013931.P3289080388771896218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A066779 (n + 1)).toNat * A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013931.P3289080388771896218

/-!
# A013932: Integers that are squarefree and also the sum of first k squarefrees for some k.

The programs for A013932, the canonical program `A013932.P4612329393337214925` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013932 has offset 1).

The definition of A013932 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020643, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A013932.P4612329393337214925

`A005117(A020643(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A013932

/-- `A005117(A020643(n+1))` -/
def P4612329393337214925.Spec : Prop :=
  ∀ n, P4612329393337214925.a n = A013932 (n + 1)

theorem P4612329393337214925.correct : P4612329393337214925.Spec := by
  intro n
  simp only [A013932, Nat.add_sub_cancel]

end A013932

/-! ## A013932.P2325411594561675794

`A173143(A013930(n+1))`
-/

namespace A013932.P2325411594561675794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (A013930 (n + 1)).toNat

end

end A013932.P2325411594561675794

namespace A013932

/-- `A173143(A013930(n+1))` -/
def P2325411594561675794.Spec : Prop :=
  ∀ n, P2325411594561675794.a n = A013932 (n + 1)

end A013932

/-! ## A013932.P13300931377869608955

`A173143(A107079(A013931(n+1)))`
-/

namespace A013932.P13300931377869608955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (A107079 (A013931 (n + 1)).toNat).toNat

end

end A013932.P13300931377869608955

namespace A013932

/-- `A173143(A107079(A013931(n+1)))` -/
def P13300931377869608955.Spec : Prop :=
  ∀ n, P13300931377869608955.a n = A013932 (n + 1)

end A013932

/-! ## A013932.P49676013364519659

`A066779(A013931(n+1))`
-/

namespace A013932.P49676013364519659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (A013931 (n + 1)).toNat

end

end A013932.P49676013364519659

namespace A013932

/-- `A066779(A013931(n+1))` -/
def P49676013364519659.Spec : Prop :=
  ∀ n, P49676013364519659.a n = A013932 (n + 1)

end A013932

/-! ## A013932.P1533530928328981117

`record[∏{p}[∑[record[∏{p}[n, #]]], #]]`
-/

namespace A013932.P1533530928328981117
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f5 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013932.P1533530928328981117

namespace A013932

/-- `record[∏{p}[∑[record[∏{p}[n, #]]], #]]` -/
def P1533530928328981117.Spec : Prop :=
  ∀ n, (P1533530928328981117.a n : ℤ) = A013932 (n + 1)

end A013932

/-! ## A013932.P5267241758165031385

`record[∏{p}[A165917(n+1)+A165914(n+1), #]]`
-/

namespace A013932.P5267241758165031385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165917 (n + 1) + A165914 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013932.P5267241758165031385

namespace A013932

/-- `record[∏{p}[A165917(n+1)+A165914(n+1), #]]` -/
def P5267241758165031385.Spec : Prop :=
  ∀ n, (P5267241758165031385.a n : ℤ) = A013932 (n + 1)

end A013932

/-! ## A013932.P15300120744376405748

`record[A007913(A066779(n+1))]`
-/

namespace A013932.P15300120744376405748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A066779 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013932.P15300120744376405748

namespace A013932

/-- `record[A007913(A066779(n+1))]` -/
def P15300120744376405748.Spec : Prop :=
  ∀ n, P15300120744376405748.a n = A013932 (n + 1)

end A013932

/-! ## A013932.P6643608845479305959

`filter[A173143(n+1), A008966(#)]`
-/

namespace A013932.P6643608845479305959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A013932.P6643608845479305959

namespace A013932

/-- `filter[A173143(n+1), A008966(#)]` -/
def P6643608845479305959.Spec : Prop :=
  ∀ n, P6643608845479305959.a n = A013932 (n + 1)

end A013932

/-! ## A013932.P6553517375802842591

`record[A007947(A066779(n+1))*A008966(n+1)]`
-/

namespace A013932.P6553517375802842591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A066779 (n + 1)).toNat * A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013932.P6553517375802842591

namespace A013932

/-- `record[A007947(A066779(n+1))*A008966(n+1)]` -/
def P6553517375802842591.Spec : Prop :=
  ∀ n, P6553517375802842591.a n = A013932 (n + 1)

end A013932

/-! ## A013932.P17420777908170653362

`∩[A005117(n+1), A173143(n+1)]`
-/

namespace A013932.P17420777908170653362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013932.P17420777908170653362

namespace A013932

/-- `∩[A005117(n+1), A173143(n+1)]` -/
def P17420777908170653362.Spec : Prop :=
  ∀ n, (P17420777908170653362.a n : ℤ) = A013932 (n + 1)

end A013932

/-! ## A013932.P15727102072222947695

`∩[A173143(n+1), A348506(n+1)]`
-/

namespace A013932.P15727102072222947695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013932.P15727102072222947695

namespace A013932

/-- `∩[A173143(n+1), A348506(n+1)]` -/
def P15727102072222947695.Spec : Prop :=
  ∀ n, (P15727102072222947695.a n : ℤ) = A013932 (n + 1)

end A013932

/-!
# A013933: Numbers k such that the sum of the first k nonsquarefree numbers is nonsquarefree.

The programs for A013933, there is no canonical definition to state claims against.
-/

/-! ## A013933.P9768333107201825049

`A013934(n+1)-A013928(A013934(n+1))`
-/

namespace A013933.P9768333107201825049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013934 (n + 1) - A013928 (A013934 (n + 1)).toNat

end

end A013933.P9768333107201825049

/-! ## A013933.P12458745361311048334

`A057627(A013934(n+1))`
-/

namespace A013933.P12458745361311048334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A013934 (n + 1)).toNat

end

end A013933.P12458745361311048334

/-! ## A013933.P5427544457384550625

`A284584(A013934(n+1))%A013935(n+1)`
-/

namespace A013933.P5427544457384550625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284584 (A013934 (n + 1)).toNat) (A013935 (n + 1))

end

end A013933.P5427544457384550625

/-! ## A013933.P7115444812031458652

`A284584(A013934(n+1))+A211441(n)%3`
-/

namespace A013933.P7115444812031458652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284584 (A013934 (n + 1)).toNat + Int.tmod (A211441 n) 3

end

end A013933.P7115444812031458652

/-! ## A013933.P16519994101393438442

`A294234(2*A013934(n+1))`
-/

namespace A013933.P16519994101393438442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 (2 * A013934 (n + 1)).toNat

end

end A013933.P16519994101393438442

/-! ## A013933.P7177980099057687794

`A294234(A013934(n+1)+A013934(n+1))`
-/

namespace A013933.P7177980099057687794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 (A013934 (n + 1) + A013934 (n + 1)).toNat

end

end A013933.P7177980099057687794

/-! ## A013933.P4493785306045043340

`eq[1, A087049(A329472(n+1))]+1`
-/

namespace A013933.P4493785306045043340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A329472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013933.P4493785306045043340

/-! ## A013933.P6142280233727019478

`lt[A008612(n), A105570(A329472(n+1))]+1`
-/

namespace A013933.P6142280233727019478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A329472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A013933.P6142280233727019478

/-! ## A013933.P5349424258523455719

`lt[A079684(n), A105570(A329472(n+1))]+1`
-/

namespace A013933.P5349424258523455719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A329472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A013933.P5349424258523455719

/-!
# A013934: Nonsquarefree numbers k such that the sum of all nonsquarefree numbers <= k is nonsquarefree.

The programs for A013934, there is no canonical definition to state claims against.
-/

/-! ## A013934.P9331327689687384746

`A013929(A013933(n+1))`
-/

namespace A013934.P9331327689687384746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (A013933 (n + 1)).toNat

end

end A013934.P9331327689687384746

/-! ## A013934.P3569209233237370964

`A162966(A013933(n+1)+1)`
-/

namespace A013934.P3569209233237370964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (A013933 (n + 1) + 1).toNat

end

end A013934.P3569209233237370964

/-! ## A013934.P16708282955727601763

`A088610(2*A013933(n+1))`
-/

namespace A013934.P16708282955727601763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * A013933 (n + 1)).toNat

end

end A013934.P16708282955727601763

/-! ## A013934.P3861164137118249470

`record[A013929(n+1)*A087049(A329472(n+1))]`
-/

namespace A013934.P3861164137118249470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) * A087049 (A329472 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013934.P3861164137118249470

/-!
# A013935: a(n) is nonsquarefree and is sum of first k nonsquarefrees for some k.

The programs for A013935, there is no canonical definition to state claims against.
-/

/-! ## A013935.P18385878799264783494

`A329472(A013933(n+1))`
-/

namespace A013935.P18385878799264783494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329472 (A013933 (n + 1)).toNat

end

end A013935.P18385878799264783494

/-! ## A013935.P1094867911241088601

`A294246(A013934(n+1))`
-/

namespace A013935.P1094867911241088601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294246 (A013934 (n + 1)).toNat

end

end A013935.P1094867911241088601

/-! ## A013935.P12634814977250641386

`A013929(A020644(n+1))`
-/

namespace A013935.P12634814977250641386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (A020644 (n + 1)).toNat

end

end A013935.P12634814977250641386

/-! ## A013935.P17408828440250014061

`∩[A013929(n+1), A329472(n+1)]`
-/

namespace A013935.P17408828440250014061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013935.P17408828440250014061

/-! ## A013935.P16362434047326999365

`record[A105570(A329472(n+1))]`
-/

namespace A013935.P16362434047326999365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A329472 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013935.P16362434047326999365

/-! ## A013935.P466445455782633509

`record[A105570(A294246(n+4))]`
-/

namespace A013935.P466445455782633509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A294246 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013935.P466445455782633509

/-! ## A013935.P5531841721771642634

`filter[A329472(n+1), A087049(#)]`
-/

namespace A013935.P5531841721771642634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A013935.P5531841721771642634

/-! ## A013935.P10087538006359034523

`record[A105570(∑[A013929(n+1)])]`
-/

namespace A013935.P10087538006359034523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013935.P10087538006359034523

/-! ## A013935.P9533126971699701916

`record[A105570(∑[A088610(2*(n+1))])]`
-/

namespace A013935.P9533126971699701916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013935.P9533126971699701916

/-! ## A013935.P16875864346934461135

`∩[A162966(n+1), A329472(n+1)]`
-/

namespace A013935.P16875864346934461135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013935.P16875864346934461135

/-!
# A013936: a(n) = Sum_{k=1..n} floor(n/k^2).

The programs for A013936, the canonical program `A013936.P16553281502524550728` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013936 has offset 1).

The definition of A013936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, floor((n+1)/(#+1)²)]` (program `A013936.P16553281502524550728`, by `A013936.P16553281502524550728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013936.P16553281502524550728

`∑{#}[n, floor((n+1)/(#+1)²)]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013936

/-- `∑{#}[n, floor((n+1)/(#+1)²)]` -/
def P16553281502524550728.Spec : Prop :=
  ∀ n, P16553281502524550728.a n = A013936 (n + 1)

theorem P16553281502524550728.correct : P16553281502524550728.Spec := by
  intro n
  simp only [A013936, Nat.add_sub_cancel]

end A013936

/-! ## A013936.P11699563197597450949

`∑[∏{e}[n+1, floor(#/2)+1]]`
-/

namespace A013936.P11699563197597450949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (⌊(Nat.factorization (f2 n) p : ℚ) / 2⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P11699563197597450949

namespace A013936

/-- `∑[∏{e}[n+1, floor(#/2)+1]]` -/
def P11699563197597450949.Spec : Prop :=
  ∀ n, P11699563197597450949.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P18308223799706072572

`∏{e}[n+1, floor(#/2)+1]+a(n-1)` with `a(0)=1`
-/

namespace A013936.P18308223799706072572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) + a (n - 1)

end

end A013936.P18308223799706072572

namespace A013936

/-- `∏{e}[n+1, floor(#/2)+1]+a(n-1)` -/
def P18308223799706072572.Spec : Prop :=
  ∀ n, P18308223799706072572.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P13938946320988864947

`∑[A046951(n+1)]`
-/

namespace A013936.P13938946320988864947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P13938946320988864947

namespace A013936

/-- `∑[A046951(n+1)]` -/
def P13938946320988864947.Spec : Prop :=
  ∀ n, P13938946320988864947.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P13545114223666984111

`∑[A071325(n+1)+1]`
-/

namespace A013936.P13545114223666984111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P13545114223666984111

namespace A013936

/-- `∑[A071325(n+1)+1]` -/
def P13545114223666984111.Spec : Prop :=
  ∀ n, P13545114223666984111.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P6876511432844926228

`∑[1-A338228(n+1)+n]`
-/

namespace A013936.P6876511432844926228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A338228 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P6876511432844926228

namespace A013936

/-- `∑[1-A338228(n+1)+n]` -/
def P6876511432844926228.Spec : Prop :=
  ∀ n, P6876511432844926228.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P9105500633506624984

`∑[∑{d}[n+1, A000005(#)%2]]`
-/

namespace A013936.P9105500633506624984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A000005 d) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P9105500633506624984

namespace A013936

/-- `∑[∑{d}[n+1, A000005(#)%2]]` -/
def P9105500633506624984.Spec : Prop :=
  ∀ n, P9105500633506624984.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P8163286674785454100

`∑[A000005(∏{p}[n+1, #^val(n+1, #²)])]`
-/

namespace A013936.P8163286674785454100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P8163286674785454100

namespace A013936

/-- `∑[A000005(∏{p}[n+1, #^val(n+1, #²)])]` -/
def P8163286674785454100.Spec : Prop :=
  ∀ n, P8163286674785454100.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P17321362503914666213

`∑[A000005(A000188(n+1))]`
-/

namespace A013936.P17321362503914666213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P17321362503914666213

namespace A013936

/-- `∑[A000005(A000188(n+1))]` -/
def P17321362503914666213.Spec : Prop :=
  ∀ n, P17321362503914666213.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P15333830096010027998

`∑[A000005(sqrt(A008833(n+1)))]`
-/

namespace A013936.P15333830096010027998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P15333830096010027998

namespace A013936

/-- `∑[A000005(sqrt(A008833(n+1)))]` -/
def P15333830096010027998.Spec : Prop :=
  ∀ n, P15333830096010027998.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P12996965097706098436

`∑[A000005(A057918(n+1)+1)]`
-/

namespace A013936.P12996965097706098436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057918 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P12996965097706098436

namespace A013936

/-- `∑[A000005(A057918(n+1)+1)]` -/
def P12996965097706098436.Spec : Prop :=
  ∀ n, P12996965097706098436.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P16728674713164505733

`∑[A000005(A337101(2*(n+1)))]`
-/

namespace A013936.P16728674713164505733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A337101 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P16728674713164505733

namespace A013936

/-- `∑[A000005(A337101(2*(n+1)))]` -/
def P16728674713164505733.Spec : Prop :=
  ∀ n, P16728674713164505733.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P11807979668361072530

`∑[∑{d}[A000188(n+1), A007913(#²)]]`
-/

namespace A013936.P11807979668361072530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A007913 (d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P11807979668361072530

namespace A013936

/-- `∑[∑{d}[A000188(n+1), A007913(#²)]]` -/
def P11807979668361072530.Spec : Prop :=
  ∀ n, P11807979668361072530.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P11311737378385653315

`∑[A056626(n+1)+A056624(n+1)]`
-/

namespace A013936.P11311737378385653315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (n + 1) + A056624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P11311737378385653315

namespace A013936

/-- `∑[A056626(n+1)+A056624(n+1)]` -/
def P11311737378385653315.Spec : Prop :=
  ∀ n, P11311737378385653315.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P9768764472638785342

`eq[A054977(n), A381522(n+1)]`
-/

namespace A013936.P9768764472638785342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A013936.P9768764472638785342

namespace A013936

/-- `eq[A054977(n), A381522(n+1)]` -/
def P9768764472638785342.Spec : Prop :=
  ∀ n, (P9768764472638785342.a n : ℤ) = A013936 (n + 1)

end A013936

/-! ## A013936.P2791675558159130902

`eq[A057427(n), A381522(n+1)]`
-/

namespace A013936.P2791675558159130902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A013936.P2791675558159130902

namespace A013936

/-- `eq[A057427(n), A381522(n+1)]` -/
def P2791675558159130902.Spec : Prop :=
  ∀ n, (P2791675558159130902.a n : ℤ) = A013936 (n + 1)

end A013936

/-! ## A013936.P14937750666051201808

`eq[A158388(n), A381522(n+1)]`
-/

namespace A013936.P14937750666051201808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A013936.P14937750666051201808

namespace A013936

/-- `eq[A158388(n), A381522(n+1)]` -/
def P14937750666051201808.Spec : Prop :=
  ∀ n, (P14937750666051201808.a n : ℤ) = A013936 (n + 1)

end A013936

/-! ## A013936.P12926084963867449626

`∑[A358345(4*(n+1))]`
-/

namespace A013936.P12926084963867449626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358345 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P12926084963867449626

namespace A013936

/-- `∑[A358345(4*(n+1))]` -/
def P12926084963867449626.Spec : Prop :=
  ∀ n, P12926084963867449626.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P1032323028513590689

`∑[A065704(A003961(n+1))]`
-/

namespace A013936.P1032323028513590689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065704 (A003961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P1032323028513590689

namespace A013936

/-- `∑[A065704(A003961(n+1))]` -/
def P1032323028513590689.Spec : Prop :=
  ∀ n, P1032323028513590689.a n = A013936 (n + 1)

end A013936

/-! ## A013936.P9192882403880332849

`∑[A063775((n+1)²)]`
-/

namespace A013936.P9192882403880332849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013936.P9192882403880332849

namespace A013936

/-- `∑[A063775((n+1)²)]` -/
def P9192882403880332849.Spec : Prop :=
  ∀ n, P9192882403880332849.a n = A013936 (n + 1)

end A013936

/-!
# A013937: a(n) = Sum_{k=1..n} floor(n/k^3).

The programs for A013937, the canonical program `A013937.P6130949669467133590` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013937 has offset 0).

The definition of A013937 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, floor(n/(#+1)^3)]` (program `A013937.P6130949669467133590`, by `A013937.P6130949669467133590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013937.P6130949669467133590

`∑{#}[n-1, floor(n/(#+1)^3)]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013937

/-- `∑{#}[n-1, floor(n/(#+1)^3)]` -/
def P6130949669467133590.Spec : Prop :=
  ∀ n, P6130949669467133590.a n = A013937 n

theorem P6130949669467133590.correct : P6130949669467133590.Spec := by
  intro n
  simp only [A013937]

end A013937

/-! ## A013937.P4790636714127648122

`comp[A396046(n+1)]`
-/

namespace A013937.P4790636714127648122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A013937.P4790636714127648122

namespace A013937

/-- `comp[A396046(n+1)]` -/
def P4790636714127648122.Spec : Prop :=
  ∀ n, (P4790636714127648122.a n : ℤ) = A013937 n

end A013937

/-! ## A013937.P2015318401438487883

`∑[∑{d}[n, A010057(#)]]`
-/

namespace A013937.P2015318401438487883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A010057 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013937.P2015318401438487883

namespace A013937

/-- `∑[∑{d}[n, A010057(#)]]` -/
def P2015318401438487883.Spec : Prop :=
  ∀ n, P2015318401438487883.a n = A013937 n

end A013937

/-! ## A013937.P15513572805066281607

`∑[∏{e}[n, A008620(#)]]-1`
-/

namespace A013937.P15513572805066281607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A008620 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A013937.P15513572805066281607

namespace A013937

/-- `∑[∏{e}[n, A008620(#)]]-1` -/
def P15513572805066281607.Spec : Prop :=
  ∀ n, P15513572805066281607.a n = A013937 n

end A013937

/-! ## A013937.P15974551488656245605

`a(n-1)+A061704(n)` with `a(0)=0`
-/

namespace A013937.P15974551488656245605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A061704 n

end

end A013937.P15974551488656245605

namespace A013937

/-- `a(n-1)+A061704(n)` -/
def P15974551488656245605.Spec : Prop :=
  ∀ n, P15974551488656245605.a n = A013937 n

end A013937

/-! ## A013937.P8257602647120035902

`∑[A061704(A028310(n))]-1`
-/

namespace A013937.P8257602647120035902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A013937.P8257602647120035902

namespace A013937

/-- `∑[A061704(A028310(n))]-1` -/
def P8257602647120035902.Spec : Prop :=
  ∀ n, P8257602647120035902.a n = A013937 n

end A013937

/-! ## A013937.P5690672093936356044

`∑[∑{d}[n, A186153(#)-A186155(#)]]`
-/

namespace A013937.P5690672093936356044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A186153 d - A186155 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013937.P5690672093936356044

namespace A013937

/-- `∑[∑{d}[n, A186153(#)-A186155(#)]]` -/
def P5690672093936356044.Spec : Prop :=
  ∀ n, P5690672093936356044.a n = A013937 n

end A013937

/-! ## A013937.P14672518451605371813

`∑[A061704(n+1)]-A061704(n+1)`
-/

namespace A013937.P14672518451605371813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061704 (n + 1)

end

end A013937.P14672518451605371813

namespace A013937

/-- `∑[A061704(n+1)]-A061704(n+1)` -/
def P14672518451605371813.Spec : Prop :=
  ∀ n, P14672518451605371813.a n = A013937 n

end A013937

/-! ## A013937.P10272148964850291872

`eq[1, A397556(n+1)]`
-/

namespace A013937.P10272148964850291872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013937.P10272148964850291872

namespace A013937

/-- `eq[1, A397556(n+1)]` -/
def P10272148964850291872.Spec : Prop :=
  ∀ n, (P10272148964850291872.a n : ℤ) = A013937 n

end A013937

/-! ## A013937.P6030047102761278601

`∑[∑{e}[A000578(n), A054897(#)]]+n`
-/

namespace A013937.P6030047102761278601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A054897 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A013937.P6030047102761278601

namespace A013937

/-- `∑[∑{e}[A000578(n), A054897(#)]]+n` -/
def P6030047102761278601.Spec : Prop :=
  ∀ n, P6030047102761278601.a n = A013937 n

end A013937

/-!
# A013938: a(n) = Sum_{k=1..n} floor(n/k^4).

The programs for A013938, the canonical program `A013938.P9962068321257325577` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013938 has offset 1).

The definition of A013938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, floor((n+1)/(#+1)^4)]` (program `A013938.P9962068321257325577`, by `A013938.P9962068321257325577.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013938.P9962068321257325577

`∑{#}[n, floor((n+1)/(#+1)^4)]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013938

/-- `∑{#}[n, floor((n+1)/(#+1)^4)]` -/
def P9962068321257325577.Spec : Prop :=
  ∀ n, P9962068321257325577.a n = A013938 (n + 1)

theorem P9962068321257325577.correct : P9962068321257325577.Spec := by
  intro n
  simp only [A013938, Nat.add_sub_cancel]

end A013938

/-! ## A013938.P8718238683949396058

`∑[∏{e}[n+1, floor(#/4)+1]]`
-/

namespace A013938.P8718238683949396058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (⌊(Nat.factorization (f2 n) p : ℚ) / 4⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013938.P8718238683949396058

namespace A013938

/-- `∑[∏{e}[n+1, floor(#/4)+1]]` -/
def P8718238683949396058.Spec : Prop :=
  ∀ n, P8718238683949396058.a n = A013938 (n + 1)

end A013938

/-! ## A013938.P12103978675386145806

`∑[A063775(n+1)]`
-/

namespace A013938.P12103978675386145806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013938.P12103978675386145806

namespace A013938

/-- `∑[A063775(n+1)]` -/
def P12103978675386145806.Spec : Prop :=
  ∀ n, P12103978675386145806.a n = A013938 (n + 1)

end A013938

/-! ## A013938.P1794420479697280237

`∑[A046951(A000188(n+1))]`
-/

namespace A013938.P1794420479697280237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013938.P1794420479697280237

namespace A013938

/-- `∑[A046951(A000188(n+1))]` -/
def P1794420479697280237.Spec : Prop :=
  ∀ n, P1794420479697280237.a n = A013938 (n + 1)

end A013938

/-! ## A013938.P888173675333961829

`∑[A353376(sqrt(A008835(n+1)))]`
-/

namespace A013938.P888173675333961829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353376 (SequenceMachineLib.roundAway (Real.sqrt (A008835 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013938.P888173675333961829

namespace A013938

/-- `∑[A353376(sqrt(A008835(n+1)))]` -/
def P888173675333961829.Spec : Prop :=
  ∀ n, P888173675333961829.a n = A013938 (n + 1)

end A013938

/-! ## A013938.P3885125050367900889

`∑[A040001(A256692(n+1))]`
-/

namespace A013938.P3885125050367900889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A256692 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013938.P3885125050367900889

namespace A013938

/-- `∑[A040001(A256692(n+1))]` -/
def P3885125050367900889.Spec : Prop :=
  ∀ n, P3885125050367900889.a n = A013938 (n + 1)

end A013938

/-! ## A013938.P5395743084632886993

`∑[A124766(A300909(n+1))]`
-/

namespace A013938.P5395743084632886993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A300909 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013938.P5395743084632886993

namespace A013938

/-- `∑[A124766(A300909(n+1))]` -/
def P5395743084632886993.Spec : Prop :=
  ∀ n, P5395743084632886993.a n = A013938 (n + 1)

end A013938

/-! ## A013938.P3013349345758954283

`∑[A334028(A294874(n+1))]`
-/

namespace A013938.P3013349345758954283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A294874 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013938.P3013349345758954283

namespace A013938

/-- `∑[A334028(A294874(n+1))]` -/
def P3013349345758954283.Spec : Prop :=
  ∀ n, P3013349345758954283.a n = A013938 (n + 1)

end A013938

/-! ## A013938.P9954518648131931681

`∑[A356226(A317934(n+1))]`
-/

namespace A013938.P9954518648131931681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356226 (A317934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013938.P9954518648131931681

namespace A013938

/-- `∑[A356226(A317934(n+1))]` -/
def P9954518648131931681.Spec : Prop :=
  ∀ n, P9954518648131931681.a n = A013938 (n + 1)

end A013938

/-! ## A013938.P10867419967791912482

`A000005(∏[A063775(n+1)])+n`
-/

namespace A013938.P10867419967791912482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A013938.P10867419967791912482

namespace A013938

/-- `A000005(∏[A063775(n+1)])+n` -/
def P10867419967791912482.Spec : Prop :=
  ∀ n, P10867419967791912482.a n = A013938 (n + 1)

end A013938

/-! ## A013938.P8019175870224653875

`∑[gcd(A307445(n+1), A307486(n))]`
-/

namespace A013938.P8019175870224653875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307445 (n + 1)) (A307486 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013938.P8019175870224653875

namespace A013938

/-- `∑[gcd(A307445(n+1), A307486(n))]` -/
def P8019175870224653875.Spec : Prop :=
  ∀ n, (P8019175870224653875.a n : ℤ) = A013938 (n + 1)

end A013938

/-!
# A013939: Partial sums of sequence A001221 (number of distinct primes dividing n).

The programs for A013939, the canonical program `A013939.P14869873943907335378` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013939 has offset 1).

The definition of A013939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013939.P14869873943907335378

`a(n-1)+A001221(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013939

/-- `a(n-1)+A001221(n+1)` -/
def P14869873943907335378.Spec : Prop :=
  ∀ n, P14869873943907335378.a n = A013939 (n + 1)

theorem P14869873943907335378.correct : P14869873943907335378.Spec := by
  intro n
  simp only [A013939, Nat.add_sub_cancel]

end A013939

/-! ## A013939.P7930182964962146351

`∑{#}[n, floor((n+1)/A000040(#+1))]`
-/

namespace A013939.P7930182964962146351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ⌊(n + 1 : ℚ) / (A000040 (k + 1) : ℚ)⌋

end

end A013939.P7930182964962146351

namespace A013939

/-- `∑{#}[n, floor((n+1)/A000040(#+1))]` -/
def P7930182964962146351.Spec : Prop :=
  ∀ n, P7930182964962146351.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P2031063689215850245

`∑{#}[n, A000720(floor((n+1)/(#+1)))]`
-/

namespace A013939.P2031063689215850245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000720 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A013939.P2031063689215850245

namespace A013939

/-- `∑{#}[n, A000720(floor((n+1)/(#+1)))]` -/
def P2031063689215850245.Spec : Prop :=
  ∀ n, P2031063689215850245.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P17275129955201317769

`∑[∑{p}[n+1, gcd(n, #)]]`
-/

namespace A013939.P17275129955201317769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P17275129955201317769

namespace A013939

/-- `∑[∑{p}[n+1, gcd(n, #)]]` -/
def P17275129955201317769.Spec : Prop :=
  ∀ n, (P17275129955201317769.a n : ℤ) = A013939 (n + 1)

end A013939

/-! ## A013939.P5573333442925860244

`∑[∑{e}[∏{p}[n+1, #], #]]`
-/

namespace A013939.P5573333442925860244
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P5573333442925860244

namespace A013939

/-- `∑[∑{e}[∏{p}[n+1, #], #]]` -/
def P5573333442925860244.Spec : Prop :=
  ∀ n, (P5573333442925860244.a n : ℤ) = A013939 (n + 1)

end A013939

/-! ## A013939.P3619976032100423366

`∑[∑{p}[n+1, floor(atan(#))]]`
-/

namespace A013939.P3619976032100423366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊Real.arctan (p : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P3619976032100423366

namespace A013939

/-- `∑[∑{p}[n+1, floor(atan(#))]]` -/
def P3619976032100423366.Spec : Prop :=
  ∀ n, P3619976032100423366.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P9396568163432113810

`∑[∑{e}[n+1, round(atan(#))]]`
-/

namespace A013939.P9396568163432113810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (Real.arctan (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P9396568163432113810

namespace A013939

/-- `∑[∑{e}[n+1, round(atan(#))]]` -/
def P9396568163432113810.Spec : Prop :=
  ∀ n, P9396568163432113810.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P7377576351486112779

`∑[∑{e}[n+1, ceil(tanh(#))]]`
-/

namespace A013939.P7377576351486112779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈Real.tanh (Nat.factorization (f2 n) p : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P7377576351486112779

namespace A013939

/-- `∑[∑{e}[n+1, ceil(tanh(#))]]` -/
def P7377576351486112779.Spec : Prop :=
  ∀ n, P7377576351486112779.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P12289617174290546758

`∑[∑{p}[n+1, ceil(acot(#))]]`
-/

namespace A013939.P12289617174290546758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈SequenceMachineLib.acot (p : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P12289617174290546758

namespace A013939

/-- `∑[∑{p}[n+1, ceil(acot(#))]]` -/
def P12289617174290546758.Spec : Prop :=
  ∀ n, P12289617174290546758.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P8543247338257045675

`∑[∑{e}[n+1, round(tanh(#))]]`
-/

namespace A013939.P8543247338257045675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (Real.tanh (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P8543247338257045675

namespace A013939

/-- `∑[∑{e}[n+1, round(tanh(#))]]` -/
def P8543247338257045675.Spec : Prop :=
  ∀ n, P8543247338257045675.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P5378075824850960240

`∑[∑{e}[n+1, ceil(acot(#))]]`
-/

namespace A013939.P5378075824850960240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈SequenceMachineLib.acot (Nat.factorization (f2 n) p : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P5378075824850960240

namespace A013939

/-- `∑[∑{e}[n+1, ceil(acot(#))]]` -/
def P5378075824850960240.Spec : Prop :=
  ∀ n, P5378075824850960240.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P4592271216575661581

`∑[∑{p}[n+1, ceil(1/#)]]`
-/

namespace A013939.P4592271216575661581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈1 / (p : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P4592271216575661581

namespace A013939

/-- `∑[∑{p}[n+1, ceil(1/#)]]` -/
def P4592271216575661581.Spec : Prop :=
  ∀ n, P4592271216575661581.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P14756363617123670134

`∑[∑{e}[n+1, ceil(1/#)]]`
-/

namespace A013939.P14756363617123670134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈1 / (Nat.factorization (f2 n) p : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P14756363617123670134

namespace A013939

/-- `∑[∑{e}[n+1, ceil(1/#)]]` -/
def P14756363617123670134.Spec : Prop :=
  ∀ n, P14756363617123670134.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P1334820763292095001

`∑[∑{p}[n+1, lcm(#, n+1)]/(n+1)]`
-/

namespace A013939.P1334820763292095001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), Nat.lcm p (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P1334820763292095001

namespace A013939

/-- `∑[∑{p}[n+1, lcm(#, n+1)]/(n+1)]` -/
def P1334820763292095001.Spec : Prop :=
  ∀ n, P1334820763292095001.a n = (A013939 (n + 1) : ℚ)

end A013939

/-! ## A013939.P14756209416984735543

`∑[A001221(n+1)]`
-/

namespace A013939.P14756209416984735543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P14756209416984735543

namespace A013939

/-- `∑[A001221(n+1)]` -/
def P14756209416984735543.Spec : Prop :=
  ∀ n, P14756209416984735543.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P1769363677775447335

`A082186(n+1)-1`
-/

namespace A013939.P1769363677775447335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (n + 1) - 1

end

end A013939.P1769363677775447335

namespace A013939

/-- `A082186(n+1)-1` -/
def P1769363677775447335.Spec : Prop :=
  ∀ n, P1769363677775447335.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P9917669927782264952

`A355538(n+1)+n`
-/

namespace A013939.P9917669927782264952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355538 (n + 1) + (n : ℤ)

end

end A013939.P9917669927782264952

namespace A013939

/-- `A355538(n+1)+n` -/
def P9917669927782264952.Spec : Prop :=
  ∀ n, P9917669927782264952.a n = A013939 (n + 1)

theorem P9917669927782264952.correct : P9917669927782264952.Spec := by
  intro n
  simp only [A013939, Nat.add_sub_cancel, A013939.P9917669927782264952.a, A013939.P14869873943907335378.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A355538, A355538.P14887925225814743849.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013939

/-! ## A013939.P10465933165071553158

`∑[abs(A158210(n+1))]`
-/

namespace A013939.P10465933165071553158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158210 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P10465933165071553158

namespace A013939

/-- `∑[abs(A158210(n+1))]` -/
def P10465933165071553158.Spec : Prop :=
  ∀ n, P10465933165071553158.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P14649991133449824579

`∑[abs(A392285(n+1))]`
-/

namespace A013939.P14649991133449824579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A392285 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P14649991133449824579

namespace A013939

/-- `∑[abs(A392285(n+1))]` -/
def P14649991133449824579.Spec : Prop :=
  ∀ n, P14649991133449824579.a n = A013939 (n + 1)

end A013939

/-! ## A013939.P4545943524289006088

`∑[log2(A034444(n+1))]`
-/

namespace A013939.P4545943524289006088
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A034444 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013939.P4545943524289006088

namespace A013939

/-- `∑[log2(A034444(n+1))]` -/
def P4545943524289006088.Spec : Prop :=
  ∀ n, P4545943524289006088.a n = (A013939 (n + 1) : ℝ)

end A013939

/-!
# A013940: a(n) = Sum_{k=1..n} floor(n/prime(k)^2).

The programs for A013940, the canonical program `A013940.P13337213703875977920` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013940 has offset 1).

The definition of A013940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, floor((n+1)/A000040(#+1)²)]` (program `A013940.P13337213703875977920`, by `A013940.P13337213703875977920.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013940.P13337213703875977920

`∑{#}[n, floor((n+1)/A000040(#+1)²)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013940

/-- `∑{#}[n, floor((n+1)/A000040(#+1)²)]` -/
def P13337213703875977920.Spec : Prop :=
  ∀ n, P13337213703875977920.a n = A013940 (n + 1)

theorem P13337213703875977920.correct : P13337213703875977920.Spec := by
  intro n
  simp only [A013940, Nat.add_sub_cancel]

end A013940

/-! ## A013940.P13252638212857827513

`∑[∑{e}[n+1, floor(atan(#))]]`
-/

namespace A013940.P13252638212857827513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊Real.arctan (Nat.factorization (f2 n) p : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P13252638212857827513

namespace A013940

/-- `∑[∑{e}[n+1, floor(atan(#))]]` -/
def P13252638212857827513.Spec : Prop :=
  ∀ n, P13252638212857827513.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P8640056193973867735

`∑[∑{e}[n+1, (#+1)%#]]`
-/

namespace A013940.P8640056193973867735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) % Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P8640056193973867735

namespace A013940

/-- `∑[∑{e}[n+1, (#+1)%#]]` -/
def P8640056193973867735.Spec : Prop :=
  ∀ n, (P8640056193973867735.a n : ℤ) = A013940 (n + 1)

end A013940

/-! ## A013940.P2869994025140673832

`∑[A056170(n+1)]`
-/

namespace A013940.P2869994025140673832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P2869994025140673832

namespace A013940

/-- `∑[A056170(n+1)]` -/
def P2869994025140673832.Spec : Prop :=
  ∀ n, P2869994025140673832.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P8333038382313605339

`∑[log2(A323308(n+1))]`
-/

namespace A013940.P8333038382313605339
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A323308 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P8333038382313605339

namespace A013940

/-- `∑[log2(A323308(n+1))]` -/
def P8333038382313605339.Spec : Prop :=
  ∀ n, P8333038382313605339.a n = (A013940 (n + 1) : ℝ)

end A013940

/-! ## A013940.P6897343158855126157

`∑[val(A073184(n+1), 3)]`
-/

namespace A013940.P6897343158855126157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073184 (n + 1)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P6897343158855126157

namespace A013940

/-- `∑[val(A073184(n+1), 3)]` -/
def P6897343158855126157.Spec : Prop :=
  ∀ n, (P6897343158855126157.a n : ℤ) = A013940 (n + 1)

end A013940

/-! ## A013940.P15827744061253356526

`∑[A001221((n+1)/∏{p}[n+1, #])]`
-/

namespace A013940.P15827744061253356526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P15827744061253356526

namespace A013940

/-- `∑[A001221((n+1)/∏{p}[n+1, #])]` -/
def P15827744061253356526.Spec : Prop :=
  ∀ n, P15827744061253356526.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P1047170660110495494

`∑[A001221(A000188(n+1))]`
-/

namespace A013940.P1047170660110495494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P1047170660110495494

namespace A013940

/-- `∑[A001221(A000188(n+1))]` -/
def P1047170660110495494.Spec : Prop :=
  ∀ n, P1047170660110495494.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P1088681189129327431

`∑[A001221(A000189(n+1))]`
-/

namespace A013940.P1088681189129327431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P1088681189129327431

namespace A013940

/-- `∑[A001221(A000189(n+1))]` -/
def P1088681189129327431.Spec : Prop :=
  ∀ n, P1088681189129327431.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P16479745318699669403

`∑[A001221(A000190(n+1))]`
-/

namespace A013940.P16479745318699669403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P16479745318699669403

namespace A013940

/-- `∑[A001221(A000190(n+1))]` -/
def P16479745318699669403.Spec : Prop :=
  ∀ n, P16479745318699669403.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P13899568127289924360

`∑[A001221(A003557(n+1))]`
-/

namespace A013940.P13899568127289924360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P13899568127289924360

namespace A013940

/-- `∑[A001221(A003557(n+1))]` -/
def P13899568127289924360.Spec : Prop :=
  ∀ n, P13899568127289924360.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P4508906819503054311

`∑[A001221(A008833(n+1))]`
-/

namespace A013940.P4508906819503054311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P4508906819503054311

namespace A013940

/-- `∑[A001221(A008833(n+1))]` -/
def P4508906819503054311.Spec : Prop :=
  ∀ n, P4508906819503054311.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P9044386237177691727

`∑[A001221(A057521(n+1))]`
-/

namespace A013940.P9044386237177691727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A057521 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P9044386237177691727

namespace A013940

/-- `∑[A001221(A057521(n+1))]` -/
def P9044386237177691727.Spec : Prop :=
  ∀ n, P9044386237177691727.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P16617382787565509472

`∑[A001222(A071773(n+1))]`
-/

namespace A013940.P16617382787565509472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071773 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P16617382787565509472

namespace A013940

/-- `∑[A001222(A071773(n+1))]` -/
def P16617382787565509472.Spec : Prop :=
  ∀ n, P16617382787565509472.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P12035120825053563119

`∑[A001221(A085731(n+1))]`
-/

namespace A013940.P12035120825053563119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A085731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P12035120825053563119

namespace A013940

/-- `∑[A001221(A085731(n+1))]` -/
def P12035120825053563119.Spec : Prop :=
  ∀ n, P12035120825053563119.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P3260934606193961414

`∑[A001221(A212173(n+1))]`
-/

namespace A013940.P3260934606193961414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A212173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P3260934606193961414

namespace A013940

/-- `∑[A001221(A212173(n+1))]` -/
def P3260934606193961414.Spec : Prop :=
  ∀ n, P3260934606193961414.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P627508317982840491

`∑[A001222(A295879(n+1))]`
-/

namespace A013940.P627508317982840491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A295879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P627508317982840491

namespace A013940

/-- `∑[A001222(A295879(n+1))]` -/
def P627508317982840491.Spec : Prop :=
  ∀ n, P627508317982840491.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P1706153493796290871

`∑[A001222(∏{e}[n+1, A006530(#)])]`
-/

namespace A013940.P1706153493796290871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), A006530 (Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P1706153493796290871

namespace A013940

/-- `∑[A001222(∏{e}[n+1, A006530(#)])]` -/
def P1706153493796290871.Spec : Prop :=
  ∀ n, P1706153493796290871.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P17113063719483599859

`∑[A001222(∏{e}[n+1, A020639(#)])]`
-/

namespace A013940.P17113063719483599859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), A020639 (Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P17113063719483599859

namespace A013940

/-- `∑[A001222(∏{e}[n+1, A020639(#)])]` -/
def P17113063719483599859.Spec : Prop :=
  ∀ n, P17113063719483599859.a n = A013940 (n + 1)

end A013940

/-! ## A013940.P2610925604380374283

`∑[A295659((n+1)²)]`
-/

namespace A013940.P2610925604380374283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013940.P2610925604380374283

namespace A013940

/-- `∑[A295659((n+1)²)]` -/
def P2610925604380374283.Spec : Prop :=
  ∀ n, P2610925604380374283.a n = A013940 (n + 1)

end A013940

/-!
# A013941: a(n) = Sum_{k = 1..n} floor(n/prime(k)^3).

The programs for A013941, the canonical program `A013941.P8896719448665433287` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013941 has offset 1).

The definition of A013941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, floor((n+1)/A000040(#+1)^3)]` (program `A013941.P8896719448665433287`, by `A013941.P8896719448665433287.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013941.P8896719448665433287

`∑{#}[n, floor((n+1)/A000040(#+1)^3)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013941

/-- `∑{#}[n, floor((n+1)/A000040(#+1)^3)]` -/
def P8896719448665433287.Spec : Prop :=
  ∀ n, P8896719448665433287.a n = A013941 (n + 1)

theorem P8896719448665433287.correct : P8896719448665433287.Spec := by
  intro n
  simp only [A013941, Nat.add_sub_cancel]

end A013941

/-! ## A013941.P15157601997126489208

`∑[∑{e}[n+1, 2%#/2]]`
-/

namespace A013941.P15157601997126489208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((2 % Nat.factorization (f2 n) p : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P15157601997126489208

namespace A013941

/-- `∑[∑{e}[n+1, 2%#/2]]` -/
def P15157601997126489208.Spec : Prop :=
  ∀ n, P15157601997126489208.a n = (A013941 (n + 1) : ℚ)

end A013941

/-! ## A013941.P14964450522152290074

`∑[A295659(n+1)]`
-/

namespace A013941.P14964450522152290074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P14964450522152290074

namespace A013941

/-- `∑[A295659(n+1)]` -/
def P14964450522152290074.Spec : Prop :=
  ∀ n, P14964450522152290074.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P3798952752462675650

`∑[log2(A368248(n+1))]`
-/

namespace A013941.P3798952752462675650
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A368248 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P3798952752462675650

namespace A013941

/-- `∑[log2(A368248(n+1))]` -/
def P3798952752462675650.Spec : Prop :=
  ∀ n, P3798952752462675650.a n = (A013941 (n + 1) : ℝ)

end A013941

/-! ## A013941.P3932293440649138543

`∑[val(A124859(n+1), 5)]`
-/

namespace A013941.P3932293440649138543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124859 (n + 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P3932293440649138543

namespace A013941

/-- `∑[val(A124859(n+1), 5)]` -/
def P3932293440649138543.Spec : Prop :=
  ∀ n, (P3932293440649138543.a n : ℤ) = A013941 (n + 1)

end A013941

/-! ## A013941.P1029498987928186108

`∑[log2(abs(A307428(n+1)))]`
-/

namespace A013941.P1029498987928186108
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|A307428 (n + 1)| : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P1029498987928186108

namespace A013941

/-- `∑[log2(abs(A307428(n+1)))]` -/
def P1029498987928186108.Spec : Prop :=
  ∀ n, P1029498987928186108.a n = (A013941 (n + 1) : ℝ)

end A013941

/-! ## A013941.P9948483147071547873

`∑[A001221(A008834(n+1))]`
-/

namespace A013941.P9948483147071547873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P9948483147071547873

namespace A013941

/-- `∑[A001221(A008834(n+1))]` -/
def P9948483147071547873.Spec : Prop :=
  ∀ n, P9948483147071547873.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P774528841873752902

`∑[A001221(A053150(n+1))]`
-/

namespace A013941.P774528841873752902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A053150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P774528841873752902

namespace A013941

/-- `∑[A001221(A053150(n+1))]` -/
def P774528841873752902.Spec : Prop :=
  ∀ n, P774528841873752902.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P7798156688780510340

`∑[A056170(A000190(n+1))]`
-/

namespace A013941.P7798156688780510340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A000190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P7798156688780510340

namespace A013941

/-- `∑[A056170(A000190(n+1))]` -/
def P7798156688780510340.Spec : Prop :=
  ∀ n, P7798156688780510340.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P15534950840728622296

`∑[A056170(A003557(n+1))]`
-/

namespace A013941.P15534950840728622296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P15534950840728622296

namespace A013941

/-- `∑[A056170(A003557(n+1))]` -/
def P15534950840728622296.Spec : Prop :=
  ∀ n, P15534950840728622296.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P19580958773527929

`∑[A001221(A062378(n+1))]`
-/

namespace A013941.P19580958773527929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062378 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P19580958773527929

namespace A013941

/-- `∑[A001221(A062378(n+1))]` -/
def P19580958773527929.Spec : Prop :=
  ∀ n, P19580958773527929.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P13093011726267015980

`∑[A001221(A295657(n+1))]`
-/

namespace A013941.P13093011726267015980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A295657 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P13093011726267015980

namespace A013941

/-- `∑[A001221(A295657(n+1))]` -/
def P13093011726267015980.Spec : Prop :=
  ∀ n, P13093011726267015980.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P7375602827325918577

`∑[A001221(A360540(n+1))]`
-/

namespace A013941.P7375602827325918577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A360540 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P7375602827325918577

namespace A013941

/-- `∑[A001221(A360540(n+1))]` -/
def P7375602827325918577.Spec : Prop :=
  ∀ n, P7375602827325918577.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P300068384356783924

`∑[A295884(n+1)+A295883(n+1)]`
-/

namespace A013941.P300068384356783924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (n + 1) + A295883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P300068384356783924

namespace A013941

/-- `∑[A295884(n+1)+A295883(n+1)]` -/
def P300068384356783924.Spec : Prop :=
  ∀ n, P300068384356783924.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P9978304809329477408

`∑[A001221(A003557((n+1)/∏{p}[n+1, #]))]`
-/

namespace A013941.P9978304809329477408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P9978304809329477408

namespace A013941

/-- `∑[A001221(A003557((n+1)/∏{p}[n+1, #]))]` -/
def P9978304809329477408.Spec : Prop :=
  ∀ n, P9978304809329477408.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P11986324076400762745

`∑[A295884(A003557(n+1)²)]`
-/

namespace A013941.P11986324076400762745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A003557 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P11986324076400762745

namespace A013941

/-- `∑[A295884(A003557(n+1)²)]` -/
def P11986324076400762745.Spec : Prop :=
  ∀ n, P11986324076400762745.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P18030078680970201716

`∑[A295884(A008834(n+1)²)]`
-/

namespace A013941.P18030078680970201716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A008834 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P18030078680970201716

namespace A013941

/-- `∑[A295884(A008834(n+1)²)]` -/
def P18030078680970201716.Spec : Prop :=
  ∀ n, P18030078680970201716.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P8739890375287814837

`∑[A007949(A294873(n+1))]`
-/

namespace A013941.P8739890375287814837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A294873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P8739890375287814837

namespace A013941

/-- `∑[A007949(A294873(n+1))]` -/
def P8739890375287814837.Spec : Prop :=
  ∀ n, P8739890375287814837.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P8250028729391333793

`A001222(∏[∏{e}[n+1, round(sqrt(#))]])`
-/

namespace A013941.P8250028729391333793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (Real.sqrt (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A013941.P8250028729391333793

namespace A013941

/-- `A001222(∏[∏{e}[n+1, round(sqrt(#))]])` -/
def P8250028729391333793.Spec : Prop :=
  ∀ n, P8250028729391333793.a n = A013941 (n + 1)

end A013941

/-! ## A013941.P1722073607140749612

`∑[1-A363553((n+1)²)]`
-/

namespace A013941.P1722073607140749612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A363553 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013941.P1722073607140749612

namespace A013941

/-- `∑[1-A363553((n+1)²)]` -/
def P1722073607140749612.Spec : Prop :=
  ∀ n, P1722073607140749612.a n = A013941 (n + 1)

end A013941

/-!
# A013942: Triangle of numbers T(n,k) = floor(2n/k), k=1..2n, read by rows.

The programs for A013942, the canonical program `A013942.P4361914383121615099` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013942 has offset 1).

The definition of A013942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013942.P4361914383121615099

`A091453(comp[n²])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A013942

/-- `A091453(comp[n²])` -/
def P4361914383121615099.Spec : Prop :=
  ∀ n, P4361914383121615099.a n = A013942 (n + 1)

theorem P4361914383121615099.correct : P4361914383121615099.Spec := by
  intro n
  simp only [A013942, Nat.add_sub_cancel]

end A013942

/-! ## A013942.P10704367531448803258

`A010766(A007607(n+1))`
-/

namespace A013942.P10704367531448803258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A007607 (n + 1)).toNat

end

end A013942.P10704367531448803258

namespace A013942

/-- `A010766(A007607(n+1))` -/
def P10704367531448803258.Spec : Prop :=
  ∀ n, P10704367531448803258.a n = A013942 (n + 1)

end A013942

/-! ## A013942.P9163824651009412850

`A010766(A162917(n+1)+1)`
-/

namespace A013942.P9163824651009412850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A162917 (n + 1) + 1).toNat

end

end A013942.P9163824651009412850

namespace A013942

/-- `A010766(A162917(n+1)+1)` -/
def P9163824651009412850.Spec : Prop :=
  ∀ n, P9163824651009412850.a n = A013942 (n + 1)

end A013942

/-! ## A013942.P3062429524130770642

`A010766(A053187(n+1)+n+1)`
-/

namespace A013942.P3062429524130770642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A053187 (n + 1) + (n : ℤ) + 1).toNat

end

end A013942.P3062429524130770642

namespace A013942

/-- `A010766(A053187(n+1)+n+1)` -/
def P3062429524130770642.Spec : Prop :=
  ∀ n, P3062429524130770642.a n = A013942 (n + 1)

end A013942

/-! ## A013942.P4510116652854217518

`A010766(A000194(n+1)²+n+1)`
-/

namespace A013942.P4510116652854217518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A000194 (n + 1) ^ 2 + (n : ℤ) + 1).toNat

end

end A013942.P4510116652854217518

namespace A013942

/-- `A010766(A000194(n+1)²+n+1)` -/
def P4510116652854217518.Spec : Prop :=
  ∀ n, P4510116652854217518.a n = A013942 (n + 1)

end A013942

/-! ## A013942.P2772379076894546232

`A010766(A162917(n+2))`
-/

namespace A013942.P2772379076894546232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A162917 (n + 2)).toNat

end

end A013942.P2772379076894546232

namespace A013942

/-- `A010766(A162917(n+2))` -/
def P2772379076894546232.Spec : Prop :=
  ∀ n, P2772379076894546232.a n = A013942 (n + 1)

end A013942

/-! ## A013942.P1799013023604117570

`A010766(A165775(n+1))`
-/

namespace A013942.P1799013023604117570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A165775 (n + 1)).toNat

end

end A013942.P1799013023604117570

namespace A013942

/-- `A010766(A165775(n+1))` -/
def P1799013023604117570.Spec : Prop :=
  ∀ n, P1799013023604117570.a n = A013942 (n + 1)

end A013942

/-! ## A013942.P1817877175061063830

`A121339(∑[A013943(n+1)]-A013943(n+1)+2)`
-/

namespace A013942.P1817877175061063830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121339 (∑ j ∈ Finset.range (n + 1), f1 j - A013943 (n + 1) + 2).toNat

end

end A013942.P1817877175061063830

namespace A013942

/-- `A121339(∑[A013943(n+1)]-A013943(n+1)+2)` -/
def P1817877175061063830.Spec : Prop :=
  ∀ n, P1817877175061063830.a n = A013942 (n + 1)

end A013942

/-! ## A013942.P8975186094541558899

`A278111(A165453(n+1))`
-/

namespace A013942.P8975186094541558899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (A165453 (n + 1)).toNat

end

end A013942.P8975186094541558899

namespace A013942

/-- `A278111(A165453(n+1))` -/
def P8975186094541558899.Spec : Prop :=
  ∀ n, P8975186094541558899.a n = A013942 (n + 1)

end A013942

/-! ## A013942.P18251592726435243696

`A091453(A000037(n+1))+A091453(n²)`
-/

namespace A013942.P18251592726435243696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A000037 (n + 1)).toNat + A091453 (n ^ 2)

end

end A013942.P18251592726435243696

namespace A013942

/-- `A091453(A000037(n+1))+A091453(n²)` -/
def P18251592726435243696.Spec : Prop :=
  ∀ n, P18251592726435243696.a n = A013942 (n + 1)

end A013942

/-!
# A013943: Period of continued fraction for sqrt(m), m = n-th nonsquare.

The programs for A013943, there is no canonical definition to state claims against.
-/

/-! ## A013943.P5991489070651611176

`A097853(A164386(n+1))`
-/

namespace A013943.P5991489070651611176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (A164386 (n + 1)).toNat

end

end A013943.P5991489070651611176

/-! ## A013943.P4978650482881346808

`A097853(lt[1, A097885(n)])`
-/

namespace A013943.P4978650482881346808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A013943.P4978650482881346808

/-! ## A013943.P13500880833875777496

`A003285(comp[n²])`
-/

namespace A013943.P13500880833875777496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A013943.P13500880833875777496

/-! ## A013943.P7956495749751645360

`A097853(comp[n²])`
-/

namespace A013943.P7956495749751645360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A013943.P7956495749751645360

/-! ## A013943.P3917286622803932451

`A097853(A000037(n+1))%(n+7)`
-/

namespace A013943.P3917286622803932451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097853 (A000037 (n + 1)).toNat) (n + 7 : ℤ)

end

end A013943.P3917286622803932451

/-! ## A013943.P14195581539769402986

`or(A000007(n), A003285(A000037(n+1)))`
-/

namespace A013943.P14195581539769402986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A003285 (A000037 (n + 1)).toNat)

end

end A013943.P14195581539769402986

/-! ## A013943.P14270146882454058223

`A003285(A000037(n+1)+A000007(n))-A000007(n)`
-/

namespace A013943.P14270146882454058223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000037 (n + 1) + A000007 n).toNat - A000007 n

end

end A013943.P14270146882454058223

/-! ## A013943.P5843899568210065572

`A003285(A000037(n+1))+A000007(n)*A003285(n+1)`
-/

namespace A013943.P5843899568210065572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000037 (n + 1)).toNat + A000007 n * A003285 (n + 1)

end

end A013943.P5843899568210065572

/-! ## A013943.P18082278894927642650

`A253513(Δ[n²])+A003285(A000037(n+1))`
-/

namespace A013943.P18082278894927642650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A003285 (A000037 (n + 1)).toNat

end

end A013943.P18082278894927642650

/-! ## A013943.P9790064205773059836

`A003285(A000037(n+1))*A160267(A017293(n))`
-/

namespace A013943.P9790064205773059836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000037 (n + 1)).toNat * A160267 (A017293 n).toNat

end

end A013943.P9790064205773059836

/-! ## A013943.P10794411430759185096

`A003285(A000037(n+1))+A003285(A133819(n+1))`
-/

namespace A013943.P10794411430759185096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000037 (n + 1)).toNat + A003285 (A133819 (n + 1)).toNat

end

end A013943.P10794411430759185096

/-! ## A013943.P5749703595599291769

`A097853(A000037(n+1))/A097853(A097853(n+1)²)`
-/

namespace A013943.P5749703595599291769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097853 (A000037 (n + 1)).toNat : ℚ) / (A097853 (A097853 (n + 1) ^ 2).toNat : ℚ)

end

end A013943.P5749703595599291769

/-!
# A013944: Sum of terms in period of continued fraction for square root of the n-th nonsquare.

The programs for A013944, there is no canonical definition to state claims against.
-/

/-! ## A013944.P5268119935287568682

`A010340(comp[n²])`
-/

namespace A013944.P5268119935287568682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A013944.P5268119935287568682

/-! ## A013944.P12702071977700655485

`gcd(A000038(n), A010340(A000037(n+1)))`
-/

namespace A013944.P12702071977700655485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A010340 (A000037 (n + 1)).toNat)

end

end A013944.P12702071977700655485

/-! ## A013944.P8505233631983692187

`A010340(A000037(n+1))+A000007(n+1)`
-/

namespace A013944.P8505233631983692187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A000037 (n + 1)).toNat + A000007 (n + 1)

end

end A013944.P8505233631983692187

/-! ## A013944.P5503574120205598190

`A010340(A000037(n+1))+A000038(A008620(n))`
-/

namespace A013944.P5503574120205598190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A000037 (n + 1)).toNat + A000038 (A008620 n).toNat

end

end A013944.P5503574120205598190

/-! ## A013944.P3475619405859742775

`A010340(A000038(n)+A000037(n+1))+A000038(n)`
-/

namespace A013944.P3475619405859742775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A000038 n + A000037 (n + 1)).toNat + A000038 n

end

end A013944.P3475619405859742775

/-! ## A013944.P18208026894445623470

`A010340(A000037(n+1))+A000035(2*n)`
-/

namespace A013944.P18208026894445623470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A000037 (n + 1)).toNat + A000035 (2 * n)

end

end A013944.P18208026894445623470

/-! ## A013944.P472871098000075064

`A010340(A000037(n+1))*A055874(A004767(n))`
-/

namespace A013944.P472871098000075064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A000037 (n + 1)).toNat * A055874 (A004767 n).toNat

end

end A013944.P472871098000075064

/-! ## A013944.P11494117917078258003

`A010340(A000037(n+1))+A010340(A008620(n)²)`
-/

namespace A013944.P11494117917078258003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A000037 (n + 1)).toNat + A010340 (A008620 n ^ 2).toNat

end

end A013944.P11494117917078258003

/-! ## A013944.P12083939071967516043

`A001222(A089628(n+3))*A010340(A000037(n+1))`
-/

namespace A013944.P12083939071967516043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089628 (n + 3)).toNat * A010340 (A000037 (n + 1)).toNat

end

end A013944.P12083939071967516043

/-! ## A013944.P12588466634063778634

`A010340(A000037(n+1))+A000038(A000124(n))`
-/

namespace A013944.P12588466634063778634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A000037 (n + 1)).toNat + A000038 (A000124 n).toNat

end

end A013944.P12588466634063778634

/-! ## A013944.P10239750279242205704

`A010340(A000010(n+1)²)+A010340(A000037(n+1))`
-/

namespace A013944.P10239750279242205704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A000010 (n + 1) ^ 2).toNat + A010340 (A000037 (n + 1)).toNat

end

end A013944.P10239750279242205704

/-!
# A013945: Least d such that period of continued fraction for sqrt(d) contains n (n^2+2 if n odd, (n/2)^2+1 if n even).

The programs for A013945, the canonical program `A013945.P13894739959037871589` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013945 has offset 1).

The definition of A013945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013945.P13894739959037871589

`ogf((3+2x+2x^2-x^3+3x^4+x^5)/(1-3x^2+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013945

/-- `ogf((3+2x+2x^2-x^3+3x^4+x^5)/(1-3x^2+3x^4-x^6))` -/
def P13894739959037871589.Spec : Prop :=
  ∀ n, P13894739959037871589.a n = A013945 (n + 1)

theorem P13894739959037871589.correct : P13894739959037871589.Spec := by
  intro n
  simp only [A013945, Nat.add_sub_cancel]

end A013945

/-! ## A013945.P9516633806288763809

`gcd(2, n)+gcd(n+1, ∑[n])²`
-/

namespace A013945.P9516633806288763809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A013945.P9516633806288763809

namespace A013945

/-- `gcd(2, n)+gcd(n+1, ∑[n])²` -/
def P9516633806288763809.Spec : Prop :=
  ∀ n, (P9516633806288763809.a n : ℤ) = A013945 (n + 1)

end A013945

/-! ## A013945.P5083995812354809650

`a(n-2)+n*gcd(4, n%2)` with `a(0)=3, a(1)=2`
-/

namespace A013945.P5083995812354809650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 2) + n * Nat.gcd 4 (n % 2)

end

end A013945.P5083995812354809650

namespace A013945

/-- `a(n-2)+n*gcd(4, n%2)` -/
def P5083995812354809650.Spec : Prop :=
  ∀ n, (P5083995812354809650.a n : ℤ) = A013945 (n + 1)

end A013945

/-! ## A013945.P15459540833993912178

`gcd(2, n)+A030640(n)²`
-/

namespace A013945.P15459540833993912178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + A030640 n ^ 2

end

end A013945.P15459540833993912178

namespace A013945

/-- `gcd(2, n)+A030640(n)²` -/
def P15459540833993912178.Spec : Prop :=
  ∀ n, P15459540833993912178.a n = A013945 (n + 1)

end A013945

/-! ## A013945.P7574421170875741845

`(A086955(n)+2)/A010685(n)`
-/

namespace A013945.P7574421170875741845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086955 n + 2 : ℚ) / (A010685 n : ℚ)

end

end A013945.P7574421170875741845

namespace A013945

/-- `(A086955(n)+2)/A010685(n)` -/
def P7574421170875741845.Spec : Prop :=
  ∀ n, P7574421170875741845.a n = (A013945 (n + 1) : ℚ)

end A013945

/-! ## A013945.P7337482600026391194

`A030640(n)²+2/A000034(n)`
-/

namespace A013945.P7337482600026391194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030640 n ^ 2 : ℚ) + 2 / (A000034 n : ℚ)

end

end A013945.P7337482600026391194

namespace A013945

/-- `A030640(n)²+2/A000034(n)` -/
def P7337482600026391194.Spec : Prop :=
  ∀ n, P7337482600026391194.a n = (A013945 (n + 1) : ℚ)

end A013945

/-! ## A013945.P9723200342407862483

`A183199(n+1)%A070959(n+1)`
-/

namespace A013945.P9723200342407862483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183199 (n + 1)) (A070959 (n + 1))

end

end A013945.P9723200342407862483

namespace A013945

/-- `A183199(n+1)%A070959(n+1)` -/
def P9723200342407862483.Spec : Prop :=
  ∀ n, P9723200342407862483.a n = A013945 (n + 1)

end A013945

/-! ## A013945.P3200270505616902551

`A005563(A026741(n+1))-A022998(n)`
-/

namespace A013945.P3200270505616902551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A026741 (n + 1)).toNat - A022998 n

end

end A013945.P3200270505616902551

namespace A013945

/-- `A005563(A026741(n+1))-A022998(n)` -/
def P3200270505616902551.Spec : Prop :=
  ∀ n, P3200270505616902551.a n = A013945 (n + 1)

end A013945

/-! ## A013945.P13384501369881680646

`A000034(n+1)+A030640(n)²`
-/

namespace A013945.P13384501369881680646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) + A030640 n ^ 2

end

end A013945.P13384501369881680646

namespace A013945

/-- `A000034(n+1)+A030640(n)²` -/
def P13384501369881680646.Spec : Prop :=
  ∀ n, P13384501369881680646.a n = A013945 (n + 1)

end A013945

/-! ## A013945.P6421262764128790428

`A168077(n+1)+A000034(n+1)`
-/

namespace A013945.P6421262764128790428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n + 1) + A000034 (n + 1)

end

end A013945.P6421262764128790428

namespace A013945

/-- `A168077(n+1)+A000034(n+1)` -/
def P6421262764128790428.Spec : Prop :=
  ∀ n, P6421262764128790428.a n = A013945 (n + 1)

end A013945

/-! ## A013945.P8921674018052686176

`A168077(n+1)+A040001(n+2)`
-/

namespace A013945.P8921674018052686176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n + 1) + A040001 (n + 2)

end

end A013945.P8921674018052686176

namespace A013945

/-- `A168077(n+1)+A040001(n+2)` -/
def P8921674018052686176.Spec : Prop :=
  ∀ n, P8921674018052686176.a n = A013945 (n + 1)

end A013945

/-! ## A013945.P10560145108689484933

`A261327(n+1)-A010673(n+1)`
-/

namespace A013945.P10560145108689484933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (n + 1) - A010673 (n + 1)

end

end A013945.P10560145108689484933

namespace A013945

/-- `A261327(n+1)-A010673(n+1)` -/
def P10560145108689484933.Spec : Prop :=
  ∀ n, P10560145108689484933.a n = A013945 (n + 1)

end A013945

/-! ## A013945.P12631184593637940986

`(A129194(n+1)+2)/A000034(n)`
-/

namespace A013945.P12631184593637940986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129194 (n + 1) + 2 : ℚ) / (A000034 n : ℚ)

end

end A013945.P12631184593637940986

namespace A013945

/-- `(A129194(n+1)+2)/A000034(n)` -/
def P12631184593637940986.Spec : Prop :=
  ∀ n, P12631184593637940986.a n = (A013945 (n + 1) : ℚ)

end A013945

/-! ## A013945.P9063435872079659382

`A000034(n+1)+A026741(n+1)²`
-/

namespace A013945.P9063435872079659382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) + A026741 (n + 1) ^ 2

end

end A013945.P9063435872079659382

namespace A013945

/-- `A000034(n+1)+A026741(n+1)²` -/
def P9063435872079659382.Spec : Prop :=
  ∀ n, P9063435872079659382.a n = A013945 (n + 1)

end A013945

/-! ## A013945.P218626533279927469

`A033999(n+1)+A261327(n+1)-1`
-/

namespace A013945.P218626533279927469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + (A261327 (n + 1) - 1)

end

end A013945.P218626533279927469

namespace A013945

/-- `A033999(n+1)+A261327(n+1)-1` -/
def P218626533279927469.Spec : Prop :=
  ∀ n, P218626533279927469.a n = A013945 (n + 1)

end A013945

/-! ## A013945.P7042076190587628405

`(A129194(n+1)+2)/A040001(n+1)`
-/

namespace A013945.P7042076190587628405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129194 (n + 1) + 2 : ℚ) / (A040001 (n + 1) : ℚ)

end

end A013945.P7042076190587628405

namespace A013945

/-- `(A129194(n+1)+2)/A040001(n+1)` -/
def P7042076190587628405.Spec : Prop :=
  ∀ n, P7042076190587628405.a n = (A013945 (n + 1) : ℚ)

end A013945

/-! ## A013945.P10644715747886982044

`A000034(n+1)+((n+1)/A000034(n))²`
-/

namespace A013945.P10644715747886982044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 (n + 1) : ℚ) + ((n + 1 : ℚ) / (A000034 n : ℚ)) ^ 2

end

end A013945.P10644715747886982044

namespace A013945

/-- `A000034(n+1)+((n+1)/A000034(n))²` -/
def P10644715747886982044.Spec : Prop :=
  ∀ n, P10644715747886982044.a n = (A013945 (n + 1) : ℚ)

end A013945

/-! ## A013945.P714176385518475799

`A014695(2*n+1)+A030640(n)²`
-/

namespace A013945.P714176385518475799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (2 * n + 1) + A030640 n ^ 2

end

end A013945.P714176385518475799

namespace A013945

/-- `A014695(2*n+1)+A030640(n)²` -/
def P714176385518475799.Spec : Prop :=
  ∀ n, P714176385518475799.a n = A013945 (n + 1)

end A013945

/-! ## A013945.P5486463764382333606

`A168077(n+1)+A014695(2*n+1)`
-/

namespace A013945.P5486463764382333606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n + 1) + A014695 (2 * n + 1)

end

end A013945.P5486463764382333606

namespace A013945

/-- `A168077(n+1)+A014695(2*n+1)` -/
def P5486463764382333606.Spec : Prop :=
  ∀ n, P5486463764382333606.a n = A013945 (n + 1)

end A013945

/-! ## A013945.P12650792611730655376

`A168077(n+1)+2/A176895(2*n)`
-/

namespace A013945.P12650792611730655376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168077 (n + 1) : ℚ) + 2 / (A176895 (2 * n) : ℚ)

end

end A013945.P12650792611730655376

namespace A013945

/-- `A168077(n+1)+2/A176895(2*n)` -/
def P12650792611730655376.Spec : Prop :=
  ∀ n, P12650792611730655376.a n = (A013945 (n + 1) : ℚ)

end A013945

/-!
# A013946: Least d for which the number with continued fraction [n,n,n,n...] is in Q(sqrt(d)).

The programs for A013946, the canonical program `A013946.P5517598004296153502` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013946 has offset 1).

The definition of A013946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013946.P5517598004296153502

`A007913((n+1)²+4)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A013946

/-- `A007913((n+1)²+4)` -/
def P5517598004296153502.Spec : Prop :=
  ∀ n, P5517598004296153502.a n = A013946 (n + 1)

theorem P5517598004296153502.correct : P5517598004296153502.Spec := by
  intro n
  simp only [A013946, Nat.add_sub_cancel]

end A013946

/-! ## A013946.P16405427830177512505

`gcd(A117717(n+1), A259912(n+1))`
-/

namespace A013946.P16405427830177512505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117717 (n + 1)) (A259912 (n + 1))

end

end A013946.P16405427830177512505

namespace A013946

/-- `gcd(A117717(n+1), A259912(n+1))` -/
def P16405427830177512505.Spec : Prop :=
  ∀ n, (P16405427830177512505.a n : ℤ) = A013946 (n + 1)

end A013946

/-! ## A013946.P14782788787552530467

`A261327(n+1)/A306454(n+1)`
-/

namespace A013946.P14782788787552530467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261327 (n + 1) : ℚ) / (A306454 (n + 1) : ℚ)

end

end A013946.P14782788787552530467

namespace A013946

/-- `A261327(n+1)/A306454(n+1)` -/
def P14782788787552530467.Spec : Prop :=
  ∀ n, P14782788787552530467.a n = (A013946 (n + 1) : ℚ)

end A013946

/-! ## A013946.P12552229958909326219

`∏{p}[A259912(n+1), #]`
-/

namespace A013946.P12552229958909326219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259912 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A013946.P12552229958909326219

namespace A013946

/-- `∏{p}[A259912(n+1), #]` -/
def P12552229958909326219.Spec : Prop :=
  ∀ n, (P12552229958909326219.a n : ℤ) = A013946 (n + 1)

end A013946

/-! ## A013946.P8533824876695003674

`A007947(A259912(n+1))`
-/

namespace A013946.P8533824876695003674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A259912 (n + 1)).toNat

end

end A013946.P8533824876695003674

namespace A013946

/-- `A007947(A259912(n+1))` -/
def P8533824876695003674.Spec : Prop :=
  ∀ n, P8533824876695003674.a n = A013946 (n + 1)

end A013946

/-! ## A013946.P5140789324527230646

`A226693(A333574(n+1))`
-/

namespace A013946.P5140789324527230646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226693 (A333574 (n + 1)).toNat

end

end A013946.P5140789324527230646

namespace A013946

/-- `A226693(A333574(n+1))` -/
def P5140789324527230646.Spec : Prop :=
  ∀ n, P5140789324527230646.a n = A013946 (n + 1)

end A013946

/-! ## A013946.P9297663085605672437

`A049457((n+1)²)`
-/

namespace A013946.P9297663085605672437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049457 ((n + 1) ^ 2)

end

end A013946.P9297663085605672437

namespace A013946

/-- `A049457((n+1)²)` -/
def P9297663085605672437.Spec : Prop :=
  ∀ n, P9297663085605672437.a n = A013946 (n + 1)

end A013946

/-! ## A013946.P8705878541998463841

`A366244((n+1)²+4)`
-/

namespace A013946.P8705878541998463841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366244 ((n + 1) ^ 2 + 4)

end

end A013946.P8705878541998463841

namespace A013946

/-- `A366244((n+1)²+4)` -/
def P8705878541998463841.Spec : Prop :=
  ∀ n, P8705878541998463841.a n = A013946 (n + 1)

end A013946

/-!
# A013947: Positions of 1's in Kolakoski sequence (A000002).

The programs for A013947, the canonical program `A013947.P11385183315367073616` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013947 has offset 1).

The definition of A013947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013947.P10915576279027471083

`A327239(n)+a(n-1)` with `a(0)=1`
-/

namespace A013947.P10915576279027471083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A327239 n + a (n - 1)

end

end A013947.P10915576279027471083

namespace A013947

/-- `A327239(n)+a(n-1)` -/
def P10915576279027471083.Spec : Prop :=
  ∀ n, P10915576279027471083.a n = A013947 (n + 1)

end A013947

/-! ## A013947.P10323849621277442494

`A022297(n+1)%(n+1)²+1`
-/

namespace A013947.P10323849621277442494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022297 (n + 1)) ((n + 1) ^ 2 : ℤ) + 1

end

end A013947.P10323849621277442494

namespace A013947

/-- `A022297(n+1)%(n+1)²+1` -/
def P10323849621277442494.Spec : Prop :=
  ∀ n, P10323849621277442494.a n = A013947 (n + 1)

end A013947

/-! ## A013947.P4294372836472166662

`A057427(n)+A022297(n+1)`
-/

namespace A013947.P4294372836472166662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A022297 (n + 1)

end

end A013947.P4294372836472166662

namespace A013947

/-- `A057427(n)+A022297(n+1)` -/
def P4294372836472166662.Spec : Prop :=
  ∀ n, P4294372836472166662.a n = A013947 (n + 1)

end A013947

/-! ## A013947.P7872762616279297287

`A022297(n+1)-A057428(n)`
-/

namespace A013947.P7872762616279297287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1) - A057428 n

end

end A013947.P7872762616279297287

namespace A013947

/-- `A022297(n+1)-A057428(n)` -/
def P7872762616279297287.Spec : Prop :=
  ∀ n, P7872762616279297287.a n = A013947 (n + 1)

theorem P7872762616279297287.correct : P7872762616279297287.Spec := by
  intro n
  simp only [A013947, Nat.add_sub_cancel, A013947.P7872762616279297287.a, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A022297, A022297.P13831019223360445474.a, A057428, A057428.P8574537373872850588.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A000002, A000002.P13330532946811820297.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013947

/-! ## A013947.P1242883155264095695

`A022297(n+1)+abs(A062157(n))`
-/

namespace A013947.P1242883155264095695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1) + |A062157 n|

end

end A013947.P1242883155264095695

namespace A013947

/-- `A022297(n+1)+abs(A062157(n))` -/
def P1242883155264095695.Spec : Prop :=
  ∀ n, P1242883155264095695.a n = A013947 (n + 1)

end A013947

/-! ## A013947.P3571370583009670744

`A022297(n+1)+char[A331745(n)]`
-/

namespace A013947.P3571370583009670744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331745 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A013947.P3571370583009670744

namespace A013947

/-- `A022297(n+1)+char[A331745(n)]` -/
def P3571370583009670744.Spec : Prop :=
  ∀ n, P3571370583009670744.a n = A013947 (n + 1)

end A013947

/-! ## A013947.P3302480544393451178

`∪[A074262(n+1), A156243(n+1)]`
-/

namespace A013947.P3302480544393451178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013947.P3302480544393451178

namespace A013947

/-- `∪[A074262(n+1), A156243(n+1)]` -/
def P3302480544393451178.Spec : Prop :=
  ∀ n, (P3302480544393451178.a n : ℤ) = A013947 (n + 1)

end A013947

/-! ## A013947.P2650347188963308441

`A022297(n+1)+char[A300249(n+1)]`
-/

namespace A013947.P2650347188963308441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300249 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A013947.P2650347188963308441

namespace A013947

/-- `A022297(n+1)+char[A300249(n+1)]` -/
def P2650347188963308441.Spec : Prop :=
  ∀ n, P2650347188963308441.a n = A013947 (n + 1)

end A013947

/-! ## A013947.P9694111437420523316

`A022297(n+1)+char[A308173(n+1)]`
-/

namespace A013947.P9694111437420523316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308173 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A013947.P9694111437420523316

namespace A013947

/-- `A022297(n+1)+char[A308173(n+1)]` -/
def P9694111437420523316.Spec : Prop :=
  ∀ n, P9694111437420523316.a n = A013947 (n + 1)

end A013947

/-! ## A013947.P11385183315367073616

`∪[A156242(n+1)+1, A156243(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A013947

/-- `∪[A156242(n+1)+1, A156243(n+1)]` -/
def P11385183315367073616.Spec : Prop :=
  ∀ n, (P11385183315367073616.a n : ℤ) = A013947 (n + 1)

theorem P11385183315367073616.correct : P11385183315367073616.Spec := by
  intro n
  simp only [A013947, Nat.add_sub_cancel]

end A013947

/-! ## A013947.P11277044432321690210

`A178487(A029837(n+1))+A022297(n+1)`
-/

namespace A013947.P11277044432321690210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A029837 (n + 1)).toNat + A022297 (n + 1)

end

end A013947.P11277044432321690210

namespace A013947

/-- `A178487(A029837(n+1))+A022297(n+1)` -/
def P11277044432321690210.Spec : Prop :=
  ∀ n, P11277044432321690210.a n = A013947 (n + 1)

end A013947

/-! ## A013947.P9390902704711798256

`eq[1, A000002(n+1)]+1`
-/

namespace A013947.P9390902704711798256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013947.P9390902704711798256

namespace A013947

/-- `eq[1, A000002(n+1)]+1` -/
def P9390902704711798256.Spec : Prop :=
  ∀ n, (P9390902704711798256.a n : ℤ) = A013947 (n + 1)

end A013947

/-! ## A013947.P12491630544547317465

`lt[3, 5-A000002(abs(1-n)+1)]`
-/

namespace A013947.P12491630544547317465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A000002 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A013947.P12491630544547317465

namespace A013947

/-- `lt[3, 5-A000002(abs(1-n)+1)]` -/
def P12491630544547317465.Spec : Prop :=
  ∀ n, (P12491630544547317465.a n : ℤ) = A013947 (n + 1)

end A013947

/-! ## A013947.P11306532744304533648

`record[A000027(n+1)/A000002(n+1)²]`
-/

namespace A013947.P11306532744304533648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000002 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013947.P11306532744304533648

namespace A013947

/-- `record[A000027(n+1)/A000002(n+1)²]` -/
def P11306532744304533648.Spec : Prop :=
  ∀ n, P11306532744304533648.a n = (A013947 (n + 1) : ℚ)

end A013947

/-! ## A013947.P3706478745953733318

`record[A100808(n+1)+n]`
-/

namespace A013947.P3706478745953733318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100808 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013947.P3706478745953733318

namespace A013947

/-- `record[A100808(n+1)+n]` -/
def P3706478745953733318.Spec : Prop :=
  ∀ n, P3706478745953733318.a n = A013947 (n + 1)

end A013947

/-! ## A013947.P4923152699706669947

`lt[1, A049705(n+1)]+1`
-/

namespace A013947.P4923152699706669947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A013947.P4923152699706669947

namespace A013947

/-- `lt[1, A049705(n+1)]+1` -/
def P4923152699706669947.Spec : Prop :=
  ∀ n, (P4923152699706669947.a n : ℤ) = A013947 (n + 1)

end A013947

/-! ## A013947.P17847481656716926070

`a(n-1)+A248806(n)+1` with `a(0)=1`
-/

namespace A013947.P17847481656716926070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A248806 n + 1)

end

end A013947.P17847481656716926070

namespace A013947

/-- `a(n-1)+A248806(n)+1` -/
def P17847481656716926070.Spec : Prop :=
  ∀ n, P17847481656716926070.a n = A013947 (n + 1)

end A013947

/-! ## A013947.P9442097141293483089

`A100808(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A013947.P9442097141293483089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100808 (a (n - 1) + 1).toNat + a (n - 1)

end

end A013947.P9442097141293483089

namespace A013947

/-- `A100808(a(n-1)+1)+a(n-1)` -/
def P9442097141293483089.Spec : Prop :=
  ∀ n, P9442097141293483089.a n = A013947 (n + 1)

end A013947

/-! ## A013947.P2971042765603953795

`A065475(A022297(n+1))`
-/

namespace A013947.P2971042765603953795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A022297 (n + 1)).toNat

end

end A013947.P2971042765603953795

namespace A013947

/-- `A065475(A022297(n+1))` -/
def P2971042765603953795.Spec : Prop :=
  ∀ n, P2971042765603953795.a n = A013947 (n + 1)

end A013947

/-!
# A013948: Positions of 2's in Kolakoski sequence (A000002).

The programs for A013948, the canonical program `A013948.P3339504944308927508` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013948 has offset 1).

The definition of A013948 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A013948.P3339504944308927508

`A078649(n+1)-n`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A013948

/-- `A078649(n+1)-n` -/
def P3339504944308927508.Spec : Prop :=
  ∀ n, P3339504944308927508.a n = A013948 (n + 1)

theorem P3339504944308927508.correct : P3339504944308927508.Spec := by
  intro n
  simp only [A013948, Nat.add_sub_cancel]

end A013948

/-! ## A013948.P73169565275510158

`eq[0, A249093(n+2)]+2`
-/

namespace A013948.P73169565275510158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A013948.P73169565275510158

namespace A013948

/-- `eq[0, A249093(n+2)]+2` -/
def P73169565275510158.Spec : Prop :=
  ∀ n, (P73169565275510158.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P6474396517915566667

`eq[0, A249094(n+2)]+2`
-/

namespace A013948.P6474396517915566667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A013948.P6474396517915566667

namespace A013948

/-- `eq[0, A249094(n+2)]+2` -/
def P6474396517915566667.Spec : Prop :=
  ∀ n, (P6474396517915566667.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P12417182053875678317

`eq[0, A249507(n+2)]+2`
-/

namespace A013948.P12417182053875678317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249507 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A013948.P12417182053875678317

namespace A013948

/-- `eq[0, A249507(n+2)]+2` -/
def P12417182053875678317.Spec : Prop :=
  ∀ n, (P12417182053875678317.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P5401676368675916030

`comp[A013947(n+1)-1]+1`
-/

namespace A013948.P5401676368675916030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A013948.P5401676368675916030

namespace A013948

/-- `comp[A013947(n+1)-1]+1` -/
def P5401676368675916030.Spec : Prop :=
  ∀ n, (P5401676368675916030.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P6969965799001727518

`2*n+3-A156265(n+1)`
-/

namespace A013948.P6969965799001727518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A156265 (n + 1)

end

end A013948.P6969965799001727518

namespace A013948

/-- `2*n+3-A156265(n+1)` -/
def P6969965799001727518.Spec : Prop :=
  ∀ n, P6969965799001727518.a n = A013948 (n + 1)

theorem P6969965799001727518.correct : P6969965799001727518.Spec := by
  intro n
  simp only [A013948, Nat.add_sub_cancel, A013948.P6969965799001727518.a, A013948.P3339504944308927508.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A156265, A156265.P11083405800392652458.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013948

/-! ## A013948.P6778708904788825671

`A025505(n+1)-A156256(n+1)`
-/

namespace A013948.P6778708904788825671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025505 (n + 1) - A156256 (n + 1)

end

end A013948.P6778708904788825671

namespace A013948

/-- `A025505(n+1)-A156256(n+1)` -/
def P6778708904788825671.Spec : Prop :=
  ∀ n, P6778708904788825671.a n = A013948 (n + 1)

end A013948

/-! ## A013948.P6274127148974746995

`∪[A074263(n+1), A156242(n+1)]`
-/

namespace A013948.P6274127148974746995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013948.P6274127148974746995

namespace A013948

/-- `∪[A074263(n+1), A156242(n+1)]` -/
def P6274127148974746995.Spec : Prop :=
  ∀ n, (P6274127148974746995.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P6135929024891169864

`∪[A156242(n+1), A156243(n+1)+1]`
-/

namespace A013948.P6135929024891169864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013948.P6135929024891169864

namespace A013948

/-- `∪[A156242(n+1), A156243(n+1)+1]` -/
def P6135929024891169864.Spec : Prop :=
  ∀ n, (P6135929024891169864.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P855369626571031699

`∪[A074262(n+1), A074263(n+1)]-n`
-/

namespace A013948.P855369626571031699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074263 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A013948.P855369626571031699

namespace A013948

/-- `∪[A074262(n+1), A074263(n+1)]-n` -/
def P855369626571031699.Spec : Prop :=
  ∀ n, P855369626571031699.a n = A013948 (n + 1)

end A013948

/-! ## A013948.P13786711152187775295

`lt[1, A000002(n+1)]+1`
-/

namespace A013948.P13786711152187775295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A013948.P13786711152187775295

namespace A013948

/-- `lt[1, A000002(n+1)]+1` -/
def P13786711152187775295.Spec : Prop :=
  ∀ n, (P13786711152187775295.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P3809448064066765244

`eq[2, A000002(n^floor(atan(n)))]`
-/

namespace A013948.P3809448064066765244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013948.P3809448064066765244

namespace A013948

/-- `eq[2, A000002(n^floor(atan(n)))]` -/
def P3809448064066765244.Spec : Prop :=
  ∀ n, (P3809448064066765244.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P9302279685613224427

`record[A000002(n+2)²+n-2]`
-/

namespace A013948.P9302279685613224427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 2) ^ 2 + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013948.P9302279685613224427

namespace A013948

/-- `record[A000002(n+2)²+n-2]` -/
def P9302279685613224427.Spec : Prop :=
  ∀ n, P9302279685613224427.a n = A013948 (n + 1)

end A013948

/-! ## A013948.P1793719576997823139

`eq[1, A088569(n+1)]+2`
-/

namespace A013948.P1793719576997823139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A013948.P1793719576997823139

namespace A013948

/-- `eq[1, A088569(n+1)]+2` -/
def P1793719576997823139.Spec : Prop :=
  ∀ n, (P1793719576997823139.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P5218164231705764141

`eq[1, A157686(n+1)]+2`
-/

namespace A013948.P5218164231705764141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A013948.P5218164231705764141

namespace A013948

/-- `eq[1, A157686(n+1)]+2` -/
def P5218164231705764141.Spec : Prop :=
  ∀ n, (P5218164231705764141.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P1113200728477612101

`lt[1, A078880(n+1)]+2`
-/

namespace A013948.P1113200728477612101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A013948.P1113200728477612101

namespace A013948

/-- `lt[1, A078880(n+1)]+2` -/
def P1113200728477612101.Spec : Prop :=
  ∀ n, (P1113200728477612101.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P9755044530035928239

`eq[1, ∑[A054354(n+1)]]+2`
-/

namespace A013948.P9755044530035928239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A013948.P9755044530035928239

namespace A013948

/-- `eq[1, ∑[A054354(n+1)]]+2` -/
def P9755044530035928239.Spec : Prop :=
  ∀ n, (P9755044530035928239.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P13019930256370199324

`eq[1, A049705(n+1)]+1`
-/

namespace A013948.P13019930256370199324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013948.P13019930256370199324

namespace A013948

/-- `eq[1, A049705(n+1)]+1` -/
def P13019930256370199324.Spec : Prop :=
  ∀ n, (P13019930256370199324.a n : ℤ) = A013948 (n + 1)

end A013948

/-! ## A013948.P16038043616054437678

`eq[1, Δ[A294448(n+1)]]+2`
-/

namespace A013948.P16038043616054437678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A013948.P16038043616054437678

namespace A013948

/-- `eq[1, Δ[A294448(n+1)]]+2` -/
def P16038043616054437678.Spec : Prop :=
  ∀ n, (P16038043616054437678.a n : ℤ) = A013948 (n + 1)

end A013948

/-!
# A013949: Start with 1, apply 1->12, 21->21, 22->21, 2->2 (for final 2), take limit.

The programs for A013949, there is no canonical definition to state claims against.
-/

/-! ## A013949.P6024414889187297243

`char[A013952(n+1)-1]+1`
-/

namespace A013949.P6024414889187297243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013952 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A013949.P6024414889187297243

/-! ## A013949.P17170326298789084708

`2-char[A013951(n+1)-1]`
-/

namespace A013949.P17170326298789084708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013951 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A013949.P17170326298789084708

/-! ## A013949.P14253274627224538272

`gcd(2, A013951(A008619(n))+n)`
-/

namespace A013949.P14253274627224538272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A013951 (A008619 n).toNat + (n : ℤ))

end

end A013949.P14253274627224538272

/-! ## A013949.P3868187124646445794

`A040001(A013951(A008619(n))+n)`
-/

namespace A013949.P3868187124646445794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A013951 (A008619 n).toNat + (n : ℤ)).toNat

end

end A013949.P3868187124646445794

/-! ## A013949.P769396544952649255

`∏{p}[A013951(A008619(n))+n, A001511(#)]`
-/

namespace A013949.P769396544952649255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013951 (A008619 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001511 p

end

end A013949.P769396544952649255

/-!
# A013950: Start with 1, apply 1->12, 21->21, 22->21, 2->2 (for final 2); a(n) = length of n-th term.

The programs for A013950, there is no canonical definition to state claims against.
-/

/-! ## A013950.P4617948647963813559

`A000196(2*A336758(n))`
-/

namespace A013950.P4617948647963813559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A336758 n).toNat

end

end A013950.P4617948647963813559

/-! ## A013950.P10435383116203966278

`A135660(9*A221944(n))`
-/

namespace A013950.P10435383116203966278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (9 * A221944 n).toNat

end

end A013950.P10435383116203966278

/-! ## A013950.P8459131580039076989

`A000196(A336758(n)+A336758(n)-1)`
-/

namespace A013950.P8459131580039076989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A336758 n + (A336758 n - 1)).toNat

end

end A013950.P8459131580039076989

/-! ## A013950.P8054347644952835500

`A000196(A336758(n)-(1-A336758(n)))`
-/

namespace A013950.P8054347644952835500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A336758 n - (1 - A336758 n)).toNat

end

end A013950.P8054347644952835500

/-! ## A013950.P9970614684002162080

`A055642(A191304(n+1))+A039900(n)`
-/

namespace A013950.P9970614684002162080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A191304 (n + 1)).toNat + A039900 n

end

end A013950.P9970614684002162080

/-!
# A013951: Start with 1, apply 1->12, 21->21, 22->21, 2->2 (for final 2); take limit; note positions of 1's.

The programs for A013951, there is no canonical definition to state claims against.
-/

/-! ## A013951.P1102158462069994365

`record[xor(3, n)]-A013952(n+1)`
-/

namespace A013951.P1102158462069994365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A013952 (n + 1)

end

end A013951.P1102158462069994365

/-! ## A013951.P8603830758971081229

`A004767(n)-A013952(n+1)`
-/

namespace A013951.P8603830758971081229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A013952 (n + 1)

end

end A013951.P8603830758971081229

/-! ## A013951.P15599712175788037472

`A016813(n)+2-A013952(n+1)`
-/

namespace A013951.P15599712175788037472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + (2 - A013952 (n + 1))

end

end A013951.P15599712175788037472

/-! ## A013951.P4777267420176673078

`xor(A013952(n+1), A088837(n+1))`
-/

namespace A013951.P4777267420176673078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A013952 (n + 1)) (A088837 (n + 1))

end

end A013951.P4777267420176673078

/-! ## A013951.P11940356547023799679

`eq[1, A013949(n+1)]+1`
-/

namespace A013951.P11940356547023799679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013951.P11940356547023799679

/-! ## A013951.P8393392907292829174

`A013949(2*n+1)+2*n`
-/

namespace A013951.P8393392907292829174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013949 (2 * n + 1) + (2 * n : ℤ)

end

end A013951.P8393392907292829174

/-! ## A013951.P8342301470441310275

`A014681(A013952(n+1))`
-/

namespace A013951.P8342301470441310275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A013952 (n + 1)).toNat

end

end A013951.P8342301470441310275

/-! ## A013951.P3558809694809990381

`A002378(2*n+1)/A013952(n+1)`
-/

namespace A013951.P3558809694809990381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (2 * n + 1) : ℚ) / (A013952 (n + 1) : ℚ)

end

end A013951.P3558809694809990381

/-! ## A013951.P6416774525324825504

`A005408(n)+A000035(A013952(n+1))`
-/

namespace A013951.P6416774525324825504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A000035 (A013952 (n + 1)).toNat

end

end A013951.P6416774525324825504

/-! ## A013951.P10528110355970661700

`A028242(A013952(n+1)+1)+n`
-/

namespace A013951.P10528110355970661700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A013952 (n + 1) + 1).toNat + (n : ℤ)

end

end A013951.P10528110355970661700

/-! ## A013951.P7356665758995780918

`A121496(2*A013952(n+1))`
-/

namespace A013951.P7356665758995780918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121496 (2 * A013952 (n + 1)).toNat

end

end A013951.P7356665758995780918

/-!
# A013952: Start with 1, apply 1->12, 21->21, 22->21, 2->2 (for final 2); take limit; note positions of 2's.

The programs for A013952, there is no canonical definition to state claims against.
-/

/-! ## A013952.P6338204755029833178

`abs(xor(1, -A013951(n+1)))`
-/

namespace A013952.P6338204755029833178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A013951 (n + 1))|

end

end A013952.P6338204755029833178

/-! ## A013952.P10128002458176849747

`A004767(n)-A013951(n+1)`
-/

namespace A013952.P10128002458176849747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A013951 (n + 1)

end

end A013952.P10128002458176849747

/-! ## A013952.P9265680587367161290

`Δ[A014105(n)]-A013951(n+1)`
-/

namespace A013952.P9265680587367161290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A013951 (n + 1)

end

end A013952.P9265680587367161290

/-! ## A013952.P12332556464581365220

`xor(A013951(n+1), A088837(n+1))`
-/

namespace A013952.P12332556464581365220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A013951 (n + 1)) (A088837 (n + 1))

end

end A013952.P12332556464581365220

/-! ## A013952.P10527886536815193818

`lt[1, A013949(n+1)]+1`
-/

namespace A013952.P10527886536815193818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A013952.P10527886536815193818

/-! ## A013952.P804459943227615062

`A013949(2*(n+1))+2*n`
-/

namespace A013952.P804459943227615062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013949 (2 * (n + 1)) + (2 * n : ℤ)

end

end A013952.P804459943227615062

/-! ## A013952.P11099943026271067669

`A014681(A013951(n+1))`
-/

namespace A013952.P11099943026271067669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A013951 (n + 1)).toNat

end

end A013952.P11099943026271067669

/-! ## A013952.P16477747230992888479

`A005408(2*n+1)-A013951(n+1)`
-/

namespace A013952.P16477747230992888479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * n + 1) - A013951 (n + 1)

end

end A013952.P16477747230992888479

/-! ## A013952.P12406960137129357367

`A133310(A013951(n+1)+n)`
-/

namespace A013952.P12406960137129357367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A013951 (n + 1) + (n : ℤ)).toNat

end

end A013952.P12406960137129357367

/-!
# A013953: Expansion of the modular form of level 4 and weight 1/2.

The programs for A013953, there is no canonical definition to state claims against.
-/

/-! ## A013953.P14405970271331243967

`A152793(abs(a(and(n, n-1))+1))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A013953.P14405970271331243967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A152793 |a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1|.toNat

end

end A013953.P14405970271331243967

/-!
# A013954: a(n) = sigma_6(n), the sum of the 6th powers of the divisors of n.

The programs for A013954, the canonical program `A013954.P1945713441694754180` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013954 has offset 1).

The definition of A013954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013954.P1945713441694754180

`∑{d}[n+1, #^6]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013954

/-- `∑{d}[n+1, #^6]` -/
def P1945713441694754180.Spec : Prop :=
  ∀ n, (P1945713441694754180.a n : ℤ) = A013954 (n + 1)

theorem P1945713441694754180.correct : P1945713441694754180.Spec := by
  intro n
  simp only [A013954, Nat.add_sub_cancel]

end A013954

/-! ## A013954.P2143309455401880540

`floor(∑{d}[n+1, root(#, 1/6)])`
-/

namespace A013954.P2143309455401880540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ))⌋

end

end A013954.P2143309455401880540

namespace A013954

/-- `floor(∑{d}[n+1, root(#, 1/6)])` -/
def P2143309455401880540.Spec : Prop :=
  ∀ n, P2143309455401880540.a n = A013954 (n + 1)

end A013954

/-! ## A013954.P15524754311060158775

`round(∑{d}[n+1, root(#, 1/6)])`
-/

namespace A013954.P15524754311060158775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ)))

end

end A013954.P15524754311060158775

namespace A013954

/-- `round(∑{d}[n+1, root(#, 1/6)])` -/
def P15524754311060158775.Spec : Prop :=
  ∀ n, P15524754311060158775.a n = A013954 (n + 1)

end A013954

/-! ## A013954.P9848917573139163295

`A386777(n+1)/(n+1)²`
-/

namespace A013954.P9848917573139163295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386777 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A013954.P9848917573139163295

namespace A013954

/-- `A386777(n+1)/(n+1)²` -/
def P9848917573139163295.Spec : Prop :=
  ∀ n, P9848917573139163295.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P16354541006038398078

`A386780(n+1)/(n+1)^3`
-/

namespace A013954.P16354541006038398078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386780 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A013954.P16354541006038398078

namespace A013954

/-- `A386780(n+1)/(n+1)^3` -/
def P16354541006038398078.Spec : Prop :=
  ∀ n, P16354541006038398078.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P16500760423685082758

`A386786(n+1)/(n+1)²²`
-/

namespace A013954.P16500760423685082758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386786 (n + 1) : ℚ) / (((n + 1) ^ 2) ^ 2 : ℚ)

end

end A013954.P16500760423685082758

namespace A013954

/-- `A386786(n+1)/(n+1)²²` -/
def P16500760423685082758.Spec : Prop :=
  ∀ n, P16500760423685082758.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P5874423288651404057

`∑{d}[n+1, A131472(#)]-∑{d}[n+1, #]`
-/

namespace A013954.P5874423288651404057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131472 d - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A013954.P5874423288651404057

namespace A013954

/-- `∑{d}[n+1, A131472(#)]-∑{d}[n+1, #]` -/
def P5874423288651404057.Spec : Prop :=
  ∀ n, P5874423288651404057.a n = A013954 (n + 1)

end A013954

/-! ## A013954.P3243017346193175463

`∑{d}[n+1, A131473(#)]+A000203(n+1)`
-/

namespace A013954.P3243017346193175463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131473 d + A000203 (n + 1)

end

end A013954.P3243017346193175463

namespace A013954

/-- `∑{d}[n+1, A131473(#)]+A000203(n+1)` -/
def P3243017346193175463.Spec : Prop :=
  ∀ n, P3243017346193175463.a n = A013954 (n + 1)

end A013954

/-! ## A013954.P6569880024828009183

`A001157(n+1)/A386745(n+1)*A386777(n+1)`
-/

namespace A013954.P6569880024828009183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A386745 (n + 1) : ℚ) * (A386777 (n + 1) : ℚ)

end

end A013954.P6569880024828009183

namespace A013954

/-- `A001157(n+1)/A386745(n+1)*A386777(n+1)` -/
def P6569880024828009183.Spec : Prop :=
  ∀ n, P6569880024828009183.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P471936661399587214

`A013956(n+1)*A386777(n+1)/A386778(n+1)`
-/

namespace A013954.P471936661399587214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013956 (n + 1) * A386777 (n + 1) : ℚ) / (A386778 (n + 1) : ℚ)

end

end A013954.P471936661399587214

namespace A013954

/-- `A013956(n+1)*A386777(n+1)/A386778(n+1)` -/
def P471936661399587214.Spec : Prop :=
  ∀ n, P471936661399587214.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P391966941632472979

`A328259(n+1)*A386780(n+1)/A386783(n+1)`
-/

namespace A013954.P391966941632472979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328259 (n + 1) * A386780 (n + 1) : ℚ) / (A386783 (n + 1) : ℚ)

end

end A013954.P391966941632472979

namespace A013954

/-- `A328259(n+1)*A386780(n+1)/A386783(n+1)` -/
def P391966941632472979.Spec : Prop :=
  ∀ n, P391966941632472979.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P10730254350848171886

`A386745(n+1)*A386777(n+1)/A386783(n+1)`
-/

namespace A013954.P10730254350848171886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386745 (n + 1) * A386777 (n + 1) : ℚ) / (A386783 (n + 1) : ℚ)

end

end A013954.P10730254350848171886

namespace A013954

/-- `A386745(n+1)*A386777(n+1)/A386783(n+1)` -/
def P10730254350848171886.Spec : Prop :=
  ∀ n, P10730254350848171886.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P11988268893722521052

`A386777(n+1)*A386777(n+1)/A386786(n+1)`
-/

namespace A013954.P11988268893722521052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386777 (n + 1) * A386777 (n + 1) : ℚ) / (A386786 (n + 1) : ℚ)

end

end A013954.P11988268893722521052

namespace A013954

/-- `A386777(n+1)*A386777(n+1)/A386786(n+1)` -/
def P11988268893722521052.Spec : Prop :=
  ∀ n, P11988268893722521052.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P2155491283321754942

`A386750(n+1)/(n+1)`
-/

namespace A013954.P2155491283321754942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386750 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A013954.P2155491283321754942

namespace A013954

/-- `A386750(n+1)/(n+1)` -/
def P2155491283321754942.Spec : Prop :=
  ∀ n, P2155491283321754942.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P17766543779691122765

`A001157(n+1)/A386746(n+1)*A386780(n+1)`
-/

namespace A013954.P17766543779691122765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A386746 (n + 1) : ℚ) * (A386780 (n + 1) : ℚ)

end

end A013954.P17766543779691122765

namespace A013954

/-- `A001157(n+1)/A386746(n+1)*A386780(n+1)` -/
def P17766543779691122765.Spec : Prop :=
  ∀ n, P17766543779691122765.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P14103965737636023404

`A001159(n+1)/A386747(n+1)*A386777(n+1)`
-/

namespace A013954.P14103965737636023404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001159 (n + 1) : ℚ) / (A386747 (n + 1) : ℚ) * (A386777 (n + 1) : ℚ)

end

end A013954.P14103965737636023404

namespace A013954

/-- `A001159(n+1)/A386747(n+1)*A386777(n+1)` -/
def P14103965737636023404.Spec : Prop :=
  ∀ n, P14103965737636023404.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P8187285152198132616

`A328259(n+1)/A386746(n+1)*A386777(n+1)`
-/

namespace A013954.P8187285152198132616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328259 (n + 1) : ℚ) / (A386746 (n + 1) : ℚ) * (A386777 (n + 1) : ℚ)

end

end A013954.P8187285152198132616

namespace A013954

/-- `A328259(n+1)/A386746(n+1)*A386777(n+1)` -/
def P8187285152198132616.Spec : Prop :=
  ∀ n, P8187285152198132616.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P2258559598448373779

`A386749(n+1)/A386748(n+1)*A386777(n+1)`
-/

namespace A013954.P2258559598448373779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386749 (n + 1) : ℚ) / (A386748 (n + 1) : ℚ) * (A386777 (n + 1) : ℚ)

end

end A013954.P2258559598448373779

namespace A013954

/-- `A386749(n+1)/A386748(n+1)*A386777(n+1)` -/
def P2258559598448373779.Spec : Prop :=
  ∀ n, P2258559598448373779.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P10339030969471013323

`A386747(n+1)*A386777(n+1)/A386784(n+1)`
-/

namespace A013954.P10339030969471013323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386747 (n + 1) * A386777 (n + 1) : ℚ) / (A386784 (n + 1) : ℚ)

end

end A013954.P10339030969471013323

namespace A013954

/-- `A386747(n+1)*A386777(n+1)/A386784(n+1)` -/
def P10339030969471013323.Spec : Prop :=
  ∀ n, P10339030969471013323.a n = (A013954 (n + 1) : ℚ)

end A013954

/-! ## A013954.P5644886848210525378

`A386749(n+1)*A386780(n+1)/A386784(n+1)`
-/

namespace A013954.P5644886848210525378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386749 (n + 1) * A386780 (n + 1) : ℚ) / (A386784 (n + 1) : ℚ)

end

end A013954.P5644886848210525378

namespace A013954

/-- `A386749(n+1)*A386780(n+1)/A386784(n+1)` -/
def P5644886848210525378.Spec : Prop :=
  ∀ n, P5644886848210525378.a n = (A013954 (n + 1) : ℚ)

end A013954

/-!
# A013955: a(n) = sigma_7(n), the sum of the 7th powers of the divisors of n.

The programs for A013955, the canonical program `A013955.P2753529506480004326` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013955 has offset 1).

The definition of A013955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013955.P2753529506480004326

`∑{d}[n+1, #^7]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013955

/-- `∑{d}[n+1, #^7]` -/
def P2753529506480004326.Spec : Prop :=
  ∀ n, (P2753529506480004326.a n : ℤ) = A013955 (n + 1)

theorem P2753529506480004326.correct : P2753529506480004326.Spec := by
  intro n
  simp only [A013955, Nat.add_sub_cancel]

end A013955

/-! ## A013955.P7781772727856522585

`A386781(n+1)/(n+1)^3`
-/

namespace A013955.P7781772727856522585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386781 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A013955.P7781772727856522585

namespace A013955

/-- `A386781(n+1)/(n+1)^3` -/
def P7781772727856522585.Spec : Prop :=
  ∀ n, P7781772727856522585.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P9043577562126936452

`2*A096961(n+1)-A321552(n+1)`
-/

namespace A013955.P9043577562126936452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096961 (n + 1) - A321552 (n + 1)

end

end A013955.P9043577562126936452

namespace A013955

/-- `2*A096961(n+1)-A321552(n+1)` -/
def P9043577562126936452.Spec : Prop :=
  ∀ n, P9043577562126936452.a n = A013955 (n + 1)

end A013955

/-! ## A013955.P5457153932230367326

`A000203(n+1)*A008410(n+1)/A083728(n+1)`
-/

namespace A013955.P5457153932230367326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A008410 (n + 1) : ℚ) / (A083728 (n + 1) : ℚ)

end

end A013955.P5457153932230367326

namespace A013955

/-- `A000203(n+1)*A008410(n+1)/A083728(n+1)` -/
def P5457153932230367326.Spec : Prop :=
  ∀ n, P5457153932230367326.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P14098056945356941727

`A328259(n+1)*A386781(n+1)/A386783(n+1)`
-/

namespace A013955.P14098056945356941727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328259 (n + 1) * A386781 (n + 1) : ℚ) / (A386783 (n + 1) : ℚ)

end

end A013955.P14098056945356941727

namespace A013955

/-- `A328259(n+1)*A386781(n+1)/A386783(n+1)` -/
def P14098056945356941727.Spec : Prop :=
  ∀ n, P14098056945356941727.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P15620894862386471966

`A282060(n+1)/(n+1)`
-/

namespace A013955.P15620894862386471966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282060 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A013955.P15620894862386471966

namespace A013955

/-- `A282060(n+1)/(n+1)` -/
def P15620894862386471966.Spec : Prop :=
  ∀ n, P15620894862386471966.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P12011276194314070674

`A282753(n+1)/(n+1)²`
-/

namespace A013955.P12011276194314070674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282753 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A013955.P12011276194314070674

namespace A013955

/-- `A282753(n+1)/(n+1)²` -/
def P12011276194314070674.Spec : Prop :=
  ∀ n, P12011276194314070674.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P11266526305409545365

`A386787(n+1)/(n+1)²²`
-/

namespace A013955.P11266526305409545365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386787 (n + 1) : ℚ) / (((n + 1) ^ 2) ^ 2 : ℚ)

end

end A013955.P11266526305409545365

namespace A013955

/-- `A386787(n+1)/(n+1)²²` -/
def P11266526305409545365.Spec : Prop :=
  ∀ n, P11266526305409545365.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P17223691570728530960

`A013954(n+1)*A282753(n+1)/A386777(n+1)`
-/

namespace A013955.P17223691570728530960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013954 (n + 1) * A282753 (n + 1) : ℚ) / (A386777 (n + 1) : ℚ)

end

end A013955.P17223691570728530960

namespace A013955

/-- `A013954(n+1)*A282753(n+1)/A386777(n+1)` -/
def P17223691570728530960.Spec : Prop :=
  ∀ n, P17223691570728530960.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P6432944772415227882

`A013956(n+1)*A282753(n+1)/A386778(n+1)`
-/

namespace A013955.P6432944772415227882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013956 (n + 1) * A282753 (n + 1) : ℚ) / (A386778 (n + 1) : ℚ)

end

end A013955.P6432944772415227882

namespace A013955

/-- `A013956(n+1)*A282753(n+1)/A386778(n+1)` -/
def P6432944772415227882.Spec : Prop :=
  ∀ n, P6432944772415227882.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P14490938477534919204

`A001157(n+1)/A386746(n+1)*A386781(n+1)`
-/

namespace A013955.P14490938477534919204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A386746 (n + 1) : ℚ) * (A386781 (n + 1) : ℚ)

end

end A013955.P14490938477534919204

namespace A013955

/-- `A001157(n+1)/A386746(n+1)*A386781(n+1)` -/
def P14490938477534919204.Spec : Prop :=
  ∀ n, P14490938477534919204.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P9940399028711884483

`A001159(n+1)/A386748(n+1)*A386781(n+1)`
-/

namespace A013955.P9940399028711884483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001159 (n + 1) : ℚ) / (A386748 (n + 1) : ℚ) * (A386781 (n + 1) : ℚ)

end

end A013955.P9940399028711884483

namespace A013955

/-- `A001159(n+1)/A386748(n+1)*A386781(n+1)` -/
def P9940399028711884483.Spec : Prop :=
  ∀ n, P9940399028711884483.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P1922412871124722281

`A013954(n+1)/A386786(n+1)*A386787(n+1)`
-/

namespace A013955.P1922412871124722281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013954 (n + 1) : ℚ) / (A386786 (n + 1) : ℚ) * (A386787 (n + 1) : ℚ)

end

end A013955.P1922412871124722281

namespace A013955

/-- `A013954(n+1)/A386786(n+1)*A386787(n+1)` -/
def P1922412871124722281.Spec : Prop :=
  ∀ n, P1922412871124722281.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P6615384131441527848

`A282099(n+1)/A280025(n+1)*A282753(n+1)`
-/

namespace A013955.P6615384131441527848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282099 (n + 1) : ℚ) / (A280025 (n + 1) : ℚ) * (A282753 (n + 1) : ℚ)

end

end A013955.P6615384131441527848

namespace A013955

/-- `A282099(n+1)/A280025(n+1)*A282753(n+1)` -/
def P6615384131441527848.Spec : Prop :=
  ∀ n, P6615384131441527848.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P16679583145230244944

`A282751(n+1)*A282753(n+1)/A386785(n+1)`
-/

namespace A013955.P16679583145230244944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282751 (n + 1) * A282753 (n + 1) : ℚ) / (A386785 (n + 1) : ℚ)

end

end A013955.P16679583145230244944

namespace A013955

/-- `A282751(n+1)*A282753(n+1)/A386785(n+1)` -/
def P16679583145230244944.Spec : Prop :=
  ∀ n, P16679583145230244944.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P6287535937885097774

`A282753(n+1)*A282753(n+1)/A386787(n+1)`
-/

namespace A013955.P6287535937885097774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282753 (n + 1) * A282753 (n + 1) : ℚ) / (A386787 (n + 1) : ℚ)

end

end A013955.P6287535937885097774

namespace A013955

/-- `A282753(n+1)*A282753(n+1)/A386787(n+1)` -/
def P6287535937885097774.Spec : Prop :=
  ∀ n, P6287535937885097774.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P13216167373202906914

`A386749(n+1)*A386781(n+1)/A386784(n+1)`
-/

namespace A013955.P13216167373202906914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386749 (n + 1) * A386781 (n + 1) : ℚ) / (A386784 (n + 1) : ℚ)

end

end A013955.P13216167373202906914

namespace A013955

/-- `A386749(n+1)*A386781(n+1)/A386784(n+1)` -/
def P13216167373202906914.Spec : Prop :=
  ∀ n, P13216167373202906914.a n = (A013955 (n + 1) : ℚ)

end A013955

/-! ## A013955.P5044982562619691492

`A008410(n+1)/A008410(A158416(2*n+1))`
-/

namespace A013955.P5044982562619691492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008410 (n + 1) : ℚ) / (A008410 (A158416 (2 * n + 1)).toNat : ℚ)

end

end A013955.P5044982562619691492

namespace A013955

/-- `A008410(n+1)/A008410(A158416(2*n+1))` -/
def P5044982562619691492.Spec : Prop :=
  ∀ n, P5044982562619691492.a n = (A013955 (n + 1) : ℚ)

end A013955

/-!
# A013956: a(n) = sigma_8(n), the sum of the 8th powers of the divisors of n.

The programs for A013956, the canonical program `A013956.P1969114953132597320` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013956 has offset 1).

The definition of A013956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013956.P1969114953132597320

`∑{d}[n+1, #^8]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013956

/-- `∑{d}[n+1, #^8]` -/
def P1969114953132597320.Spec : Prop :=
  ∀ n, (P1969114953132597320.a n : ℤ) = A013956 (n + 1)

theorem P1969114953132597320.correct : P1969114953132597320.Spec := by
  intro n
  simp only [A013956, Nat.add_sub_cancel]

end A013956

/-! ## A013956.P6849700616016275037

`A386778(n+1)/(n+1)²`
-/

namespace A013956.P6849700616016275037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386778 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A013956.P6849700616016275037

namespace A013956

/-- `A386778(n+1)/(n+1)²` -/
def P6849700616016275037.Spec : Prop :=
  ∀ n, P6849700616016275037.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P14799013532572037303

`A386782(n+1)/(n+1)^3`
-/

namespace A013956.P14799013532572037303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386782 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A013956.P14799013532572037303

namespace A013956

/-- `A386782(n+1)/(n+1)^3` -/
def P14799013532572037303.Spec : Prop :=
  ∀ n, P14799013532572037303.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P5541977895409335282

`A386788(n+1)/((n+1)²*(n+1)²)`
-/

namespace A013956.P5541977895409335282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386788 (n + 1) : ℚ) / ((n + 1) ^ 2 * (n + 1) ^ 2 : ℚ)

end

end A013956.P5541977895409335282

namespace A013956

/-- `A386788(n+1)/((n+1)²*(n+1)²)` -/
def P5541977895409335282.Spec : Prop :=
  ∀ n, P5541977895409335282.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P6031684415187114939

`A001157(n+1)/A386745(n+1)*A386778(n+1)`
-/

namespace A013956.P6031684415187114939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A386745 (n + 1) : ℚ) * (A386778 (n + 1) : ℚ)

end

end A013956.P6031684415187114939

namespace A013956

/-- `A001157(n+1)/A386745(n+1)*A386778(n+1)` -/
def P6031684415187114939.Spec : Prop :=
  ∀ n, P6031684415187114939.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P5667557907419727003

`A013954(n+1)/A386777(n+1)*A386778(n+1)`
-/

namespace A013956.P5667557907419727003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013954 (n + 1) : ℚ) / (A386777 (n + 1) : ℚ) * (A386778 (n + 1) : ℚ)

end

end A013956.P5667557907419727003

namespace A013956

/-- `A013954(n+1)/A386777(n+1)*A386778(n+1)` -/
def P5667557907419727003.Spec : Prop :=
  ∀ n, P5667557907419727003.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P3476114449151517390

`A386745(n+1)*A386778(n+1)/A386783(n+1)`
-/

namespace A013956.P3476114449151517390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386745 (n + 1) * A386778 (n + 1) : ℚ) / (A386783 (n + 1) : ℚ)

end

end A013956.P3476114449151517390

namespace A013956

/-- `A386745(n+1)*A386778(n+1)/A386783(n+1)` -/
def P3476114449151517390.Spec : Prop :=
  ∀ n, P3476114449151517390.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P13157778591405561626

`A386751(n+1)/(n+1)`
-/

namespace A013956.P13157778591405561626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386751 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A013956.P13157778591405561626

namespace A013956

/-- `A386751(n+1)/(n+1)` -/
def P13157778591405561626.Spec : Prop :=
  ∀ n, P13157778591405561626.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P8423893345604144305

`A001159(n+1)/A386747(n+1)*A386778(n+1)`
-/

namespace A013956.P8423893345604144305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001159 (n + 1) : ℚ) / (A386747 (n + 1) : ℚ) * (A386778 (n + 1) : ℚ)

end

end A013956.P8423893345604144305

namespace A013956

/-- `A001159(n+1)/A386747(n+1)*A386778(n+1)` -/
def P8423893345604144305.Spec : Prop :=
  ∀ n, P8423893345604144305.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P17242320518470654170

`A001157(n+1)/A386746(n+1)*A386782(n+1)`
-/

namespace A013956.P17242320518470654170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A386746 (n + 1) : ℚ) * (A386782 (n + 1) : ℚ)

end

end A013956.P17242320518470654170

namespace A013956

/-- `A001157(n+1)/A386746(n+1)*A386782(n+1)` -/
def P17242320518470654170.Spec : Prop :=
  ∀ n, P17242320518470654170.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P12003102789351942287

`A328259(n+1)/A386746(n+1)*A386778(n+1)`
-/

namespace A013956.P12003102789351942287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328259 (n + 1) : ℚ) / (A386746 (n + 1) : ℚ) * (A386778 (n + 1) : ℚ)

end

end A013956.P12003102789351942287

namespace A013956

/-- `A328259(n+1)/A386746(n+1)*A386778(n+1)` -/
def P12003102789351942287.Spec : Prop :=
  ∀ n, P12003102789351942287.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P9296444426266851143

`A386749(n+1)/A386748(n+1)*A386778(n+1)`
-/

namespace A013956.P9296444426266851143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386749 (n + 1) : ℚ) / (A386748 (n + 1) : ℚ) * (A386778 (n + 1) : ℚ)

end

end A013956.P9296444426266851143

namespace A013956

/-- `A386749(n+1)/A386748(n+1)*A386778(n+1)` -/
def P9296444426266851143.Spec : Prop :=
  ∀ n, P9296444426266851143.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P16358571713861378466

`A386747(n+1)*A386778(n+1)/A386784(n+1)`
-/

namespace A013956.P16358571713861378466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386747 (n + 1) * A386778 (n + 1) : ℚ) / (A386784 (n + 1) : ℚ)

end

end A013956.P16358571713861378466

namespace A013956

/-- `A386747(n+1)*A386778(n+1)/A386784(n+1)` -/
def P16358571713861378466.Spec : Prop :=
  ∀ n, P16358571713861378466.a n = (A013956 (n + 1) : ℚ)

end A013956

/-! ## A013956.P14128779254877902014

`A351309((n+1)²)`
-/

namespace A013956.P14128779254877902014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351309 ((n + 1) ^ 2)

end

end A013956.P14128779254877902014

namespace A013956

/-- `A351309((n+1)²)` -/
def P14128779254877902014.Spec : Prop :=
  ∀ n, P14128779254877902014.a n = A013956 (n + 1)

end A013956

/-! ## A013956.P1415583536311508627

`record[A351309(n+1)]`
-/

namespace A013956.P1415583536311508627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013956.P1415583536311508627

namespace A013956

/-- `record[A351309(n+1)]` -/
def P1415583536311508627.Spec : Prop :=
  ∀ n, P1415583536311508627.a n = A013956 (n + 1)

end A013956

/-!
# A013957: a(n) = sigma_9(n), the sum of the 9th powers of the divisors of n.

The programs for A013957, the canonical program `A013957.P15889606189452676701` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013957 has offset 1).

The definition of A013957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013957.P15889606189452676701

`∑{d}[n+1, #^9]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013957

/-- `∑{d}[n+1, #^9]` -/
def P15889606189452676701.Spec : Prop :=
  ∀ n, (P15889606189452676701.a n : ℤ) = A013957 (n + 1)

theorem P15889606189452676701.correct : P15889606189452676701.Spec := by
  intro n
  simp only [A013957, Nat.add_sub_cancel]

end A013957

/-! ## A013957.P6365494846432198433

`2*A096962(n+1)-A321554(n+1)`
-/

namespace A013957.P6365494846432198433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096962 (n + 1) - A321554 (n + 1)

end

end A013957.P6365494846432198433

namespace A013957

/-- `2*A096962(n+1)-A321554(n+1)` -/
def P6365494846432198433.Spec : Prop :=
  ∀ n, P6365494846432198433.a n = A013957 (n + 1)

end A013957

/-! ## A013957.P18140959273364163661

`A282254(n+1)/(n+1)`
-/

namespace A013957.P18140959273364163661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282254 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A013957.P18140959273364163661

namespace A013957

/-- `A282254(n+1)/(n+1)` -/
def P18140959273364163661.Spec : Prop :=
  ∀ n, P18140959273364163661.a n = (A013957 (n + 1) : ℚ)

end A013957

/-! ## A013957.P15374893962014288087

`A280021(n+1)/(n+1)²`
-/

namespace A013957.P15374893962014288087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280021 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A013957.P15374893962014288087

namespace A013957

/-- `A280021(n+1)/(n+1)²` -/
def P15374893962014288087.Spec : Prop :=
  ∀ n, P15374893962014288087.a n = (A013957 (n + 1) : ℚ)

end A013957

/-! ## A013957.P11580875862892408737

`A064987(n+1)*A280021(n+1)/A282211(n+1)`
-/

namespace A013957.P11580875862892408737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) * A280021 (n + 1) : ℚ) / (A282211 (n + 1) : ℚ)

end

end A013957.P11580875862892408737

namespace A013957

/-- `A064987(n+1)*A280021(n+1)/A282211(n+1)` -/
def P11580875862892408737.Spec : Prop :=
  ∀ n, P11580875862892408737.a n = (A013957 (n + 1) : ℚ)

end A013957

/-! ## A013957.P1870264996863442922

`A280021(n+1)/A280022(n+1)*A282097(n+1)`
-/

namespace A013957.P1870264996863442922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280021 (n + 1) : ℚ) / (A280022 (n + 1) : ℚ) * (A282097 (n + 1) : ℚ)

end

end A013957.P1870264996863442922

namespace A013957

/-- `A280021(n+1)/A280022(n+1)*A282097(n+1)` -/
def P1870264996863442922.Spec : Prop :=
  ∀ n, P1870264996863442922.a n = (A013957 (n + 1) : ℚ)

end A013957

/-! ## A013957.P8836371465167498017

`A280021(n+1)/A280025(n+1)*A282099(n+1)`
-/

namespace A013957.P8836371465167498017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280021 (n + 1) : ℚ) / (A280025 (n + 1) : ℚ) * (A282099 (n + 1) : ℚ)

end

end A013957.P8836371465167498017

namespace A013957

/-- `A280021(n+1)/A280025(n+1)*A282099(n+1)` -/
def P8836371465167498017.Spec : Prop :=
  ∀ n, P8836371465167498017.a n = (A013957 (n + 1) : ℚ)

end A013957

/-! ## A013957.P10616388677503890107

`A280021(n+1)*A282050(n+1)/A282781(n+1)`
-/

namespace A013957.P10616388677503890107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280021 (n + 1) * A282050 (n + 1) : ℚ) / (A282781 (n + 1) : ℚ)

end

end A013957.P10616388677503890107

namespace A013957

/-- `A280021(n+1)*A282050(n+1)/A282781(n+1)` -/
def P10616388677503890107.Spec : Prop :=
  ∀ n, P10616388677503890107.a n = (A013957 (n + 1) : ℚ)

end A013957

/-!
# A013958: a(n) = sigma_10(n), the sum of the 10th powers of the divisors of n.

The programs for A013958, the canonical program `A013958.P12536282192446718632` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013958 has offset 1).

The definition of A013958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013958.P12536282192446718632

`∑{d}[n+1, #^10]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013958

/-- `∑{d}[n+1, #^10]` -/
def P12536282192446718632.Spec : Prop :=
  ∀ n, (P12536282192446718632.a n : ℤ) = A013958 (n + 1)

theorem P12536282192446718632.correct : P12536282192446718632.Spec := by
  intro n
  simp only [A013958, Nat.add_sub_cancel]

end A013958

/-! ## A013958.P16154185327477980353

`ceil(∑{d}[n+1, root(#, 1/10)])`
-/

namespace A013958.P16154185327477980353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / ((1 : ℚ) / 10 : ℝ))⌉

end

end A013958.P16154185327477980353

namespace A013958

/-- `ceil(∑{d}[n+1, root(#, 1/10)])` -/
def P16154185327477980353.Spec : Prop :=
  ∀ n, P16154185327477980353.a n = A013958 (n + 1)

end A013958

/-! ## A013958.P7499507942640140972

`∑[abs(Δ[∑{d}[n, #^10]])]`
-/

namespace A013958.P7499507942640140972
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d ^ 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013958.P7499507942640140972

namespace A013958

/-- `∑[abs(Δ[∑{d}[n, #^10]])]` -/
def P7499507942640140972.Spec : Prop :=
  ∀ n, P7499507942640140972.a n = A013958 (n + 1)

end A013958

/-! ## A013958.P8973075810947815298

`record[∑{d}[1-n, #^10]]`
-/

namespace A013958.P8973075810947815298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013958.P8973075810947815298

namespace A013958

/-- `record[∑{d}[1-n, #^10]]` -/
def P8973075810947815298.Spec : Prop :=
  ∀ n, (P8973075810947815298.a n : ℤ) = A013958 (n + 1)

end A013958

/-! ## A013958.P15956418498012146321

`A351310((n+1)²)`
-/

namespace A013958.P15956418498012146321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351310 ((n + 1) ^ 2)

end

end A013958.P15956418498012146321

namespace A013958

/-- `A351310((n+1)²)` -/
def P15956418498012146321.Spec : Prop :=
  ∀ n, P15956418498012146321.a n = A013958 (n + 1)

end A013958

/-! ## A013958.P2283949457597425974

`record[A351310(n+1)]`
-/

namespace A013958.P2283949457597425974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013958.P2283949457597425974

namespace A013958

/-- `record[A351310(n+1)]` -/
def P2283949457597425974.Spec : Prop :=
  ∀ n, P2283949457597425974.a n = A013958 (n + 1)

end A013958

/-!
# A013959: a(n) = sigma_11(n), the sum of the 11th powers of the divisors of n.

The programs for A013959, the canonical program `A013959.P7799579763572069354` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013959 has offset 1).

The definition of A013959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013959.P7799579763572069354

`∑{d}[n+1, #^11]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013959

/-- `∑{d}[n+1, #^11]` -/
def P7799579763572069354.Spec : Prop :=
  ∀ n, (P7799579763572069354.a n : ℤ) = A013959 (n + 1)

theorem P7799579763572069354.correct : P7799579763572069354.Spec := by
  intro n
  simp only [A013959, Nat.add_sub_cancel]

end A013959

/-! ## A013959.P643258712485327504

`A282548(n+1)/(n+1)`
-/

namespace A013959.P643258712485327504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282548 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A013959.P643258712485327504

namespace A013959

/-- `A282548(n+1)/(n+1)` -/
def P643258712485327504.Spec : Prop :=
  ∀ n, P643258712485327504.a n = (A013959 (n + 1) : ℚ)

end A013959

/-! ## A013959.P15743321075510254238

`2*A096963(n+1)-A321556(n+1)`
-/

namespace A013959.P15743321075510254238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096963 (n + 1) - A321556 (n + 1)

end

end A013959.P15743321075510254238

namespace A013959

/-- `2*A096963(n+1)-A321556(n+1)` -/
def P15743321075510254238.Spec : Prop :=
  ∀ n, P15743321075510254238.a n = A013959 (n + 1)

end A013959

/-! ## A013959.P9372908332855825234

`∑[abs(Δ[∑{d}[n, #^11]])]`
-/

namespace A013959.P9372908332855825234
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d ^ 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013959.P9372908332855825234

namespace A013959

/-- `∑[abs(Δ[∑{d}[n, #^11]])]` -/
def P9372908332855825234.Spec : Prop :=
  ∀ n, P9372908332855825234.a n = A013959 (n + 1)

end A013959

/-! ## A013959.P16256982238325812524

`-∑[-Δ[∑{d}[n, #^11]]]`
-/

namespace A013959.P16256982238325812524
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d ^ 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013959.P16256982238325812524

namespace A013959

/-- `-∑[-Δ[∑{d}[n, #^11]]]` -/
def P16256982238325812524.Spec : Prop :=
  ∀ n, P16256982238325812524.a n = A013959 (n + 1)

end A013959

/-! ## A013959.P8725740827675079898

`record[∑{d}[1-n, #^11]]`
-/

namespace A013959.P8725740827675079898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013959.P8725740827675079898

namespace A013959

/-- `record[∑{d}[1-n, #^11]]` -/
def P8725740827675079898.Spec : Prop :=
  ∀ n, (P8725740827675079898.a n : ℤ) = A013959 (n + 1)

end A013959

/-! ## A013959.P16755842152373009228

`A029828(n+1)/A029828(A055396(2*(n+1)))`
-/

namespace A013959.P16755842152373009228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029828 (n + 1) : ℚ) / (A029828 (A055396 (2 * (n + 1))).toNat : ℚ)

end

end A013959.P16755842152373009228

namespace A013959

/-- `A029828(n+1)/A029828(A055396(2*(n+1)))` -/
def P16755842152373009228.Spec : Prop :=
  ∀ n, P16755842152373009228.a n = (A013959 (n + 1) : ℚ)

end A013959

/-!
# A013960: a(n) = sigma_12(n), the sum of the 12th powers of the divisors of n.

The programs for A013960, the canonical program `A013960.P17333694357803592041` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013960 has offset 1).

The definition of A013960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013960.P17333694357803592041

`∑{d}[n+1, #^12]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013960

/-- `∑{d}[n+1, #^12]` -/
def P17333694357803592041.Spec : Prop :=
  ∀ n, (P17333694357803592041.a n : ℤ) = A013960 (n + 1)

theorem P17333694357803592041.correct : P17333694357803592041.Spec := by
  intro n
  simp only [A013960, Nat.add_sub_cancel]

end A013960

/-! ## A013960.P4163324292746707345

`record[∑{d}[n-1, #^12]]`
-/

namespace A013960.P4163324292746707345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013960.P4163324292746707345

namespace A013960

/-- `record[∑{d}[n-1, #^12]]` -/
def P4163324292746707345.Spec : Prop :=
  ∀ n, (P4163324292746707345.a n : ℤ) = A013960 (n + 1)

end A013960

/-! ## A013960.P5988394387506674549

`A351311((n+1)²)`
-/

namespace A013960.P5988394387506674549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351311 ((n + 1) ^ 2)

end

end A013960.P5988394387506674549

namespace A013960

/-- `A351311((n+1)²)` -/
def P5988394387506674549.Spec : Prop :=
  ∀ n, P5988394387506674549.a n = A013960 (n + 1)

end A013960

/-! ## A013960.P333199569453295716

`record[A351311(n+1)]`
-/

namespace A013960.P333199569453295716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013960.P333199569453295716

namespace A013960

/-- `record[A351311(n+1)]` -/
def P333199569453295716.Spec : Prop :=
  ∀ n, P333199569453295716.a n = A013960 (n + 1)

end A013960

/-! ## A013960.P4577809253203046511

`A109974(eq[13, A002260(n+1)])`
-/

namespace A013960.P4577809253203046511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013960.P4577809253203046511

namespace A013960

/-- `A109974(eq[13, A002260(n+1)])` -/
def P4577809253203046511.Spec : Prop :=
  ∀ n, P4577809253203046511.a n = A013960 (n + 1)

end A013960

/-!
# A013961: a(n) = sigma_13(n), the sum of the 13th powers of the divisors of n.

The programs for A013961, the canonical program `A013961.P9243315486547875240` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013961 has offset 1).

The definition of A013961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013961.P9243315486547875240

`∑{d}[n+1, #^13]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013961

/-- `∑{d}[n+1, #^13]` -/
def P9243315486547875240.Spec : Prop :=
  ∀ n, (P9243315486547875240.a n : ℤ) = A013961 (n + 1)

theorem P9243315486547875240.correct : P9243315486547875240.Spec := by
  intro n
  simp only [A013961, Nat.add_sub_cancel]

end A013961

/-! ## A013961.P8036100492659354927

`A282597(n+1)/(n+1)`
-/

namespace A013961.P8036100492659354927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282597 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A013961.P8036100492659354927

namespace A013961

/-- `A282597(n+1)/(n+1)` -/
def P8036100492659354927.Spec : Prop :=
  ∀ n, P8036100492659354927.a n = (A013961 (n + 1) : ℚ)

end A013961

/-! ## A013961.P5782234642414130858

`record[∑{d}[n-1, #^13]]`
-/

namespace A013961.P5782234642414130858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013961.P5782234642414130858

namespace A013961

/-- `record[∑{d}[n-1, #^13]]` -/
def P5782234642414130858.Spec : Prop :=
  ∀ n, (P5782234642414130858.a n : ℤ) = A013961 (n + 1)

end A013961

/-! ## A013961.P14215054021108478409

`A109974(eq[14, A002260(n+1)])`
-/

namespace A013961.P14215054021108478409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013961.P14215054021108478409

namespace A013961

/-- `A109974(eq[14, A002260(n+1)])` -/
def P14215054021108478409.Spec : Prop :=
  ∀ n, P14215054021108478409.a n = A013961 (n + 1)

end A013961

/-! ## A013961.P4282142200602447243

`record[ratio[A058550(A139600(n))]]`
-/

namespace A013961.P4282142200602447243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058550 (A139600 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013961.P4282142200602447243

namespace A013961

/-- `record[ratio[A058550(A139600(n))]]` -/
def P4282142200602447243.Spec : Prop :=
  ∀ n, P4282142200602447243.a n = (A013961 (n + 1) : ℚ)

end A013961

/-!
# A013962: a(n) = sigma_14(n), the sum of the 14th powers of the divisors of n.

The programs for A013962, the canonical program `A013962.P14944777800719908807` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013962 has offset 1).

The definition of A013962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013962.P14944777800719908807

`∑{d}[n+1, #^14]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013962

/-- `∑{d}[n+1, #^14]` -/
def P14944777800719908807.Spec : Prop :=
  ∀ n, (P14944777800719908807.a n : ℤ) = A013962 (n + 1)

theorem P14944777800719908807.correct : P14944777800719908807.Spec := by
  intro n
  simp only [A013962, Nat.add_sub_cancel]

end A013962

/-! ## A013962.P6385857437879025485

`A351313((n+1)²)`
-/

namespace A013962.P6385857437879025485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351313 ((n + 1) ^ 2)

end

end A013962.P6385857437879025485

namespace A013962

/-- `A351313((n+1)²)` -/
def P6385857437879025485.Spec : Prop :=
  ∀ n, P6385857437879025485.a n = A013962 (n + 1)

end A013962

/-! ## A013962.P11268888446943257386

`record[A351313(n+1)]`
-/

namespace A013962.P11268888446943257386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013962.P11268888446943257386

namespace A013962

/-- `record[A351313(n+1)]` -/
def P11268888446943257386.Spec : Prop :=
  ∀ n, P11268888446943257386.a n = A013962 (n + 1)

end A013962

/-! ## A013962.P12314314477232195537

`A109974(eq[14, A002262(n)])`
-/

namespace A013962.P12314314477232195537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013962.P12314314477232195537

namespace A013962

/-- `A109974(eq[14, A002262(n)])` -/
def P12314314477232195537.Spec : Prop :=
  ∀ n, P12314314477232195537.a n = A013962 (n + 1)

end A013962

/-! ## A013962.P778219969836813287

`A109974(eq[15, A002260(n+1)])`
-/

namespace A013962.P778219969836813287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013962.P778219969836813287

namespace A013962

/-- `A109974(eq[15, A002260(n+1)])` -/
def P778219969836813287.Spec : Prop :=
  ∀ n, P778219969836813287.a n = A013962 (n + 1)

end A013962

/-!
# A013963: a(n) = sigma_15(n), the sum of the 15th powers of the divisors of n.

The programs for A013963, the canonical program `A013963.P8541769979434672726` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013963 has offset 1).

The definition of A013963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013963.P8541769979434672726

`∑{d}[n+1, #^15]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013963

/-- `∑{d}[n+1, #^15]` -/
def P8541769979434672726.Spec : Prop :=
  ∀ n, (P8541769979434672726.a n : ℤ) = A013963 (n + 1)

theorem P8541769979434672726.correct : P8541769979434672726.Spec := by
  intro n
  simp only [A013963, Nat.add_sub_cancel]

end A013963

/-! ## A013963.P17339877510743296247

`A282777(n+1)/(n+1)`
-/

namespace A013963.P17339877510743296247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282777 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A013963.P17339877510743296247

namespace A013963

/-- `A282777(n+1)/(n+1)` -/
def P17339877510743296247.Spec : Prop :=
  ∀ n, P17339877510743296247.a n = (A013963 (n + 1) : ℚ)

end A013963

/-! ## A013963.P7412664987792724077

`record[∑{d}[n-1, (#^3)^5]]`
-/

namespace A013963.P7412664987792724077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d ^ 3) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013963.P7412664987792724077

namespace A013963

/-- `record[∑{d}[n-1, (#^3)^5]]` -/
def P7412664987792724077.Spec : Prop :=
  ∀ n, (P7412664987792724077.a n : ℤ) = A013963 (n + 1)

end A013963

/-! ## A013963.P1935990593344722975

`A109974(eq[15, A002262(n)])`
-/

namespace A013963.P1935990593344722975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013963.P1935990593344722975

namespace A013963

/-- `A109974(eq[15, A002262(n)])` -/
def P1935990593344722975.Spec : Prop :=
  ∀ n, P1935990593344722975.a n = A013963 (n + 1)

end A013963

/-! ## A013963.P5295224227426014924

`A109974(eq[15, A144328(n+1)])`
-/

namespace A013963.P5295224227426014924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013963.P5295224227426014924

namespace A013963

/-- `A109974(eq[15, A144328(n+1)])` -/
def P5295224227426014924.Spec : Prop :=
  ∀ n, P5295224227426014924.a n = A013963 (n + 1)

end A013963

/-! ## A013963.P9489661024317084585

`A109974(eq[16, A002260(n+1)])`
-/

namespace A013963.P9489661024317084585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013963.P9489661024317084585

namespace A013963

/-- `A109974(eq[16, A002260(n+1)])` -/
def P9489661024317084585.Spec : Prop :=
  ∀ n, P9489661024317084585.a n = A013963 (n + 1)

end A013963

/-!
# A013964: a(n) = sigma_16(n), the sum of the 16th powers of the divisors of n.

The programs for A013964, the canonical program `A013964.P17992710729513768057` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013964 has offset 1).

The definition of A013964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013964.P17992710729513768057

`∑{d}[n+1, #^16]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013964

/-- `∑{d}[n+1, #^16]` -/
def P17992710729513768057.Spec : Prop :=
  ∀ n, (P17992710729513768057.a n : ℤ) = A013964 (n + 1)

theorem P17992710729513768057.correct : P17992710729513768057.Spec := by
  intro n
  simp only [A013964, Nat.add_sub_cancel]

end A013964

/-! ## A013964.P11288018316866549953

`record[∑{d}[n-1, (#^4)^4]]`
-/

namespace A013964.P11288018316866549953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d ^ 4) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013964.P11288018316866549953

namespace A013964

/-- `record[∑{d}[n-1, (#^4)^4]]` -/
def P11288018316866549953.Spec : Prop :=
  ∀ n, (P11288018316866549953.a n : ℤ) = A013964 (n + 1)

end A013964

/-! ## A013964.P9578366139019066559

`A351314((n+1)²)`
-/

namespace A013964.P9578366139019066559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351314 ((n + 1) ^ 2)

end

end A013964.P9578366139019066559

namespace A013964

/-- `A351314((n+1)²)` -/
def P9578366139019066559.Spec : Prop :=
  ∀ n, P9578366139019066559.a n = A013964 (n + 1)

end A013964

/-! ## A013964.P17586426120661503970

`record[A351314(n+1)]`
-/

namespace A013964.P17586426120661503970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013964.P17586426120661503970

namespace A013964

/-- `record[A351314(n+1)]` -/
def P17586426120661503970.Spec : Prop :=
  ∀ n, P17586426120661503970.a n = A013964 (n + 1)

end A013964

/-! ## A013964.P14209216040217284095

`A109974(eq[16, A002262(n)])`
-/

namespace A013964.P14209216040217284095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013964.P14209216040217284095

namespace A013964

/-- `A109974(eq[16, A002262(n)])` -/
def P14209216040217284095.Spec : Prop :=
  ∀ n, P14209216040217284095.a n = A013964 (n + 1)

end A013964

/-! ## A013964.P17928315190685253350

`A109974(eq[17, A002260(n+1)])`
-/

namespace A013964.P17928315190685253350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013964.P17928315190685253350

namespace A013964

/-- `A109974(eq[17, A002260(n+1)])` -/
def P17928315190685253350.Spec : Prop :=
  ∀ n, P17928315190685253350.a n = A013964 (n + 1)

end A013964

/-!
# A013965: a(n) = sigma_17(n), the sum of the 17th powers of the divisors of n.

The programs for A013965, the canonical program `A013965.P9738218986408691785` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013965 has offset 1).

The definition of A013965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013965.P9738218986408691785

`∑{d}[n+1, #^17]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013965

/-- `∑{d}[n+1, #^17]` -/
def P9738218986408691785.Spec : Prop :=
  ∀ n, (P9738218986408691785.a n : ℤ) = A013965 (n + 1)

theorem P9738218986408691785.correct : P9738218986408691785.Spec := by
  intro n
  simp only [A013965, Nat.add_sub_cancel]

end A013965

/-! ## A013965.P6180211652876284954

`A279892(∑[2*n])/A279892(n)`
-/

namespace A013965.P6180211652876284954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279892 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A279892 n : ℚ)

end

end A013965.P6180211652876284954

namespace A013965

/-- `A279892(∑[2*n])/A279892(n)` -/
def P6180211652876284954.Spec : Prop :=
  ∀ n, P6180211652876284954.a n = (A013965 (n + 1) : ℚ)

end A013965

/-! ## A013965.P5795981762128304521

`A109974(eq[17, A002262(n)])`
-/

namespace A013965.P5795981762128304521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013965.P5795981762128304521

namespace A013965

/-- `A109974(eq[17, A002262(n)])` -/
def P5795981762128304521.Spec : Prop :=
  ∀ n, P5795981762128304521.a n = A013965 (n + 1)

end A013965

/-! ## A013965.P475962539608569153

`A109974(eq[17, A144328(n+1)])`
-/

namespace A013965.P475962539608569153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013965.P475962539608569153

namespace A013965

/-- `A109974(eq[17, A144328(n+1)])` -/
def P475962539608569153.Spec : Prop :=
  ∀ n, P475962539608569153.a n = A013965 (n + 1)

end A013965

/-! ## A013965.P5518166380354621474

`A109974(eq[18, A002260(n+1)])`
-/

namespace A013965.P5518166380354621474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013965.P5518166380354621474

namespace A013965

/-- `A109974(eq[18, A002260(n+1)])` -/
def P5518166380354621474.Spec : Prop :=
  ∀ n, P5518166380354621474.a n = A013965 (n + 1)

end A013965

/-!
# A013966: a(n) = sigma_18(n), the sum of the 18th powers of the divisors of n.

The programs for A013966, the canonical program `A013966.P1283845060837839535` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013966 has offset 1).

The definition of A013966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013966.P1283845060837839535

`∑{d}[n+1, #^18]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013966

/-- `∑{d}[n+1, #^18]` -/
def P1283845060837839535.Spec : Prop :=
  ∀ n, (P1283845060837839535.a n : ℤ) = A013966 (n + 1)

theorem P1283845060837839535.correct : P1283845060837839535.Spec := by
  intro n
  simp only [A013966, Nat.add_sub_cancel]

end A013966

/-! ## A013966.P13973543723719144392

`record[∑{d}[n-1, A001017(#)²]]`
-/

namespace A013966.P13973543723719144392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A001017 d ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013966.P13973543723719144392

namespace A013966

/-- `record[∑{d}[n-1, A001017(#)²]]` -/
def P13973543723719144392.Spec : Prop :=
  ∀ n, P13973543723719144392.a n = A013966 (n + 1)

end A013966

/-! ## A013966.P15398539149386613440

`A351315((n+1)²)`
-/

namespace A013966.P15398539149386613440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351315 ((n + 1) ^ 2)

end

end A013966.P15398539149386613440

namespace A013966

/-- `A351315((n+1)²)` -/
def P15398539149386613440.Spec : Prop :=
  ∀ n, P15398539149386613440.a n = A013966 (n + 1)

end A013966

/-! ## A013966.P13509179271540476233

`record[A351315(n+1)]`
-/

namespace A013966.P13509179271540476233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013966.P13509179271540476233

namespace A013966

/-- `record[A351315(n+1)]` -/
def P13509179271540476233.Spec : Prop :=
  ∀ n, P13509179271540476233.a n = A013966 (n + 1)

end A013966

/-! ## A013966.P16524549556889113455

`record[ratio[A351315(A123726(n))]]`
-/

namespace A013966.P16524549556889113455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351315 (A123726 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013966.P16524549556889113455

namespace A013966

/-- `record[ratio[A351315(A123726(n))]]` -/
def P16524549556889113455.Spec : Prop :=
  ∀ n, P16524549556889113455.a n = (A013966 (n + 1) : ℚ)

end A013966

/-!
# A013967: a(n) = sigma_19(n), the sum of the 19th powers of the divisors of n.

The programs for A013967, the canonical program `A013967.P18201524594572952050` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013967 has offset 1).

The definition of A013967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013967.P18201524594572952050

`∑{d}[n+1, #^19]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013967

/-- `∑{d}[n+1, #^19]` -/
def P18201524594572952050.Spec : Prop :=
  ∀ n, (P18201524594572952050.a n : ℤ) = A013967 (n + 1)

theorem P18201524594572952050.correct : P18201524594572952050.Spec := by
  intro n
  simp only [A013967, Nat.add_sub_cancel]

end A013967

/-!
# A013968: a(n) = sigma_20(n), the sum of the 20th powers of the divisors of n.

The programs for A013968, the canonical program `A013968.P5081279616803644998` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013968 has offset 1).

The definition of A013968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013968.P5081279616803644998

`∑{d}[n+1, #^20]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013968

/-- `∑{d}[n+1, #^20]` -/
def P5081279616803644998.Spec : Prop :=
  ∀ n, (P5081279616803644998.a n : ℤ) = A013968 (n + 1)

theorem P5081279616803644998.correct : P5081279616803644998.Spec := by
  intro n
  simp only [A013968, Nat.add_sub_cancel]

end A013968

/-! ## A013968.P5134674060543308248

`A351316((n+1)²)`
-/

namespace A013968.P5134674060543308248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351316 ((n + 1) ^ 2)

end

end A013968.P5134674060543308248

namespace A013968

/-- `A351316((n+1)²)` -/
def P5134674060543308248.Spec : Prop :=
  ∀ n, P5134674060543308248.a n = A013968 (n + 1)

end A013968

/-! ## A013968.P4323238582215403905

`record[A351316(n+1)]`
-/

namespace A013968.P4323238582215403905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013968.P4323238582215403905

namespace A013968

/-- `record[A351316(n+1)]` -/
def P4323238582215403905.Spec : Prop :=
  ∀ n, P4323238582215403905.a n = A013968 (n + 1)

end A013968

/-!
# A013969: a(n) = sigma_21(n), the sum of the 21st powers of the divisors of n.

The programs for A013969, the canonical program `A013969.P10740837869425924608` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013969 has offset 1).

The definition of A013969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013969.P10740837869425924608

`∑{d}[n+1, #^21]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013969

/-- `∑{d}[n+1, #^21]` -/
def P10740837869425924608.Spec : Prop :=
  ∀ n, (P10740837869425924608.a n : ℤ) = A013969 (n + 1)

theorem P10740837869425924608.correct : P10740837869425924608.Spec := by
  intro n
  simp only [A013969, Nat.add_sub_cancel]

end A013969

/-! ## A013969.P7401637739292089280

`A279893(∑[2*n])/A279893(n)`
-/

namespace A013969.P7401637739292089280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279893 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A279893 n : ℚ)

end

end A013969.P7401637739292089280

namespace A013969

/-- `A279893(∑[2*n])/A279893(n)` -/
def P7401637739292089280.Spec : Prop :=
  ∀ n, P7401637739292089280.a n = (A013969 (n + 1) : ℚ)

end A013969

/-!
# A013970: a(n) = sigma_22(n), the sum of the 22nd powers of the divisors of n.

The programs for A013970, the canonical program `A013970.P3060113277014583446` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013970 has offset 1).

The definition of A013970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013970.P3060113277014583446

`∑{d}[n+1, #^22]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013970

/-- `∑{d}[n+1, #^22]` -/
def P3060113277014583446.Spec : Prop :=
  ∀ n, (P3060113277014583446.a n : ℤ) = A013970 (n + 1)

theorem P3060113277014583446.correct : P3060113277014583446.Spec := by
  intro n
  simp only [A013970, Nat.add_sub_cancel]

end A013970

/-!
# A013971: 

The programs for A013971, there is no canonical definition to state claims against.
-/

/-! ## A013971.P1597892382886531052

`∑{d}[n+1, #^23]`
-/

namespace A013971.P1597892382886531052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 23

end

end A013971.P1597892382886531052

/-!
# A013972: 

The programs for A013972, there is no canonical definition to state claims against.
-/

/-! ## A013972.P13877022459509263176

`∑{d}[n+1, #^24]`
-/

namespace A013972.P13877022459509263176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 24

end

end A013972.P13877022459509263176

/-!
# A013973: Expansion of Eisenstein series E_6(q) (alternate convention E_3(q)).

The programs for A013973, there is no canonical definition to state claims against.
-/

/-! ## A013973.P15434598376524077536

`A035036(2*n)-(A035036(n)-A035036(2*n))`
-/

namespace A013973.P15434598376524077536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035036 (2 * n) - (A035036 n - A035036 (2 * n))

end

end A013973.P15434598376524077536

/-! ## A013973.P5145624351054538933

`A282019(n)-A004009(n)*A008585(n)`
-/

namespace A013973.P5145624351054538933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282019 n - A004009 n * A008585 n

end

end A013973.P5145624351054538933

/-! ## A013973.P9110529084649018125

`A282019(n)-(2*A008430(n)-A035016(n))*A008585(n)`
-/

namespace A013973.P9110529084649018125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282019 n - (2 * A008430 n - A035016 n) * A008585 n

end

end A013973.P9110529084649018125

/-! ## A013973.P1784017479480923267

`A282019(n)-(2*A035016(2*n)-A035016(n))*A008585(n)`
-/

namespace A013973.P1784017479480923267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282019 n - (2 * A035016 (2 * n) - A035016 n) * A008585 n

end

end A013973.P1784017479480923267

/-! ## A013973.P7824128248534785560

`A282019(n)-(A000143(2*n)+2*A007331(4*n))*A008585(n)`
-/

namespace A013973.P7824128248534785560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282019 n - (A000143 (2 * n) + 2 * A007331 (4 * n)) * A008585 n

end

end A013973.P7824128248534785560

/-! ## A013973.P10228601843178402051

`A282019(n)-A008585(n)*A023920(9*n)`
-/

namespace A013973.P10228601843178402051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282019 n - A008585 n * A023920 (9 * n)

end

end A013973.P10228601843178402051

/-! ## A013973.P3588290718406475007

`A282019(n)-A008585(n)*A028579(4*4*n)`
-/

namespace A013973.P3588290718406475007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282019 n - A008585 n * A028579 (4 * (4 * n))

end

end A013973.P3588290718406475007

/-!
# A013975: Modular form of level 4 and weight 1/2.

The programs for A013975, there is no canonical definition to state claims against.
-/

/-! ## A013975.P4420018808575297925

`A103529(a(n-1)+3)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A013975.P4420018808575297925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A103529 (a (n - 1) + 3).toNat

end

end A013975.P4420018808575297925

/-! ## A013975.P14329581080376352133

`A154344(5*a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=6`
-/

namespace A013975.P14329581080376352133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 6] fun n a =>
  A154344 (5 * a (n - 1)).toNat

end

end A013975.P14329581080376352133

/-!
# A013976: Number of tournaments on n nodes with a unique winner.

The programs for A013976, there is no canonical definition to state claims against.
-/

/-! ## A013976.P11949105399398298780

`C(lt[(6*n)%comp[n²], 1], 2)+n+1`
-/

namespace A013976.P11949105399398298780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < f3 j) n) 2 + n + 1

end

end A013976.P11949105399398298780

/-!
# A013977: Molien series of 4-dimensional representation of u.g.g.r. #9.

The programs for A013977, the canonical program `A013977.P9803550979883503941` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013977 has offset 0).

The definition of A013977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013977.P9803550979883503941

`ogf((1+8x+21x^2+58x^3+47x^4+35x^5+21x^6+x^7)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013977

/-- `ogf((1+8x+21x^2+58x^3+47x^4+35x^5+21x^6+x^7)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))` -/
def P9803550979883503941.Spec : Prop :=
  ∀ n, P9803550979883503941.a n = A013977 n

theorem P9803550979883503941.correct : P9803550979883503941.Spec := by
  intro n
  simp only [A013977]

end A013977

/-! ## A013977.P8851021397284502555

`A013978(2*n)`
-/

namespace A013977.P8851021397284502555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013978 (2 * n)

end

end A013977.P8851021397284502555

namespace A013977

/-- `A013978(2*n)` -/
def P8851021397284502555.Spec : Prop :=
  ∀ n, P8851021397284502555.a n = A013977 n

end A013977

/-! ## A013977.P1990714176866127252

`record[A013978(and(n, n+1))]`
-/

namespace A013977.P1990714176866127252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013978 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013977.P1990714176866127252

namespace A013977

/-- `record[A013978(and(n, n+1))]` -/
def P1990714176866127252.Spec : Prop :=
  ∀ n, P1990714176866127252.a n = A013977 n

end A013977

/-! ## A013977.P5828527180140564830

`record[A013978(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A013977.P5828527180140564830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A013978 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013977.P5828527180140564830

namespace A013977

/-- `record[A013978(C(n, a(n-1)))]` -/
def P5828527180140564830.Spec : Prop :=
  ∀ n, P5828527180140564830.a n = A013977 n

end A013977

/-! ## A013977.P2866533890455867719

`A013978(n+n)/gcd(n, n+1)`
-/

namespace A013977.P2866533890455867719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013978 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A013977.P2866533890455867719

namespace A013977

/-- `A013978(n+n)/gcd(n, n+1)` -/
def P2866533890455867719.Spec : Prop :=
  ∀ n, P2866533890455867719.a n = (A013977 n : ℚ)

end A013977

/-! ## A013977.P12700309339306573466

`A104488(A006530(n+1))+A013978(n+n)`
-/

namespace A013977.P12700309339306573466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (A006530 (n + 1)).toNat + A013978 (n + n)

end

end A013977.P12700309339306573466

namespace A013977

/-- `A104488(A006530(n+1))+A013978(n+n)` -/
def P12700309339306573466.Spec : Prop :=
  ∀ n, P12700309339306573466.a n = A013977 n

end A013977

/-! ## A013977.P1552958652887373568

`record[A013978(A002492(n)%(n+1))]`
-/

namespace A013977.P1552958652887373568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013978 (Int.tmod (A002492 n) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013977.P1552958652887373568

namespace A013977

/-- `record[A013978(A002492(n)%(n+1))]` -/
def P1552958652887373568.Spec : Prop :=
  ∀ n, P1552958652887373568.a n = A013977 n

end A013977

/-!
# A013979: Expansion of 1/(1 - x^2 - x^3 - x^4) = 1/((1 + x)*(1 - x - x^3)).

The programs for A013979, the canonical program `A013979.P2913254575632178338` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013979 has offset 0).

The definition of A013979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013979.P2913254575632178338

`a(n-4)+a(n-3)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013979

/-- `a(n-4)+a(n-3)+a(n-2)` -/
def P2913254575632178338.Spec : Prop :=
  ∀ n, (P2913254575632178338.a n : ℤ) = A013979 n

theorem P2913254575632178338.correct : P2913254575632178338.Spec := by
  intro n
  simp only [A013979]

end A013979

/-! ## A013979.P3732627893823445082

`A107458(n+4)`
-/

namespace A013979.P3732627893823445082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 4)

end

end A013979.P3732627893823445082

namespace A013979

/-- `A107458(n+4)` -/
def P3732627893823445082.Spec : Prop :=
  ∀ n, P3732627893823445082.a n = A013979 n

end A013979

/-! ## A013979.P9789271717221092638

`∑{#}[floor(n/2), A078012(n-2*#)]`
-/

namespace A013979.P9789271717221092638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A078012 (n - 2 * k)

end

end A013979.P9789271717221092638

namespace A013979

/-- `∑{#}[floor(n/2), A078012(n-2*#)]` -/
def P9789271717221092638.Spec : Prop :=
  ∀ n, P9789271717221092638.a n = A013979 n

end A013979

/-! ## A013979.P1531291332792178748

`ogf(-1/(-1+x^2+x^3+x^4))`
-/

namespace A013979.P1531291332792178748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, -1, -1] n

end

end A013979.P1531291332792178748

namespace A013979

/-- `ogf(-1/(-1+x^2+x^3+x^4))` -/
def P1531291332792178748.Spec : Prop :=
  ∀ n, P1531291332792178748.a n = A013979 n

end A013979

/-! ## A013979.P1911454360052525602

`a(n-1)+a(n-3)+(-1)^n` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A013979.P1911454360052525602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) + (a (n - 3) + (-1) ^ n)

end

end A013979.P1911454360052525602

namespace A013979

/-- `a(n-1)+a(n-3)+(-1)^n` -/
def P1911454360052525602.Spec : Prop :=
  ∀ n, P1911454360052525602.a n = A013979 n

end A013979

/-! ## A013979.P2834376162368254716

`A078012(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A013979.P2834376162368254716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A078012 n + a (n - 2)

end

end A013979.P2834376162368254716

namespace A013979

/-- `A078012(n)+a(n-2)` -/
def P2834376162368254716.Spec : Prop :=
  ∀ n, P2834376162368254716.a n = A013979 n

end A013979

/-! ## A013979.P8574059212444055039

`A167704(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A013979.P8574059212444055039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A167704 n - a (n - 2)

end

end A013979.P8574059212444055039

namespace A013979

/-- `A167704(n)-a(n-2)` -/
def P8574059212444055039.Spec : Prop :=
  ∀ n, P8574059212444055039.a n = A013979 n

end A013979

/-! ## A013979.P3284875354935712792

`A277253(n)+A306276(n)-A277252(n+1)`
-/

namespace A013979.P3284875354935712792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 n + (A306276 n - A277252 (n + 1))

end

end A013979.P3284875354935712792

namespace A013979

/-- `A277253(n)+A306276(n)-A277252(n+1)` -/
def P3284875354935712792.Spec : Prop :=
  ∀ n, P3284875354935712792.a n = A013979 n

end A013979

/-! ## A013979.P14494264266172346230

`abs(∑[A199804(n)])`
-/

namespace A013979.P14494264266172346230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A013979.P14494264266172346230

namespace A013979

/-- `abs(∑[A199804(n)])` -/
def P14494264266172346230.Spec : Prop :=
  ∀ n, P14494264266172346230.a n = A013979 n

end A013979

/-! ## A013979.P9743867812455002058

`A000930(n)-a(n-1)` with `a(0)=1`
-/

namespace A013979.P9743867812455002058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000930 n - a (n - 1)

end

end A013979.P9743867812455002058

namespace A013979

/-- `A000930(n)-a(n-1)` -/
def P9743867812455002058.Spec : Prop :=
  ∀ n, P9743867812455002058.a n = A013979 n

end A013979

/-! ## A013979.P4165599037552107638

`A068921(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A013979.P4165599037552107638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068921 (n - 1) - a (n - 1)

end

end A013979.P4165599037552107638

namespace A013979

/-- `A068921(n-1)-a(n-1)` -/
def P4165599037552107638.Spec : Prop :=
  ∀ n, P4165599037552107638.a n = A013979 n

end A013979

/-! ## A013979.P307725218873145971

`A108104(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A013979.P307725218873145971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108104 (2 * n) - a (n - 1)

end

end A013979.P307725218873145971

namespace A013979

/-- `A108104(2*n)-a(n-1)` -/
def P307725218873145971.Spec : Prop :=
  ∀ n, P307725218873145971.a n = A013979 n

end A013979

/-! ## A013979.P12451732898871228543

`∑[A199804(n)]*A033999(n)`
-/

namespace A013979.P12451732898871228543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A013979.P12451732898871228543

namespace A013979

/-- `∑[A199804(n)]*A033999(n)` -/
def P12451732898871228543.Spec : Prop :=
  ∀ n, P12451732898871228543.a n = A013979 n

end A013979

/-! ## A013979.P5496698637278211649

`abs(∑[A000930(n)*A033999(n)])`
-/

namespace A013979.P5496698637278211649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A013979.P5496698637278211649

namespace A013979

/-- `abs(∑[A000930(n)*A033999(n)])` -/
def P5496698637278211649.Spec : Prop :=
  ∀ n, P5496698637278211649.a n = A013979 n

end A013979

/-! ## A013979.P6489056682572170679

`A000930(n)/A199804(n)*∑[A199804(n)]`
-/

namespace A013979.P6489056682572170679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n : ℚ) / (A199804 n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A013979.P6489056682572170679

namespace A013979

/-- `A000930(n)/A199804(n)*∑[A199804(n)]` -/
def P6489056682572170679.Spec : Prop :=
  ∀ n, P6489056682572170679.a n = (A013979 n : ℚ)

end A013979

/-! ## A013979.P3894203313597621492

`Δ[A023435(n)]`
-/

namespace A013979.P3894203313597621492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013979.P3894203313597621492

namespace A013979

/-- `Δ[A023435(n)]` -/
def P3894203313597621492.Spec : Prop :=
  ∀ n, P3894203313597621492.a n = A013979 n

end A013979

/-! ## A013979.P8309211807846521114

`A023435(n+1)-A023435(n)`
-/

namespace A013979.P8309211807846521114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 (n + 1) - A023435 n

end

end A013979.P8309211807846521114

namespace A013979

/-- `A023435(n+1)-A023435(n)` -/
def P8309211807846521114.Spec : Prop :=
  ∀ n, P8309211807846521114.a n = A013979 n

end A013979

/-! ## A013979.P6007952262800102476

`A277253(n+3)-A000930(n)`
-/

namespace A013979.P6007952262800102476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (n + 3) - A000930 n

end

end A013979.P6007952262800102476

namespace A013979

/-- `A277253(n+3)-A000930(n)` -/
def P6007952262800102476.Spec : Prop :=
  ∀ n, P6007952262800102476.a n = A013979 n

end A013979

/-! ## A013979.P4855173979716688205

`A068921(n)-(A000930(n)-A107458(n))`
-/

namespace A013979.P4855173979716688205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n - (A000930 n - A107458 n)

end

end A013979.P4855173979716688205

namespace A013979

/-- `A068921(n)-(A000930(n)-A107458(n))` -/
def P4855173979716688205.Spec : Prop :=
  ∀ n, P4855173979716688205.a n = A013979 n

end A013979

/-! ## A013979.P939311835666828713

`A000930(n+2)-A277252(n+3)`
-/

namespace A013979.P939311835666828713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2) - A277252 (n + 3)

end

end A013979.P939311835666828713

namespace A013979

/-- `A000930(n+2)-A277252(n+3)` -/
def P939311835666828713.Spec : Prop :=
  ∀ n, P939311835666828713.a n = A013979 n

end A013979

/-!
# A013981: Number of commutative elements in Coxeter group H_n.

The programs for A013981, the canonical program `A013981.P12260104693310856195` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013981 has offset 0).

The definition of A013981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013981.P12260104693310856195

`C(2*n+2, n+1)-2^(n+2)+n+3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013981

/-- `C(2*n+2, n+1)-2^(n+2)+n+3` -/
def P12260104693310856195.Spec : Prop :=
  ∀ n, P12260104693310856195.a n = A013981 n

theorem P12260104693310856195.correct : P12260104693310856195.Spec := by
  intro n
  simp only [A013981]

end A013981

/-! ## A013981.P3809029463099125935

`A000984(n+1)-∑[∑[2^n]]`
-/

namespace A013981.P3809029463099125935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A013981.P3809029463099125935

namespace A013981

/-- `A000984(n+1)-∑[∑[2^n]]` -/
def P3809029463099125935.Spec : Prop :=
  ∀ n, P3809029463099125935.a n = A013981 n

end A013981

/-! ## A013981.P7875957453142612477

`A085781(n)-A095151(n)`
-/

namespace A013981.P7875957453142612477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085781 n - A095151 n

end

end A013981.P7875957453142612477

namespace A013981

/-- `A085781(n)-A095151(n)` -/
def P7875957453142612477.Spec : Prop :=
  ∀ n, P7875957453142612477.a n = A013981 n

end A013981

/-! ## A013981.P15670210764213465713

`A144657(n)-A109363(n)`
-/

namespace A013981.P15670210764213465713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144657 n - A109363 n

end

end A013981.P15670210764213465713

namespace A013981

/-- `A144657(n)-A109363(n)` -/
def P15670210764213465713.Spec : Prop :=
  ∀ n, P15670210764213465713.a n = A013981 n

end A013981

/-! ## A013981.P13864910099216014256

`Δ[A006134(n)]-∑[A126646(n)]`
-/

namespace A013981.P13864910099216014256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A013981.P13864910099216014256

namespace A013981

/-- `Δ[A006134(n)]-∑[A126646(n)]` -/
def P13864910099216014256.Spec : Prop :=
  ∀ n, P13864910099216014256.a n = A013981 n

end A013981

/-! ## A013981.P1153409238247943845

`Δ[A006134(n)]-A000295(n+2)`
-/

namespace A013981.P1153409238247943845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000295 (n + 2)

end

end A013981.P1153409238247943845

namespace A013981

/-- `Δ[A006134(n)]-A000295(n+2)` -/
def P1153409238247943845.Spec : Prop :=
  ∀ n, P1153409238247943845.a n = A013981 n

end A013981

/-! ## A013981.P7012758445849471623

`A030662(n+1)-A000247(n+2)`
-/

namespace A013981.P7012758445849471623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030662 (n + 1) - A000247 (n + 2)

end

end A013981.P7012758445849471623

namespace A013981

/-- `A030662(n+1)-A000247(n+2)` -/
def P7012758445849471623.Spec : Prop :=
  ∀ n, P7012758445849471623.a n = A013981 n

theorem P7012758445849471623.correct : P7012758445849471623.Spec := by
  intro n
  simp only [A013981, Nat.add_sub_cancel, A013981.P7012758445849471623.a, A013981.P12260104693310856195.a, A000247, A000247.P12692172919708458481.a, A030662, A030662.P11997165729521447290.a, A115112, A115112.P11405233874723568779.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013981

/-! ## A013981.P15287473350616728470

`record[A081668(n+1)]-∑[A126646(n)]`
-/

namespace A013981.P15287473350616728470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A013981.P15287473350616728470

namespace A013981

/-- `record[A081668(n+1)]-∑[A126646(n)]` -/
def P15287473350616728470.Spec : Prop :=
  ∀ n, P15287473350616728470.a n = A013981 n

end A013981

/-! ## A013981.P12286881477785900061

`∑[A051924(n+1)]-A000247(n+2)`
-/

namespace A013981.P12286881477785900061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000247 (n + 2)

end

end A013981.P12286881477785900061

namespace A013981

/-- `∑[A051924(n+1)]-A000247(n+2)` -/
def P12286881477785900061.Spec : Prop :=
  ∀ n, P12286881477785900061.a n = A013981 n

end A013981

/-! ## A013981.P13908821064763622335

`A000984(n+1)-n-∑[A095121(n)]`
-/

namespace A013981.P13908821064763622335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013981.P13908821064763622335

namespace A013981

/-- `A000984(n+1)-n-∑[A095121(n)]` -/
def P13908821064763622335.Spec : Prop :=
  ∀ n, P13908821064763622335.a n = A013981 n

end A013981

/-!
# A013982: Expansion of 1/(1-x^2-x^3-x^4-x^5).

The programs for A013982, the canonical program `A013982.P9985110527631205082` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013982 has offset 0).

The definition of A013982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3-x^4-x^5))` (program `A013982.P9985110527631205082`, by `A013982.P9985110527631205082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013982.P9985110527631205082

`ogf(1/(1-x^2-x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013982

/-- `ogf(1/(1-x^2-x^3-x^4-x^5))` -/
def P9985110527631205082.Spec : Prop :=
  ∀ n, P9985110527631205082.a n = A013982 n

theorem P9985110527631205082.correct : P9985110527631205082.Spec := by
  intro n
  simp only [A013982]

end A013982

/-! ## A013982.P16720061056991756899

`a(n-5)+a(n-4)+a(n-3)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A013982.P16720061056991756899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 2] fun n a =>
  a (n - 5) + a (n - 4) + a (n - 3) + a (n - 2)

end

end A013982.P16720061056991756899

namespace A013982

/-- `a(n-5)+a(n-4)+a(n-3)+a(n-2)` -/
def P16720061056991756899.Spec : Prop :=
  ∀ n, (P16720061056991756899.a n : ℤ) = A013982 n

end A013982

/-! ## A013982.P4319314895664796584

`A072465(n)-a(n-1)` with `a(0)=1`
-/

namespace A013982.P4319314895664796584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072465 n - a (n - 1)

end

end A013982.P4319314895664796584

namespace A013982

/-- `A072465(n)-a(n-1)` -/
def P4319314895664796584.Spec : Prop :=
  ∀ n, P4319314895664796584.a n = A013982 n

end A013982

/-! ## A013982.P4359545023519360749

`Δ[A023436(n)]`
-/

namespace A013982.P4359545023519360749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013982.P4359545023519360749

namespace A013982

/-- `Δ[A023436(n)]` -/
def P4359545023519360749.Spec : Prop :=
  ∀ n, P4359545023519360749.a n = A013982 n

end A013982

/-! ## A013982.P522438549094602310

`A023436(n+1)-A023436(n)`
-/

namespace A013982.P522438549094602310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023436 (n + 1) - A023436 n

end

end A013982.P522438549094602310

namespace A013982

/-- `A023436(n+1)-A023436(n)` -/
def P522438549094602310.Spec : Prop :=
  ∀ n, P522438549094602310.a n = A013982 n

end A013982

/-! ## A013982.P4028315469826842520

`Δ[A109544(n+4)]/3`
-/

namespace A013982.P4028315469826842520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109544 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3

end

end A013982.P4028315469826842520

namespace A013982

/-- `Δ[A109544(n+4)]/3` -/
def P4028315469826842520.Spec : Prop :=
  ∀ n, P4028315469826842520.a n = (A013982 n : ℚ)

end A013982

/-!
# A013983: Expansion of 1/(1-x^2-x^3-x^4-x^5-x^6).

The programs for A013983, the canonical program `A013983.P375623750428826591` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013983 has offset 0).

The definition of A013983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3-x^4-x^5-x^6))` (program `A013983.P375623750428826591`, by `A013983.P375623750428826591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013983.P375623750428826591

`ogf(1/(1-x^2-x^3-x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013983

/-- `ogf(1/(1-x^2-x^3-x^4-x^5-x^6))` -/
def P375623750428826591.Spec : Prop :=
  ∀ n, P375623750428826591.a n = A013983 n

theorem P375623750428826591.correct : P375623750428826591.Spec := by
  intro n
  simp only [A013983]

end A013983

/-! ## A013983.P14551461237516606841

`a(n-6)+a(n-5)+a(n-4)+a(n-3)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A013983.P14551461237516606841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 2, 3] fun n a =>
  a (n - 6) + a (n - 5) + a (n - 4) + a (n - 3) + a (n - 2)

end

end A013983.P14551461237516606841

namespace A013983

/-- `a(n-6)+a(n-5)+a(n-4)+a(n-3)+a(n-2)` -/
def P14551461237516606841.Spec : Prop :=
  ∀ n, (P14551461237516606841.a n : ℤ) = A013983 n

end A013983

/-! ## A013983.P10288942280504143373

`A060961(n)-a(n-1)` with `a(0)=1`
-/

namespace A013983.P10288942280504143373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060961 n - a (n - 1)

end

end A013983.P10288942280504143373

namespace A013983

/-- `A060961(n)-a(n-1)` -/
def P10288942280504143373.Spec : Prop :=
  ∀ n, P10288942280504143373.a n = A013983 n

end A013983

/-! ## A013983.P8929801148422382719

`abs(∑[A033999(n)*A060961(n)])`
-/

namespace A013983.P8929801148422382719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A060961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A013983.P8929801148422382719

namespace A013983

/-- `abs(∑[A033999(n)*A060961(n)])` -/
def P8929801148422382719.Spec : Prop :=
  ∀ n, P8929801148422382719.a n = A013983 n

end A013983

/-! ## A013983.P15499003511608634496

`-((n-A004442(n))*∑[A033999(n)*A060961(n)])`
-/

namespace A013983.P15499003511608634496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A060961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - A004442 n) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A013983.P15499003511608634496

namespace A013983

/-- `-((n-A004442(n))*∑[A033999(n)*A060961(n)])` -/
def P15499003511608634496.Spec : Prop :=
  ∀ n, P15499003511608634496.a n = A013983 n

end A013983

/-! ## A013983.P14074245751785769736

`-((2*A000035(n)-1)*∑[A033999(n)*A060961(n)])`
-/

namespace A013983.P14074245751785769736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A060961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * A000035 n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A013983.P14074245751785769736

namespace A013983

/-- `-((2*A000035(n)-1)*∑[A033999(n)*A060961(n)])` -/
def P14074245751785769736.Spec : Prop :=
  ∀ n, P14074245751785769736.a n = A013983 n

end A013983

/-! ## A013983.P1206332701430713567

`Δ[A023437(n)]`
-/

namespace A013983.P1206332701430713567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013983.P1206332701430713567

namespace A013983

/-- `Δ[A023437(n)]` -/
def P1206332701430713567.Spec : Prop :=
  ∀ n, P1206332701430713567.a n = A013983 n

end A013983

/-! ## A013983.P14546455966906365582

`A023437(n+1)-A023437(n)`
-/

namespace A013983.P14546455966906365582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023437 (n + 1) - A023437 n

end

end A013983.P14546455966906365582

namespace A013983

/-- `A023437(n+1)-A023437(n)` -/
def P14546455966906365582.Spec : Prop :=
  ∀ n, P14546455966906365582.a n = A013983 n

end A013983

/-!
# A013984: Expansion of 1/(1-x^2-x^3-x^4-x^5-x^6-x^7).

The programs for A013984, the canonical program `A013984.P10031483033261438584` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013984 has offset 0).

The definition of A013984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7))` (program `A013984.P10031483033261438584`, by `A013984.P10031483033261438584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013984.P10031483033261438584

`ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013984

/-- `ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7))` -/
def P10031483033261438584.Spec : Prop :=
  ∀ n, P10031483033261438584.a n = A013984 n

theorem P10031483033261438584.correct : P10031483033261438584.Spec := by
  intro n
  simp only [A013984]

end A013984

/-! ## A013984.P3376027615777023030

`a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=3, a(6)=5`
-/

namespace A013984.P3376027615777023030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 2, 3, 5] fun n a =>
  a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5) + a (n - 6) + a (n - 7)

end

end A013984.P3376027615777023030

namespace A013984

/-- `a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` -/
def P3376027615777023030.Spec : Prop :=
  ∀ n, (P3376027615777023030.a n : ℤ) = A013984 n

end A013984

/-! ## A013984.P4553571863666235148

`A107479(abs(1-n))`
-/

namespace A013984.P4553571863666235148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107479 |1 - (n : ℤ)|.toNat

end

end A013984.P4553571863666235148

namespace A013984

/-- `A107479(abs(1-n))` -/
def P4553571863666235148.Spec : Prop :=
  ∀ n, P4553571863666235148.a n = A013984 n

end A013984

/-! ## A013984.P8923887693267798503

`lcm((-1)^n, A107479(n-a(2%n)))` with `a(0)=1`
-/

namespace A013984.P8923887693267798503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm ((-1) ^ n) (A107479 (n - a (2 % n)))

end

end A013984.P8923887693267798503

namespace A013984

/-- `lcm((-1)^n, A107479(n-a(2%n)))` -/
def P8923887693267798503.Spec : Prop :=
  ∀ n, (P8923887693267798503.a n : ℤ) = A013984 n

end A013984

/-! ## A013984.P7439412602973357127

`Δ[A023438(n)]`
-/

namespace A013984.P7439412602973357127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013984.P7439412602973357127

namespace A013984

/-- `Δ[A023438(n)]` -/
def P7439412602973357127.Spec : Prop :=
  ∀ n, P7439412602973357127.a n = A013984 n

end A013984

/-! ## A013984.P159678149605598402

`A023438(n+1)-A023438(n)`
-/

namespace A013984.P159678149605598402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023438 (n + 1) - A023438 n

end

end A013984.P159678149605598402

namespace A013984

/-- `A023438(n+1)-A023438(n)` -/
def P159678149605598402.Spec : Prop :=
  ∀ n, P159678149605598402.a n = A013984 n

end A013984

/-! ## A013984.P17594479754522072959

`A107479(log2(A011782(n)))+A000007(n)`
-/

namespace A013984.P17594479754522072959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107479 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A000007 n

end

end A013984.P17594479754522072959

namespace A013984

/-- `A107479(log2(A011782(n)))+A000007(n)` -/
def P17594479754522072959.Spec : Prop :=
  ∀ n, P17594479754522072959.a n = A013984 n

end A013984

/-!
# A013985: Expansion of 1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8).

The programs for A013985, the canonical program `A013985.P5175068456162008085` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013985 has offset 0).

The definition of A013985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8))` (program `A013985.P5175068456162008085`, by `A013985.P5175068456162008085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013985.P5175068456162008085

`ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013985

/-- `ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8))` -/
def P5175068456162008085.Spec : Prop :=
  ∀ n, P5175068456162008085.a n = A013985 n

theorem P5175068456162008085.correct : P5175068456162008085.Spec := by
  intro n
  simp only [A013985]

end A013985

/-! ## A013985.P308578784732513040

`A117761(n-2)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A013985.P308578784732513040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A117761 (n - 2) + a (n - 2)

end

end A013985.P308578784732513040

namespace A013985

/-- `A117761(n-2)+a(n-2)` -/
def P308578784732513040.Spec : Prop :=
  ∀ n, P308578784732513040.a n = A013985 n

end A013985

/-! ## A013985.P11178675670267125938

`A117760(n)-a(n-1)` with `a(0)=1`
-/

namespace A013985.P11178675670267125938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117760 n - a (n - 1)

end

end A013985.P11178675670267125938

namespace A013985

/-- `A117760(n)-a(n-1)` -/
def P11178675670267125938.Spec : Prop :=
  ∀ n, P11178675670267125938.a n = A013985 n

end A013985

/-! ## A013985.P13788069285333684315

`Δ[A023439(n)]`
-/

namespace A013985.P13788069285333684315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013985.P13788069285333684315

namespace A013985

/-- `Δ[A023439(n)]` -/
def P13788069285333684315.Spec : Prop :=
  ∀ n, P13788069285333684315.a n = A013985 n

end A013985

/-! ## A013985.P2026843536105422352

`A023439(n+1)-A023439(n)`
-/

namespace A013985.P2026843536105422352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023439 (n + 1) - A023439 n

end

end A013985.P2026843536105422352

namespace A013985

/-- `A023439(n+1)-A023439(n)` -/
def P2026843536105422352.Spec : Prop :=
  ∀ n, P2026843536105422352.a n = A013985 n

end A013985

/-!
# A013986: Expansion of 1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9).

The programs for A013986, the canonical program `A013986.P15658058039509592763` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013986 has offset 0).

The definition of A013986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9))` (program `A013986.P15658058039509592763`, by `A013986.P15658058039509592763.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013986.P15658058039509592763

`ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013986

/-- `ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9))` -/
def P15658058039509592763.Spec : Prop :=
  ∀ n, P15658058039509592763.a n = A013986 n

theorem P15658058039509592763.correct : P15658058039509592763.Spec := by
  intro n
  simp only [A013986]

end A013986

/-! ## A013986.P11892081765873376738

`Δ[A023440(n)]`
-/

namespace A013986.P11892081765873376738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013986.P11892081765873376738

namespace A013986

/-- `Δ[A023440(n)]` -/
def P11892081765873376738.Spec : Prop :=
  ∀ n, P11892081765873376738.a n = A013986 n

end A013986

/-! ## A013986.P11031068901445745524

`A023440(n+1)-A023440(n)`
-/

namespace A013986.P11031068901445745524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023440 (n + 1) - A023440 n

end

end A013986.P11031068901445745524

namespace A013986

/-- `A023440(n+1)-A023440(n)` -/
def P11031068901445745524.Spec : Prop :=
  ∀ n, P11031068901445745524.a n = A013986 n

end A013986

/-! ## A013986.P16208285348338530299

`A003056(A306200(n)+1-2*n%2)`
-/

namespace A013986.P16208285348338530299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A306200 n + (1 - ((2 * (n % 2) : ℕ) : ℤ))).toNat

end

end A013986.P16208285348338530299

namespace A013986

/-- `A003056(A306200(n)+1-2*n%2)` -/
def P16208285348338530299.Spec : Prop :=
  ∀ n, P16208285348338530299.a n = A013986 n

end A013986

/-! ## A013986.P4271164814758415485

`A003056(A306200(n)+A143379(n))`
-/

namespace A013986.P4271164814758415485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A306200 n + A143379 n).toNat

end

end A013986.P4271164814758415485

namespace A013986

/-- `A003056(A306200(n)+A143379(n))` -/
def P4271164814758415485.Spec : Prop :=
  ∀ n, P4271164814758415485.a n = A013986 n

end A013986

/-!
# A013987: Expansion of 1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10).

The programs for A013987, the canonical program `A013987.P18212507817751272347` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013987 has offset 0).

The definition of A013987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10))` (program `A013987.P18212507817751272347`, by `A013987.P18212507817751272347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013987.P18212507817751272347

`ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013987

/-- `ogf(1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10))` -/
def P18212507817751272347.Spec : Prop :=
  ∀ n, P18212507817751272347.a n = A013987 n

theorem P18212507817751272347.correct : P18212507817751272347.Spec := by
  intro n
  simp only [A013987]

end A013987

/-! ## A013987.P17382376947383047302

`Δ[A023441(n)]`
-/

namespace A013987.P17382376947383047302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013987.P17382376947383047302

namespace A013987

/-- `Δ[A023441(n)]` -/
def P17382376947383047302.Spec : Prop :=
  ∀ n, P17382376947383047302.a n = A013987 n

end A013987

/-! ## A013987.P13515038650078368422

`A023441(n+1)-A023441(n)`
-/

namespace A013987.P13515038650078368422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023441 (n + 1) - A023441 n

end

end A013987.P13515038650078368422

namespace A013987

/-- `A023441(n+1)-A023441(n)` -/
def P13515038650078368422.Spec : Prop :=
  ∀ n, P13515038650078368422.a n = A013987 n

end A013987

/-! ## A013987.P5637977640437659425

`A212804(n)-A340988(A133263(n))`
-/

namespace A013987.P5637977640437659425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - A340988 ((A133263 n).toNat + 91)

end

end A013987.P5637977640437659425

namespace A013987

/-- `A212804(n)-A340988(A133263(n))` -/
def P5637977640437659425.Spec : Prop :=
  ∀ n, P5637977640437659425.a n = A013987 n

end A013987

/-! ## A013987.P6223728730912433276

`A000194(A174145(n))`
-/

namespace A013987.P6223728730912433276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A174145 n).toNat

end

end A013987.P6223728730912433276

namespace A013987

/-- `A000194(A174145(n))` -/
def P6223728730912433276.Spec : Prop :=
  ∀ n, P6223728730912433276.a n = A013987 n

end A013987

/-!
# A013988: Triangle read by rows, the inverse Bell transform of n!*binomial(5,n) (without column 0).

The programs for A013988, there is no canonical definition to state claims against.
-/

/-! ## A013988.P12649382381068601739

`and(p?[∑[2^n]], A144268(n+1))`
-/

namespace A013988.P12649382381068601739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A144268 (n + 1))

end

end A013988.P12649382381068601739

/-! ## A013988.P8423530107395417615

`A144268(A024647(n+1))`
-/

namespace A013988.P8423530107395417615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144268 (A024647 (n + 1)).toNat

end

end A013988.P8423530107395417615

/-! ## A013988.P4341804798647091568

`A144268(A024648(n+1))`
-/

namespace A013988.P4341804798647091568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144268 (A024648 (n + 1)).toNat

end

end A013988.P4341804798647091568

/-!
# A013989: a(n) = (n+1)*(a(n-1)/n + a(n-2)), with a(0)=1, a(1)=2.

The programs for A013989, the canonical program `A013989.P5298881847955433932` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013989 has offset 0).

The definition of A013989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013989.P15586735454205675835

`(n+1)*(a(n-1)/n+a(n-2))` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A013989.P15586735454205675835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) / (n : ℚ) + a (n - 2))

end

end A013989.P15586735454205675835

namespace A013989

/-- `(n+1)*(a(n-1)/n+a(n-2))` -/
def P15586735454205675835.Spec : Prop :=
  ∀ n, P15586735454205675835.a n = (A013989 n : ℚ)

end A013989

/-! ## A013989.P5298881847955433932

`A000085(n)*(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013989

/-- `A000085(n)*(n+1)` -/
def P5298881847955433932.Spec : Prop :=
  ∀ n, P5298881847955433932.a n = A013989 n

theorem P5298881847955433932.correct : P5298881847955433932.Spec := by
  intro n
  simp only [A013989]

end A013989

/-! ## A013989.P488521757407061640

`A000085(n+2)-A000085(n+1)`
-/

namespace A013989.P488521757407061640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 2) - A000085 (n + 1)

end

end A013989.P488521757407061640

namespace A013989

/-- `A000085(n+2)-A000085(n+1)` -/
def P488521757407061640.Spec : Prop :=
  ∀ n, P488521757407061640.a n = A013989 n

end A013989

/-! ## A013989.P5021816626900560695

`(n+1)*∏[(n-1)/a(n-1)+1]` with `a(0)=1`
-/

namespace A013989.P5021816626900560695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A013989.P5021816626900560695

namespace A013989

/-- `(n+1)*∏[(n-1)/a(n-1)+1]` -/
def P5021816626900560695.Spec : Prop :=
  ∀ n, P5021816626900560695.a n = (A013989 n : ℚ)

end A013989

/-! ## A013989.P5018018115835006323

`(n+1)*A000085(n)`
-/

namespace A013989.P5018018115835006323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000085 n

end

end A013989.P5018018115835006323

namespace A013989

/-- `(n+1)*A000085(n)` -/
def P5018018115835006323.Spec : Prop :=
  ∀ n, P5018018115835006323.a n = A013989 n

theorem P5018018115835006323.correct : P5018018115835006323.Spec := by
  intro n
  simp only [A013989, Nat.add_sub_cancel, A013989.P5018018115835006323.a, A013989.P5298881847955433932.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A013989

/-! ## A013989.P12768593666266905340

`(n+1)*A070895(∑[n])`
-/

namespace A013989.P12768593666266905340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A070895 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013989.P12768593666266905340

namespace A013989

/-- `(n+1)*A070895(∑[n])` -/
def P12768593666266905340.Spec : Prop :=
  ∀ n, P12768593666266905340.a n = A013989 n

end A013989

/-! ## A013989.P5033714379806574812

`(n+1)*A099020(∑[n])`
-/

namespace A013989.P5033714379806574812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013989.P5033714379806574812

namespace A013989

/-- `(n+1)*A099020(∑[n])` -/
def P5033714379806574812.Spec : Prop :=
  ∀ n, P5033714379806574812.a n = A013989 n

end A013989

/-! ## A013989.P14101891560456706969

`A245176(n)+A067897(n+2)`
-/

namespace A013989.P14101891560456706969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245176 n + A067897 (n + 2)

end

end A013989.P14101891560456706969

namespace A013989

/-- `A245176(n)+A067897(n+2)` -/
def P14101891560456706969.Spec : Prop :=
  ∀ n, P14101891560456706969.a n = A013989 n

end A013989

/-! ## A013989.P17709155653815230075

`Δ[a(n-1)+n*a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A013989.P17709155653815230075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + n * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A013989.P17709155653815230075

namespace A013989

/-- `Δ[a(n-1)+n*a(n-2)]` -/
def P17709155653815230075.Spec : Prop :=
  ∀ n, P17709155653815230075.a n = A013989 n

end A013989

/-! ## A013989.P7163340415589532058

`Δ[Δ[A245176(n)]]`
-/

namespace A013989.P7163340415589532058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013989.P7163340415589532058

namespace A013989

/-- `Δ[Δ[A245176(n)]]` -/
def P7163340415589532058.Spec : Prop :=
  ∀ n, P7163340415589532058.a n = A013989 n

end A013989

/-! ## A013989.P14688270463985581860

`Δ[record[A070895(n)]]`
-/

namespace A013989.P14688270463985581860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013989.P14688270463985581860

namespace A013989

/-- `Δ[record[A070895(n)]]` -/
def P14688270463985581860.Spec : Prop :=
  ∀ n, P14688270463985581860.a n = A013989 n

end A013989

/-! ## A013989.P2985592967663865551

`Δ[record[A099020(n)]]`
-/

namespace A013989.P2985592967663865551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013989.P2985592967663865551

namespace A013989

/-- `Δ[record[A099020(n)]]` -/
def P2985592967663865551.Spec : Prop :=
  ∀ n, P2985592967663865551.a n = A013989 n

end A013989

/-! ## A013989.P8735090910504404073

`Δ[record[A293808(n)]]`
-/

namespace A013989.P8735090910504404073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013989.P8735090910504404073

namespace A013989

/-- `Δ[record[A293808(n)]]` -/
def P8735090910504404073.Spec : Prop :=
  ∀ n, P8735090910504404073.a n = A013989 n

end A013989

/-! ## A013989.P5684520132701824982

`Δ[record[A293815(n)]]`
-/

namespace A013989.P5684520132701824982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013989.P5684520132701824982

namespace A013989

/-- `Δ[record[A293815(n)]]` -/
def P5684520132701824982.Spec : Prop :=
  ∀ n, P5684520132701824982.a n = A013989 n

end A013989

/-! ## A013989.P10708333107376769614

`Δ[A000085(n+1)]`
-/

namespace A013989.P10708333107376769614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013989.P10708333107376769614

namespace A013989

/-- `Δ[A000085(n+1)]` -/
def P10708333107376769614.Spec : Prop :=
  ∀ n, P10708333107376769614.a n = A013989 n

end A013989

/-! ## A013989.P4569425770979277465

`Δ[A001189(n+1)]`
-/

namespace A013989.P4569425770979277465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013989.P4569425770979277465

namespace A013989

/-- `Δ[A001189(n+1)]` -/
def P4569425770979277465.Spec : Prop :=
  ∀ n, P4569425770979277465.a n = A013989 n

end A013989

/-! ## A013989.P15410830098532857576

`Δ[A070895(∑[n+1])]`
-/

namespace A013989.P15410830098532857576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013989.P15410830098532857576

namespace A013989

/-- `Δ[A070895(∑[n+1])]` -/
def P15410830098532857576.Spec : Prop :=
  ∀ n, P15410830098532857576.a n = A013989 n

end A013989

/-! ## A013989.P7218445389500295110

`Δ[A099020(∑[n+1])]`
-/

namespace A013989.P7218445389500295110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013989.P7218445389500295110

namespace A013989

/-- `Δ[A099020(∑[n+1])]` -/
def P7218445389500295110.Spec : Prop :=
  ∀ n, P7218445389500295110.a n = A013989 n

end A013989

/-! ## A013989.P15636437095474609342

`Δ[Δ[A294129(n+1)]]`
-/

namespace A013989.P15636437095474609342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294129 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013989.P15636437095474609342

namespace A013989

/-- `Δ[Δ[A294129(n+1)]]` -/
def P15636437095474609342.Spec : Prop :=
  ∀ n, P15636437095474609342.a n = A013989 n

end A013989

/-! ## A013989.P12596485919769918446

`record[A099020(∑[n]+1)]`
-/

namespace A013989.P12596485919769918446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013989.P12596485919769918446

namespace A013989

/-- `record[A099020(∑[n]+1)]` -/
def P12596485919769918446.Spec : Prop :=
  ∀ n, P12596485919769918446.a n = A013989 n

end A013989

/-!
# A013990: Number of edge-disjoint paths between opposite corners of n X n grid.

The programs for A013990, there is no canonical definition to state claims against.
-/

/-! ## A013990.P9609470565968165949

`A251642(n!)`
-/

namespace A013990.P9609470565968165949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251642 (Nat.factorial n)

end

end A013990.P9609470565968165949

/-!
# A013991: Number of edge-disjoint paths between opposite corners of a 2 X n grid.

The programs for A013991, there is no canonical definition to state claims against.
-/

/-! ## A013991.P13025053268566612412

`A014017(n)+A004526(A150875(n))`
-/

namespace A013991.P13025053268566612412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 n + A004526 (A150875 n).toNat

end

end A013991.P13025053268566612412

/-! ## A013991.P15195241669858794219

`A065033(A150875(n)-A022166(n))`
-/

namespace A013991.P15195241669858794219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150875 n - A022166 n).toNat

end

end A013991.P15195241669858794219

/-! ## A013991.P6650697910020633669

`A123108(A150875(n)-A000122(n))`
-/

namespace A013991.P6650697910020633669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A150875 n - A000122 n).toNat

end

end A013991.P6650697910020633669

/-!
# A013992: Number of edge-disjoint paths between opposite corners of 3 X n grid.

The programs for A013992, there is no canonical definition to state claims against.
-/

/-! ## A013992.P1577902570100163266

`∏{e}[(2*n)!, n-1+#]`
-/

namespace A013992.P1577902570100163266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - 1 + (Nat.factorization (f1 n) p : ℤ))

end

end A013992.P1577902570100163266

/-!
# A013999: From applying the "rational mean" to the number e.

The programs for A013999, the canonical program `A013999.P15860351176091688218` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013999 has offset 0).

The definition of A013999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013999.P15860351176091688218

`(n+3)*a(n-1)-(2*n+1)*a(n-2)+n*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013999

/-- `(n+3)*a(n-1)-(2*n+1)*a(n-2)+n*a(n-3)` -/
def P15860351176091688218.Spec : Prop :=
  ∀ n, P15860351176091688218.a n = A013999 n

theorem P15860351176091688218.correct : P15860351176091688218.Spec := by
  intro n
  simp only [A013999]

end A013999

/-! ## A013999.P17858798941777453747

`∑[A184185(n+1)]+1`
-/

namespace A013999.P17858798941777453747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A013999.P17858798941777453747

namespace A013999

/-- `∑[A184185(n+1)]+1` -/
def P17858798941777453747.Spec : Prop :=
  ∀ n, P17858798941777453747.a n = A013999 n

end A013999

/-! ## A013999.P10872208438344106199

`abs(Δ[A227037(abs(1-n))])`
-/

namespace A013999.P10872208438344106199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227037 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A013999.P10872208438344106199

namespace A013999

/-- `abs(Δ[A227037(abs(1-n))])` -/
def P10872208438344106199.Spec : Prop :=
  ∀ n, P10872208438344106199.a n = A013999 n

end A013999

/-! ## A013999.P4217445722982493407

`∑[A184185(A184985(n+1))]`
-/

namespace A013999.P4217445722982493407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184185 (A184985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013999.P4217445722982493407

namespace A013999

/-- `∑[A184185(A184985(n+1))]` -/
def P4217445722982493407.Spec : Prop :=
  ∀ n, P4217445722982493407.a n = A013999 n

end A013999

/-! ## A013999.P5813674298623372120

`∑[A184185(A178334(n)+n)]`
-/

namespace A013999.P5813674298623372120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184185 (A178334 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013999.P5813674298623372120

namespace A013999

/-- `∑[A184185(A178334(n)+n)]` -/
def P5813674298623372120.Spec : Prop :=
  ∀ n, P5813674298623372120.a n = A013999 n

end A013999

/-! ## A013999.P18241130723050668592

`Δ[A227037(n)]-A184185(n+2)`
-/

namespace A013999.P18241130723050668592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A184185 (n + 2)

end

end A013999.P18241130723050668592

namespace A013999

/-- `Δ[A227037(n)]-A184185(n+2)` -/
def P18241130723050668592.Spec : Prop :=
  ∀ n, P18241130723050668592.a n = A013999 n

end A013999

