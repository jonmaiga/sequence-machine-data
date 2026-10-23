import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A158900: O.g.f.:G(G(x)-1)where G(x)=Sum_k>=0,k!*x^k.

The programs for A158900, there is no canonical definition to state claims against.
-/

/-! ## A158900.P14945463068785041027

`A339319(A002294(n))`
-/

namespace A158900.P14945463068785041027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339319 (A002294 n).toNat

end

end A158900.P14945463068785041027

/-! ## A158900.P2383623841261500305

`A008574(A008539(n!))`
-/

namespace A158900.P2383623841261500305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A008539 (Nat.factorial n)).toNat

end

end A158900.P2383623841261500305

/-!
# A158901: A051731 * (1, 1, 2, 3, 4, 5, ...).

The programs for A158901, the canonical program `A158901.P2411227311583190290` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158901 has offset 1).

The definition of A158901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065608, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158901.P2411227311583190290

`1+A065608(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158901

/-- `1+A065608(n+1)` -/
def P2411227311583190290.Spec : Prop :=
  ∀ n, P2411227311583190290.a n = A158901 (n + 1)

theorem P2411227311583190290.correct : P2411227311583190290.Spec := by
  intro n
  simp only [A158901, Nat.add_sub_cancel]

end A158901

/-! ## A158901.P15304280550359600655

`∑{d}[n+1, #-1]+1`
-/

namespace A158901.P15304280550359600655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) + 1

end

end A158901.P15304280550359600655

namespace A158901

/-- `∑{d}[n+1, #-1]+1` -/
def P15304280550359600655.Spec : Prop :=
  ∀ n, P15304280550359600655.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P1798621615560789058

`ceil(∑{d}[n+1, cos(3)+#])`
-/

namespace A158901.P1798621615560789058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (Real.cos (3 : ℝ) + (d : ℝ))⌉

end

end A158901.P1798621615560789058

namespace A158901

/-- `ceil(∑{d}[n+1, cos(3)+#])` -/
def P1798621615560789058.Spec : Prop :=
  ∀ n, P1798621615560789058.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P17372885040393231793

`∑{d}[n+1, (2*n)%#+1]`
-/

namespace A158901.P17372885040393231793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 * n % d + 1)

end

end A158901.P17372885040393231793

namespace A158901

/-- `∑{d}[n+1, (2*n)%#+1]` -/
def P17372885040393231793.Spec : Prop :=
  ∀ n, (P17372885040393231793.a n : ℤ) = A158901 (n + 1)

end A158901

/-! ## A158901.P7971952019684388395

`A137319(n+1)-n`
-/

namespace A158901.P7971952019684388395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1) - (n : ℤ)

end

end A158901.P7971952019684388395

namespace A158901

/-- `A137319(n+1)-n` -/
def P7971952019684388395.Spec : Prop :=
  ∀ n, P7971952019684388395.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P2000590348004780380

`A152770(n+1)+1+n`
-/

namespace A158901.P2000590348004780380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + 1 + (n : ℤ)

end

end A158901.P2000590348004780380

namespace A158901

/-- `A152770(n+1)+1+n` -/
def P2000590348004780380.Spec : Prop :=
  ∀ n, P2000590348004780380.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P15941449405662344388

`∑{d}[n+1, A028310(#-1)]`
-/

namespace A158901.P15941449405662344388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A028310 (d - 1)

end

end A158901.P15941449405662344388

namespace A158901

/-- `∑{d}[n+1, A028310(#-1)]` -/
def P15941449405662344388.Spec : Prop :=
  ∀ n, P15941449405662344388.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P11827745730192964658

`A330866(n+1)/(n+1)+1`
-/

namespace A158901.P11827745730192964658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330866 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A158901.P11827745730192964658

namespace A158901

/-- `A330866(n+1)/(n+1)+1` -/
def P11827745730192964658.Spec : Prop :=
  ∀ n, P11827745730192964658.a n = (A158901 (n + 1) : ℚ)

end A158901

/-! ## A158901.P15269838130264335510

`2*(n+1)-A152864(n+1)`
-/

namespace A158901.P15269838130264335510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A152864 (n + 1)

end

end A158901.P15269838130264335510

namespace A158901

/-- `2*(n+1)-A152864(n+1)` -/
def P15269838130264335510.Spec : Prop :=
  ∀ n, P15269838130264335510.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P4678615719670611018

`A054519(n)-A098798(n+1)`
-/

namespace A158901.P4678615719670611018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - A098798 (n + 1)

end

end A158901.P4678615719670611018

namespace A158901

/-- `A054519(n)-A098798(n+1)` -/
def P4678615719670611018.Spec : Prop :=
  ∀ n, P4678615719670611018.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P17034701264005200172

`A062968(n+1)+A001065(n+1)`
-/

namespace A158901.P17034701264005200172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) + A001065 (n + 1)

end

end A158901.P17034701264005200172

namespace A158901

/-- `A062968(n+1)+A001065(n+1)` -/
def P17034701264005200172.Spec : Prop :=
  ∀ n, P17034701264005200172.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P1737649107028733821

`A046520(n+1)+A039649(n+1)`
-/

namespace A158901.P1737649107028733821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1) + A039649 (n + 1)

end

end A158901.P1737649107028733821

namespace A158901

/-- `A046520(n+1)+A039649(n+1)` -/
def P1737649107028733821.Spec : Prop :=
  ∀ n, P1737649107028733821.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P1153124330931534355

`A152771(n+1)+A000005(n+1)`
-/

namespace A158901.P1153124330931534355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152771 (n + 1) + A000005 (n + 1)

end

end A158901.P1153124330931534355

namespace A158901

/-- `A152771(n+1)+A000005(n+1)` -/
def P1153124330931534355.Spec : Prop :=
  ∀ n, P1153124330931534355.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P11237918810183333760

`A152992(n+1)+A036234(n+1)`
-/

namespace A158901.P11237918810183333760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (n + 1) + A036234 (n + 1)

end

end A158901.P11237918810183333760

namespace A158901

/-- `A152992(n+1)+A036234(n+1)` -/
def P11237918810183333760.Spec : Prop :=
  ∀ n, P11237918810183333760.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P7525857978851008409

`A000203(n+1)-A032741(n+1)`
-/

namespace A158901.P7525857978851008409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A032741 (n + 1)

end

end A158901.P7525857978851008409

namespace A158901

/-- `A000203(n+1)-A032741(n+1)` -/
def P7525857978851008409.Spec : Prop :=
  ∀ n, P7525857978851008409.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P15619104319167894827

`A088580(n+1)-A000005(n+1)`
-/

namespace A158901.P15619104319167894827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A000005 (n + 1)

end

end A158901.P15619104319167894827

namespace A158901

/-- `A088580(n+1)-A000005(n+1)` -/
def P15619104319167894827.Spec : Prop :=
  ∀ n, P15619104319167894827.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P14879790758897659790

`A006218(n)+1-A098798(n+1)`
-/

namespace A158901.P14879790758897659790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + (1 - A098798 (n + 1))

end

end A158901.P14879790758897659790

namespace A158901

/-- `A006218(n)+1-A098798(n+1)` -/
def P14879790758897659790.Spec : Prop :=
  ∀ n, P14879790758897659790.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P8563585138952902385

`A064840(n+1)%A088580(n+1)`
-/

namespace A158901.P8563585138952902385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064840 (n + 1)) (A088580 (n + 1))

end

end A158901.P8563585138952902385

namespace A158901

/-- `A064840(n+1)%A088580(n+1)` -/
def P8563585138952902385.Spec : Prop :=
  ∀ n, P8563585138952902385.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P9222388483995328434

`A016789(n)-(A152864(n+1)+n)`
-/

namespace A158901.P9222388483995328434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A152864 (n + 1) + (n : ℤ))

end

end A158901.P9222388483995328434

namespace A158901

/-- `A016789(n)-(A152864(n+1)+n)` -/
def P9222388483995328434.Spec : Prop :=
  ∀ n, P9222388483995328434.a n = A158901 (n + 1)

end A158901

/-! ## A158901.P10965503759285463302

`A000203(n+1)+1-Δ[A006218(n)]`
-/

namespace A158901.P10965503759285463302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A158901.P10965503759285463302

namespace A158901

/-- `A000203(n+1)+1-Δ[A006218(n)]` -/
def P10965503759285463302.Spec : Prop :=
  ∀ n, P10965503759285463302.a n = A158901 (n + 1)

end A158901

/-!
# A158902: Triangle read by rows: the matrix product A051731 * A158821.

The programs for A158902, the canonical program `A158902.P4390019292788329709` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158902 has offset 1).

The definition of A158902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158902.P6651522781255188929

`A065608(A130296(n+1))+A051731(n+1)`
-/

namespace A158902.P6651522781255188929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A130296 (n + 1)).toNat + A051731 (n + 1)

end

end A158902.P6651522781255188929

namespace A158902

/-- `A065608(A130296(n+1))+A051731(n+1)` -/
def P6651522781255188929.Spec : Prop :=
  ∀ n, P6651522781255188929.a n = A158902 (n + 1)

end A158902

/-! ## A158902.P4390019292788329709

`A158906(n+1)+A152770(A130296(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A158902

/-- `A158906(n+1)+A152770(A130296(n+1))` -/
def P4390019292788329709.Spec : Prop :=
  ∀ n, P4390019292788329709.a n = A158902 (n + 1)

theorem P4390019292788329709.correct : P4390019292788329709.Spec := by
  intro n
  simp only [A158902, Nat.add_sub_cancel]

end A158902

/-! ## A158902.P10853483537824287167

`A065608(A130296(n+1))+C(2, A173541(n+1)²)`
-/

namespace A158902.P10853483537824287167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A130296 (n + 1)).toNat + (Nat.choose 2 (A173541 (n + 1) ^ 2).toNat : ℤ)

end

end A158902.P10853483537824287167

namespace A158902

/-- `A065608(A130296(n+1))+C(2, A173541(n+1)²)` -/
def P10853483537824287167.Spec : Prop :=
  ∀ n, P10853483537824287167.a n = A158902 (n + 1)

end A158902

/-! ## A158902.P6794252084997516393

`A065608(A130296(n+1))+floor(1/A107435(n+1))`
-/

namespace A158902.P6794252084997516393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A130296 (n + 1)).toNat + ⌊1 / (A107435 (n + 1) : ℚ)⌋

end

end A158902.P6794252084997516393

namespace A158902

/-- `A065608(A130296(n+1))+floor(1/A107435(n+1))` -/
def P6794252084997516393.Spec : Prop :=
  ∀ n, P6794252084997516393.a n = A158902 (n + 1)

end A158902

/-! ## A158902.P15902253113049961393

`A065608(A130296(n+1))+ceil(A286239(n+1)/(n+1))`
-/

namespace A158902.P15902253113049961393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A130296 (n + 1)).toNat + ⌈(A286239 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A158902.P15902253113049961393

namespace A158902

/-- `A065608(A130296(n+1))+ceil(A286239(n+1)/(n+1))` -/
def P15902253113049961393.Spec : Prop :=
  ∀ n, P15902253113049961393.a n = A158902 (n + 1)

end A158902

/-! ## A158902.P2798542297812386046

`A065608(A130296(n+1))+(2^A127093(n+1)-1)%2`
-/

namespace A158902.P2798542297812386046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A130296 (n + 1)).toNat + Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A127093 (n + 1) : ℤ) - 1)) 2

end

end A158902.P2798542297812386046

namespace A158902

/-- `A065608(A130296(n+1))+(2^A127093(n+1)-1)%2` -/
def P2798542297812386046.Spec : Prop :=
  ∀ n, P2798542297812386046.a n = A158902 (n + 1)

end A158902

/-! ## A158902.P490727476432675158

`A065608(A130296(n+1))+A000007(A048158(n+1))`
-/

namespace A158902.P490727476432675158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A130296 (n + 1)).toNat + A000007 (A048158 (n + 1)).toNat

end

end A158902.P490727476432675158

namespace A158902

/-- `A065608(A130296(n+1))+A000007(A048158(n+1))` -/
def P490727476432675158.Spec : Prop :=
  ∀ n, P490727476432675158.a n = A158902 (n + 1)

end A158902

/-! ## A158902.P3041814297664794592

`A065608(A130296(n+1))+1-A000007(A054522(n+1))`
-/

namespace A158902.P3041814297664794592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A130296 (n + 1)).toNat + (1 - A000007 (A054522 (n + 1)).toNat)

end

end A158902.P3041814297664794592

namespace A158902

/-- `A065608(A130296(n+1))+1-A000007(A054522(n+1))` -/
def P3041814297664794592.Spec : Prop :=
  ∀ n, P3041814297664794592.a n = A158902 (n + 1)

end A158902

/-!
# A158905: Triangle read by rows, A000012 * A158902.

The programs for A158905, there is no canonical definition to state claims against.
-/

/-! ## A158905.P13084238836236116995

`gcd(A055562(n), A106234(A187829(n+1)))`
-/

namespace A158905.P13084238836236116995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055562 n) (A106234 (A187829 (n + 1)).toNat)

end

end A158905.P13084238836236116995

/-! ## A158905.P4088177429212537077

`gcd(A132393(n), A140396(A223894(n+1)))`
-/

namespace A158905.P4088177429212537077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132393 n) (A140396 (A223894 (n + 1)).toNat)

end

end A158905.P4088177429212537077

/-! ## A158905.P14643453559815199685

`gcd(A052499(A187829(n+1)), A285229(n))`
-/

namespace A158905.P14643453559815199685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052499 (A187829 (n + 1)).toNat) (A285229 n)

end

end A158905.P14643453559815199685

/-! ## A158905.P3045587820114366156

`A095791(A010766(n+1)^A131821(n+1))`
-/

namespace A158905.P3045587820114366156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (SequenceMachineLib.roundAway ((A010766 (n + 1) : ℚ) ^ (A131821 (n + 1) : ℤ))).toNat

end

end A158905.P3045587820114366156

/-! ## A158905.P2943456396016397125

`A095791(A010766(n+1)^A144113(n+1))`
-/

namespace A158905.P2943456396016397125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (SequenceMachineLib.roundAway ((A010766 (n + 1) : ℚ) ^ (A144113 (n + 1) : ℤ))).toNat

end

end A158905.P2943456396016397125

/-!
# A158906: Triangle read by rows: the matrix product A158821 * A051731.

The programs for A158906, the canonical program `A158906.P5702865832035020583` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158906 has offset 1).

The definition of A158906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158906.P5380836430384049784

`C(A123229(n+1), round(sqrt(2*n)))`
-/

namespace A158906.P5380836430384049784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A123229 (n + 1)).toNat (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A158906.P5380836430384049784

namespace A158906

/-- `C(A123229(n+1), round(sqrt(2*n)))` -/
def P5380836430384049784.Spec : Prop :=
  ∀ n, (P5380836430384049784.a n : ℤ) = A158906 (n + 1)

end A158906

/-! ## A158906.P18149886324096889683

`C(A127446(n+1), round(sqrt(2*n)))`
-/

namespace A158906.P18149886324096889683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A127446 (n + 1)).toNat (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A158906.P18149886324096889683

namespace A158906

/-- `C(A127446(n+1), round(sqrt(2*n)))` -/
def P18149886324096889683.Spec : Prop :=
  ∀ n, (P18149886324096889683.a n : ℤ) = A158906 (n + 1)

end A158906

/-! ## A158906.P14381883825332599146

`(round(sqrt(2*n))*char[∑[n]]+1)*A051731(n+1)`
-/

namespace A158906.P14381883825332599146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1) * A051731 (n + 1)

end

end A158906.P14381883825332599146

namespace A158906

/-- `(round(sqrt(2*n))*char[∑[n]]+1)*A051731(n+1)` -/
def P14381883825332599146.Spec : Prop :=
  ∀ n, P14381883825332599146.a n = A158906 (n + 1)

end A158906

/-! ## A158906.P5702865832035020583

`ceil(A126988(n+1)/A007318(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A158906

/-- `ceil(A126988(n+1)/A007318(n))` -/
def P5702865832035020583.Spec : Prop :=
  ∀ n, P5702865832035020583.a n = A158906 (n + 1)

theorem P5702865832035020583.correct : P5702865832035020583.Spec := by
  intro n
  simp only [A158906, Nat.add_sub_cancel]

end A158906

/-! ## A158906.P14759976852955405227

`A051731(n+1)*A128260(n+1)`
-/

namespace A158906.P14759976852955405227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A128260 (n + 1)

end

end A158906.P14759976852955405227

namespace A158906

/-- `A051731(n+1)*A128260(n+1)` -/
def P14759976852955405227.Spec : Prop :=
  ∀ n, P14759976852955405227.a n = A158906 (n + 1)

end A158906

/-! ## A158906.P17291704233374434161

`A051731(n+1)*A130296(n+1)`
-/

namespace A158906.P17291704233374434161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A130296 (n + 1)

end

end A158906.P17291704233374434161

namespace A158906

/-- `A051731(n+1)*A130296(n+1)` -/
def P17291704233374434161.Spec : Prop :=
  ∀ n, P17291704233374434161.a n = A158906 (n + 1)

end A158906

/-! ## A158906.P1467449111744244342

`A128260(n+1)*A304569(n+1)`
-/

namespace A158906.P1467449111744244342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128260 (n + 1) * A304569 (n + 1)

end

end A158906.P1467449111744244342

namespace A158906

/-- `A128260(n+1)*A304569(n+1)` -/
def P1467449111744244342.Spec : Prop :=
  ∀ n, P1467449111744244342.a n = A158906 (n + 1)

end A158906

/-! ## A158906.P2303034352460851526

`floor(A130296(n+1)/A107435(n+1))`
-/

namespace A158906.P2303034352460851526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130296 (n + 1) : ℚ) / (A107435 (n + 1) : ℚ)⌋

end

end A158906.P2303034352460851526

namespace A158906

/-- `floor(A130296(n+1)/A107435(n+1))` -/
def P2303034352460851526.Spec : Prop :=
  ∀ n, P2303034352460851526.a n = A158906 (n + 1)

end A158906

/-! ## A158906.P12767827961543910706

`C(A130296(n+1), A173541(n+1)+1)`
-/

namespace A158906.P12767827961543910706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130296 (n + 1)).toNat (A173541 (n + 1) + 1).toNat

end

end A158906.P12767827961543910706

namespace A158906

/-- `C(A130296(n+1), A173541(n+1)+1)` -/
def P12767827961543910706.Spec : Prop :=
  ∀ n, (P12767827961543910706.a n : ℤ) = A158906 (n + 1)

end A158906

/-! ## A158906.P17840192930633914774

`A130296(n+1)-A000007(A054522(n+1))`
-/

namespace A158906.P17840192930633914774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) - A000007 (A054522 (n + 1)).toNat

end

end A158906.P17840192930633914774

namespace A158906

/-- `A130296(n+1)-A000007(A054522(n+1))` -/
def P17840192930633914774.Spec : Prop :=
  ∀ n, P17840192930633914774.a n = A158906 (n + 1)

end A158906

/-! ## A158906.P15341045255920963264

`A000007(A048158(n+1))*A130296(n+1)`
-/

namespace A158906.P15341045255920963264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A048158 (n + 1)).toNat * A130296 (n + 1)

end

end A158906.P15341045255920963264

namespace A158906

/-- `A000007(A048158(n+1))*A130296(n+1)` -/
def P15341045255920963264.Spec : Prop :=
  ∀ n, P15341045255920963264.a n = A158906 (n + 1)

end A158906

/-! ## A158906.P5688012743418163635

`A004736(n+1)+A051731(n+1)-A193592(n)`
-/

namespace A158906.P5688012743418163635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A051731 (n + 1) - A193592 n)

end

end A158906.P5688012743418163635

namespace A158906

/-- `A004736(n+1)+A051731(n+1)-A193592(n)` -/
def P5688012743418163635.Spec : Prop :=
  ∀ n, P5688012743418163635.a n = A158906 (n + 1)

end A158906

/-! ## A158906.P5863710006779710285

`ceil(A126988(n+1)/A001498(n))`
-/

namespace A158906.P5863710006779710285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126988 (n + 1) : ℚ) / (A001498 n : ℚ)⌉

end

end A158906.P5863710006779710285

namespace A158906

/-- `ceil(A126988(n+1)/A001498(n))` -/
def P5863710006779710285.Spec : Prop :=
  ∀ n, P5863710006779710285.a n = A158906 (n + 1)

end A158906

/-! ## A158906.P12766419886615450140

`A051731(n+1)*A309229(n+1)`
-/

namespace A158906.P12766419886615450140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A309229 (n + 1)

end

end A158906.P12766419886615450140

namespace A158906

/-- `A051731(n+1)*A309229(n+1)` -/
def P12766419886615450140.Spec : Prop :=
  ∀ n, P12766419886615450140.a n = A158906 (n + 1)

end A158906

/-!
# A158907: Row sums of triangle A158906.

The programs for A158907, the canonical program `A158907.P7286143353781437512` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158907 has offset 1).

The definition of A158907 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158907.P7286143353781437512

`A032741(n+1)+n+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158907

/-- `A032741(n+1)+n+1` -/
def P7286143353781437512.Spec : Prop :=
  ∀ n, P7286143353781437512.a n = A158907 (n + 1)

theorem P7286143353781437512.correct : P7286143353781437512.Spec := by
  intro n
  simp only [A158907, Nat.add_sub_cancel]

end A158907

/-! ## A158907.P8774197854632613714

`∏{e}[n+1, #+1]+n`
-/

namespace A158907.P8774197854632613714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + n

end

end A158907.P8774197854632613714

namespace A158907

/-- `∏{e}[n+1, #+1]+n` -/
def P8774197854632613714.Spec : Prop :=
  ∀ n, (P8774197854632613714.a n : ℤ) = A158907 (n + 1)

end A158907

/-! ## A158907.P7685340072602595273

`∑{d}[n+1, gcd(n, #)]+n`
-/

namespace A158907.P7685340072602595273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d + n

end

end A158907.P7685340072602595273

namespace A158907

/-- `∑{d}[n+1, gcd(n, #)]+n` -/
def P7685340072602595273.Spec : Prop :=
  ∀ n, (P7685340072602595273.a n : ℤ) = A158907 (n + 1)

end A158907

/-! ## A158907.P10953635714874308591

`n-∑{d}[n+1, or(#, -1)]`
-/

namespace A158907.P10953635714874308591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1)

end

end A158907.P10953635714874308591

namespace A158907

/-- `n-∑{d}[n+1, or(#, -1)]` -/
def P10953635714874308591.Spec : Prop :=
  ∀ n, P10953635714874308591.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P3555965529701143962

`∑{d}[n+1, ceil(1/#)]+n`
-/

namespace A158907.P3555965529701143962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ + (n : ℤ)

end

end A158907.P3555965529701143962

namespace A158907

/-- `∑{d}[n+1, ceil(1/#)]+n` -/
def P3555965529701143962.Spec : Prop :=
  ∀ n, P3555965529701143962.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P12469274960342206732

`∑{d}[n+1, ceil(#^(#-n))]`
-/

namespace A158907.P12469274960342206732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈(d : ℚ) ^ ((d : ℤ) - (n : ℤ) : ℤ)⌉

end

end A158907.P12469274960342206732

namespace A158907

/-- `∑{d}[n+1, ceil(#^(#-n))]` -/
def P12469274960342206732.Spec : Prop :=
  ∀ n, P12469274960342206732.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P1559826848221306352

`Δ[A006218(n)]+n`
-/

namespace A158907.P1559826848221306352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A158907.P1559826848221306352

namespace A158907

/-- `Δ[A006218(n)]+n` -/
def P1559826848221306352.Spec : Prop :=
  ∀ n, P1559826848221306352.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P6274239765713988430

`Δ[A054519(n)]+n`
-/

namespace A158907.P6274239765713988430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A158907.P6274239765713988430

namespace A158907

/-- `Δ[A054519(n)]+n` -/
def P6274239765713988430.Spec : Prop :=
  ∀ n, P6274239765713988430.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P6268194328844116066

`A062249(n+1)-1`
-/

namespace A158907.P6268194328844116066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - 1

end

end A158907.P6268194328844116066

namespace A158907

/-- `A062249(n+1)-1` -/
def P6268194328844116066.Spec : Prop :=
  ∀ n, P6268194328844116066.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P2410662232309981457

`A000005(n+1)+n`
-/

namespace A158907.P2410662232309981457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ)

end

end A158907.P2410662232309981457

namespace A158907

/-- `A000005(n+1)+n` -/
def P2410662232309981457.Spec : Prop :=
  ∀ n, P2410662232309981457.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P14347255050549245727

`∑[Δ[A032741(n)]+1]`
-/

namespace A158907.P14347255050549245727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158907.P14347255050549245727

namespace A158907

/-- `∑[Δ[A032741(n)]+1]` -/
def P14347255050549245727.Spec : Prop :=
  ∀ n, P14347255050549245727.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P2187771000376749073

`abs(Δ[A139432(n)])+n`
-/

namespace A158907.P2187771000376749073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + (n : ℤ)

end

end A158907.P2187771000376749073

namespace A158907

/-- `abs(Δ[A139432(n)])+n` -/
def P2187771000376749073.Spec : Prop :=
  ∀ n, P2187771000376749073.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P11962100052893905832

`abs(A329484(n+1))+n`
-/

namespace A158907.P11962100052893905832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329484 (n + 1)| + (n : ℤ)

end

end A158907.P11962100052893905832

namespace A158907

/-- `abs(A329484(n+1))+n` -/
def P11962100052893905832.Spec : Prop :=
  ∀ n, P11962100052893905832.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P16156411517805195487

`sqrt(A035116(n+1))+n`
-/

namespace A158907.P16156411517805195487
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ) + (n : ℝ)

end

end A158907.P16156411517805195487

namespace A158907

/-- `sqrt(A035116(n+1))+n` -/
def P16156411517805195487.Spec : Prop :=
  ∀ n, P16156411517805195487.a n = (A158907 (n + 1) : ℝ)

end A158907

/-! ## A158907.P3991253613811848056

`log2(A338506(n+1))+n`
-/

namespace A158907.P3991253613811848056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A338506 (n + 1) : ℝ) + (n : ℝ)

end

end A158907.P3991253613811848056

namespace A158907

/-- `log2(A338506(n+1))+n` -/
def P3991253613811848056.Spec : Prop :=
  ∀ n, P3991253613811848056.a n = (A158907 (n + 1) : ℝ)

end A158907

/-! ## A158907.P15490107737820311711

`∑[A341062(n+1)]+n`
-/

namespace A158907.P15490107737820311711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A158907.P15490107737820311711

namespace A158907

/-- `∑[A341062(n+1)]+n` -/
def P15490107737820311711.Spec : Prop :=
  ∀ n, P15490107737820311711.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P5463690269694776792

`A334954(n+1)-1+n`
-/

namespace A158907.P5463690269694776792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - 1 + (n : ℤ)

end

end A158907.P5463690269694776792

namespace A158907

/-- `A334954(n+1)-1+n` -/
def P5463690269694776792.Spec : Prop :=
  ∀ n, P5463690269694776792.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P734068274247579902

`A140482(n+1)-(n+2)`
-/

namespace A158907.P734068274247579902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140482 (n + 1) - (n + 2 : ℤ)

end

end A158907.P734068274247579902

namespace A158907

/-- `A140482(n+1)-(n+2)` -/
def P734068274247579902.Spec : Prop :=
  ∀ n, P734068274247579902.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P5241607529221659197

`2-A378216(n+1)+n`
-/

namespace A158907.P5241607529221659197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A378216 (n + 1) + (n : ℤ)

end

end A158907.P5241607529221659197

namespace A158907

/-- `2-A378216(n+1)+n` -/
def P5241607529221659197.Spec : Prop :=
  ∀ n, P5241607529221659197.a n = A158907 (n + 1)

end A158907

/-! ## A158907.P16695538941367616154

`A320111(2*(n+1))+n`
-/

namespace A158907.P16695538941367616154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) + (n : ℤ)

end

end A158907.P16695538941367616154

namespace A158907

/-- `A320111(2*(n+1))+n` -/
def P16695538941367616154.Spec : Prop :=
  ∀ n, P16695538941367616154.a n = A158907 (n + 1)

end A158907

/-!
# A158908: First differences of A061238.

The programs for A158908, the canonical program `A158908.P17227515781487146945` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158908 has offset 1).

The definition of A158908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158908.P17227515781487146945

`p?[9*n+11]-p?[9*n+2]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158908

/-- `p?[9*n+11]-p?[9*n+2]` -/
def P17227515781487146945.Spec : Prop :=
  ∀ n, P17227515781487146945.a n = A158908 (n + 1)

theorem P17227515781487146945.correct : P17227515781487146945.Spec := by
  intro n
  simp only [A158908, Nat.add_sub_cancel]

end A158908

/-! ## A158908.P17618263160097767342

`Δ[p?[9*n+2]]`
-/

namespace A158908.P17618263160097767342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A158908.P17618263160097767342

namespace A158908

/-- `Δ[p?[9*n+2]]` -/
def P17618263160097767342.Spec : Prop :=
  ∀ n, P17618263160097767342.a n = A158908 (n + 1)

end A158908

/-! ## A158908.P9332095849896515364

`abs(Δ[p?[a(n-1)+9]])` with `a(0)=2`
-/

namespace A158908.P9332095849896515364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A158908.P9332095849896515364

namespace A158908

/-- `abs(Δ[p?[a(n-1)+9]])` -/
def P9332095849896515364.Spec : Prop :=
  ∀ n, P9332095849896515364.a n = A158908 (n + 1)

end A158908

/-! ## A158908.P13472381281502417536

`Δ[A061238(n+1)]`
-/

namespace A158908.P13472381281502417536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158908.P13472381281502417536

namespace A158908

/-- `Δ[A061238(n+1)]` -/
def P13472381281502417536.Spec : Prop :=
  ∀ n, P13472381281502417536.a n = A158908 (n + 1)

end A158908

/-! ## A158908.P16980029031990198806

`Δ[9*A024907(n+1)]`
-/

namespace A158908.P16980029031990198806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A024907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158908.P16980029031990198806

namespace A158908

/-- `Δ[9*A024907(n+1)]` -/
def P16980029031990198806.Spec : Prop :=
  ∀ n, P16980029031990198806.a n = A158908 (n + 1)

end A158908

/-! ## A158908.P16048546787508410407

`A061238(n+2)-A061238(n+1)`
-/

namespace A158908.P16048546787508410407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 2) - A061238 (n + 1)

end

end A158908.P16048546787508410407

namespace A158908

/-- `A061238(n+2)-A061238(n+1)` -/
def P16048546787508410407.Spec : Prop :=
  ∀ n, P16048546787508410407.a n = A158908 (n + 1)

end A158908

/-! ## A158908.P798967630971199393

`Δ[record[A006530(9*n+2)]]`
-/

namespace A158908.P798967630971199393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (9 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158908.P798967630971199393

namespace A158908

/-- `Δ[record[A006530(9*n+2)]]` -/
def P798967630971199393.Spec : Prop :=
  ∀ n, P798967630971199393.a n = A158908 (n + 1)

end A158908

/-! ## A158908.P17379029980711781351

`Δ[record[A020639(9*n+2)]]`
-/

namespace A158908.P17379029980711781351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158908.P17379029980711781351

namespace A158908

/-- `Δ[record[A020639(9*n+2)]]` -/
def P17379029980711781351.Spec : Prop :=
  ∀ n, P17379029980711781351.a n = A158908 (n + 1)

end A158908

/-! ## A158908.P16062215389468590765

`Δ[record[A000010(∑{p}[9*n+2, #])]]`
-/

namespace A158908.P16062215389468590765
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158908.P16062215389468590765

namespace A158908

/-- `Δ[record[A000010(∑{p}[9*n+2, #])]]` -/
def P16062215389468590765.Spec : Prop :=
  ∀ n, P16062215389468590765.a n = A158908 (n + 1)

end A158908

/-! ## A158908.P12467141270138008232

`Δ[record[A014963(9*n+2)]]`
-/

namespace A158908.P12467141270138008232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158908.P12467141270138008232

namespace A158908

/-- `Δ[record[A014963(9*n+2)]]` -/
def P12467141270138008232.Spec : Prop :=
  ∀ n, P12467141270138008232.a n = A158908 (n + 1)

end A158908

/-!
# A158909: Riordan array (1/((1-x)(1-x^2)), x/(1-x)^2). Triangle read by rows, T(n,k) for 0 <= k <= n.

The programs for A158909, there is no canonical definition to state claims against.
-/

/-! ## A158909.P17555091031606828287

`A092879(A061579(n))`
-/

namespace A158909.P17555091031606828287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (A061579 n).toNat

end

end A158909.P17555091031606828287

/-! ## A158909.P8111675182452242218

`A092879(A038722(n+1)-1)`
-/

namespace A158909.P8111675182452242218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (A038722 (n + 1) - 1).toNat

end

end A158909.P8111675182452242218

/-! ## A158909.P14854656976975203821

`A092879(A038722(n+2))`
-/

namespace A158909.P14854656976975203821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (A038722 (n + 2)).toNat

end

end A158909.P14854656976975203821

/-! ## A158909.P5613917578707218069

`abs(A267483(Δ[n²]))`
-/

namespace A158909.P5613917578707218069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A267483 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A158909.P5613917578707218069

/-! ## A158909.P4071853307374036856

`A097807(n)*A267483(2*n+1)`
-/

namespace A158909.P4071853307374036856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A267483 (2 * n + 1)

end

end A158909.P4071853307374036856

/-! ## A158909.P4031249042192054767

`gcd(A000038(n), A267483(2*n+1))`
-/

namespace A158909.P4031249042192054767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A267483 (2 * n + 1))

end

end A158909.P4031249042192054767

/-! ## A158909.P2224325697044280891

`sqrt(A267483(2*n+1)^(2%A027578(n)))`
-/

namespace A158909.P2224325697044280891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A267483 (2 * n + 1) : ℚ) ^ (Int.tmod 2 (A027578 n) : ℤ) : ℝ)

end

end A158909.P2224325697044280891

/-! ## A158909.P17982136627547323154

`abs(A267483(2*n+1)+A007949(3*n+4))`
-/

namespace A158909.P17982136627547323154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A267483 (2 * n + 1) + A007949 (3 * n + 4)|

end

end A158909.P17982136627547323154

/-! ## A158909.P10794970163206049354

`A267483(A005408(n))/A097807(n)`
-/

namespace A158909.P10794970163206049354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267483 (A005408 n).toNat : ℚ) / (A097807 n : ℚ)

end

end A158909.P10794970163206049354

/-! ## A158909.P4092372476788376021

`lcm(A267483(2*n+1), A318829(A000040(n+1)))`
-/

namespace A158909.P4092372476788376021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A267483 (2 * n + 1)) (A318829 (A000040 (n + 1)).toNat)

end

end A158909.P4092372476788376021

/-! ## A158909.P17103940463759191807

`abs(A267483(2*n+1)%A252177(n+1))`
-/

namespace A158909.P17103940463759191807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A267483 (2 * n + 1)) (A252177 (n + 1))|

end

end A158909.P17103940463759191807

/-! ## A158909.P2320714130750406354

`∑{d}[A267483(2*n+1), A000010(#)]`
-/

namespace A158909.P2320714130750406354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267483 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A158909.P2320714130750406354

/-!
# A158910: First Differences of A061240.

The programs for A158910, the canonical program `A158910.P625106485375867447` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158910 has offset 1).

The definition of A158910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158910.P625106485375867447

`Δ[p?[9*n-4]]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158910

/-- `Δ[p?[9*n-4]]` -/
def P625106485375867447.Spec : Prop :=
  ∀ n, P625106485375867447.a n = A158910 (n + 1)

theorem P625106485375867447.correct : P625106485375867447.Spec := by
  intro n
  simp only [A158910, Nat.add_sub_cancel]

end A158910

/-! ## A158910.P4416435429847325461

`abs(Δ[p?[9*n+5]])`
-/

namespace A158910.P4416435429847325461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A158910.P4416435429847325461

namespace A158910

/-- `abs(Δ[p?[9*n+5]])` -/
def P4416435429847325461.Spec : Prop :=
  ∀ n, P4416435429847325461.a n = A158910 (n + 1)

end A158910

/-! ## A158910.P8847081755340736815

`Δ[A061240(n+1)]`
-/

namespace A158910.P8847081755340736815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158910.P8847081755340736815

namespace A158910

/-- `Δ[A061240(n+1)]` -/
def P8847081755340736815.Spec : Prop :=
  ∀ n, P8847081755340736815.a n = A158910 (n + 1)

end A158910

/-! ## A158910.P3325349590530666334

`A061240(n+2)-A061240(n+1)`
-/

namespace A158910.P3325349590530666334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 2) - A061240 (n + 1)

end

end A158910.P3325349590530666334

namespace A158910

/-- `A061240(n+2)-A061240(n+1)` -/
def P3325349590530666334.Spec : Prop :=
  ∀ n, P3325349590530666334.a n = A158910 (n + 1)

end A158910

/-! ## A158910.P9569711576977261188

`Δ[A000040(A163595(n+1))]`
-/

namespace A158910.P9569711576977261188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A163595 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158910.P9569711576977261188

namespace A158910

/-- `Δ[A000040(A163595(n+1))]` -/
def P9569711576977261188.Spec : Prop :=
  ∀ n, P9569711576977261188.a n = A158910 (n + 1)

end A158910

/-! ## A158910.P12697644553482142028

`Δ[record[A006530(3*(6*n+1)+2)]]`
-/

namespace A158910.P12697644553482142028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * (6 * n + 1) + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158910.P12697644553482142028

namespace A158910

/-- `Δ[record[A006530(3*(6*n+1)+2)]]` -/
def P12697644553482142028.Spec : Prop :=
  ∀ n, P12697644553482142028.a n = A158910 (n + 1)

end A158910

/-! ## A158910.P13785808877854435597

`Δ[or(1, record[A020639(2*n+7*n+5)])]`
-/

namespace A158910.P13785808877854435597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + (7 * n + 5))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158910.P13785808877854435597

namespace A158910

/-- `Δ[or(1, record[A020639(2*n+7*n+5)])]` -/
def P13785808877854435597.Spec : Prop :=
  ∀ n, P13785808877854435597.a n = A158910 (n + 1)

end A158910

/-! ## A158910.P9011827721100174589

`Δ[A143988(A024909(n+1))]`
-/

namespace A158910.P9011827721100174589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (A024909 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158910.P9011827721100174589

namespace A158910

/-- `Δ[A143988(A024909(n+1))]` -/
def P9011827721100174589.Spec : Prop :=
  ∀ n, P9011827721100174589.a n = A158910 (n + 1)

end A158910

/-! ## A158910.P2892154568814955080

`p?[A017221(n+1)]-p?[A017221(n)]`
-/

namespace A158910.P2892154568814955080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A158910.P2892154568814955080

namespace A158910

/-- `p?[A017221(n+1)]-p?[A017221(n)]` -/
def P2892154568814955080.Spec : Prop :=
  ∀ n, P2892154568814955080.a n = A158910 (n + 1)

end A158910

/-! ## A158910.P18374612115222019714

`p?[A225539(n+2)]-p?[A225539(2*n+1)]`
-/

namespace A158910.P18374612115222019714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225539 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225539 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A158910.P18374612115222019714

namespace A158910

/-- `p?[A225539(n+2)]-p?[A225539(2*n+1)]` -/
def P18374612115222019714.Spec : Prop :=
  ∀ n, P18374612115222019714.a n = A158910 (n + 1)

end A158910

/-! ## A158910.P14413340676528216220

`p?[A168213(2*(n+1))]-p?[9*n-4]`
-/

namespace A158910.P14413340676528216220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168213 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A158910.P14413340676528216220

namespace A158910

/-- `p?[A168213(2*(n+1))]-p?[9*n-4]` -/
def P14413340676528216220.Spec : Prop :=
  ∀ n, P14413340676528216220.a n = A158910 (n + 1)

end A158910

/-! ## A158910.P7747251402129342769

`Δ[record[A014963(9*n+5)]]`
-/

namespace A158910.P7747251402129342769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158910.P7747251402129342769

namespace A158910

/-- `Δ[record[A014963(9*n+5)]]` -/
def P7747251402129342769.Spec : Prop :=
  ∀ n, P7747251402129342769.a n = A158910 (n + 1)

end A158910

/-!
# A158911: Numbers of the form 2^i*5^j - 1.

The programs for A158911, there is no canonical definition to state claims against.
-/

/-! ## A158911.P9023324798510671556

`A003592(n+1)-1`
-/

namespace A158911.P9023324798510671556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1) - 1

end

end A158911.P9023324798510671556

/-! ## A158911.P16112462288081406158

`A086761(n+1)/5-1`
-/

namespace A158911.P16112462288081406158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086761 (n + 1) : ℚ) / 5 - 1

end

end A158911.P16112462288081406158

/-! ## A158911.P14242517114601217519

`A033846(n+1)/10-1`
-/

namespace A158911.P14242517114601217519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033846 (n + 1) : ℚ) / 10 - 1

end

end A158911.P14242517114601217519

/-! ## A158911.P18351574808036778225

`record[A003592(A328397(n))-1]`
-/

namespace A158911.P18351574808036778225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (A328397 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158911.P18351574808036778225

/-! ## A158911.P11859586334804706531

`∑[A164768(n+1)]-A164768(n+1)`
-/

namespace A158911.P11859586334804706531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A164768 (n + 1)

end

end A158911.P11859586334804706531

/-! ## A158911.P8998873414240637643

`∪[A025612(n+1), A025625(n+1)]-1`
-/

namespace A158911.P8998873414240637643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025625 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158911.P8998873414240637643

/-! ## A158911.P7577706957436998624

`∪[A054774(n+1), A054901(n+1)]-1`
-/

namespace A158911.P7577706957436998624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054901 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158911.P7577706957436998624

/-! ## A158911.P18023850181435255099

`A008683(A030059(n+1))+A003592(n+1)`
-/

namespace A158911.P18023850181435255099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A030059 (n + 1)).toNat + A003592 (n + 1)

end

end A158911.P18023850181435255099

/-! ## A158911.P1489562731103997867

`A145977(∏{e}[A000040(n+1), #])+A003592(n+1)`
-/

namespace A158911.P1489562731103997867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145977 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) + A003592 (n + 1)

end

end A158911.P1489562731103997867

/-! ## A158911.P14668208349558466821

`A008836(A026424(n+1))+A003592(n+1)`
-/

namespace A158911.P14668208349558466821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A026424 (n + 1)).toNat + A003592 (n + 1)

end

end A158911.P14668208349558466821

/-! ## A158911.P11096831732817808950

`A008836(2*A028260(n+1))+A003592(n+1)`
-/

namespace A158911.P11096831732817808950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * A028260 (n + 1)).toNat + A003592 (n + 1)

end

end A158911.P11096831732817808950

/-! ## A158911.P665654651384436954

`A008683(A077800(n+1))+A003592(n+1)`
-/

namespace A158911.P665654651384436954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A077800 (n + 1)).toNat + A003592 (n + 1)

end

end A158911.P665654651384436954

/-! ## A158911.P14961761127949413872

`∩[A070023(n+1), A108513(n+1)]-1`
-/

namespace A158911.P14961761127949413872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158911.P14961761127949413872

/-! ## A158911.P3759205042858430252

`∩[A108513(n+1), A257997(n+1)]-1`
-/

namespace A158911.P3759205042858430252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158911.P3759205042858430252

/-! ## A158911.P2461765869395307866

`∩[A108513(n+1), A337800(n+1)]-1`
-/

namespace A158911.P2461765869395307866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158911.P2461765869395307866

/-! ## A158911.P7414463755426853945

`∩[A108513(n+1), A337801(n+1)]-1`
-/

namespace A158911.P7414463755426853945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158911.P7414463755426853945

/-! ## A158911.P14650242326378117799

`∩[A051037(n+1), A108513(n+1)]-1`
-/

namespace A158911.P14650242326378117799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158911.P14650242326378117799

/-! ## A158911.P16063309832452524488

`∩[A108513(n+1), A143513(n+1)]-1`
-/

namespace A158911.P16063309832452524488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158911.P16063309832452524488

/-! ## A158911.P5536154387091308797

`gcd(A033846(n+1), A178335(n+1))-1`
-/

namespace A158911.P5536154387091308797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A033846 (n + 1)) (A178335 (n + 1)) : ℤ) - 1

end

end A158911.P5536154387091308797

/-! ## A158911.P8292375652389041982

`∩[A068095(n+1), A108513(n+1)]-1`
-/

namespace A158911.P8292375652389041982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158911.P8292375652389041982

/-!
# A158913: Primes p such that there is a composite c with sigma(p) = sigma(c).

The programs for A158913, there is no canonical definition to state claims against.
-/

/-! ## A158913.P9636283792475488163

`A206449(n+1)-1`
-/

namespace A158913.P9636283792475488163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206449 (n + 1) - 1

end

end A158913.P9636283792475488163

/-! ## A158913.P6506236307178718564

`p?[A241646(n+1)-1]`
-/

namespace A158913.P6506236307178718564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241646 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158913.P6506236307178718564

/-! ## A158913.P17542968405635999658

`p?[A258914(n+1)-1]`
-/

namespace A158913.P17542968405635999658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158913.P17542968405635999658

/-! ## A158913.P13583297638700798595

`∩[A055670(n+1), A258914(n+1)]-1`
-/

namespace A158913.P13583297638700798595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P13583297638700798595

/-! ## A158913.P12557554327855610415

`p?[A159886(n+1)-1]`
-/

namespace A158913.P12557554327855610415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158913.P12557554327855610415

/-! ## A158913.P1453064809094876480

`∩[A055670(n+1), A159886(n+1)]-1`
-/

namespace A158913.P1453064809094876480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P1453064809094876480

/-! ## A158913.P16758812639774751038

`∩[A159886(n+1), A028815(n)]-1`
-/

namespace A158913.P16758812639774751038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P16758812639774751038

/-! ## A158913.P9985540681084927526

`∩[A241646(n+1), A028815(n)]-1`
-/

namespace A158913.P9985540681084927526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P9985540681084927526

/-! ## A158913.P7005461270348872901

`∩[A258914(n+1), A028815(n)]-1`
-/

namespace A158913.P7005461270348872901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P7005461270348872901

/-! ## A158913.P12714199955164297952

`∩[A008864(n+1), A159886(n+1)]-1`
-/

namespace A158913.P12714199955164297952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P12714199955164297952

/-! ## A158913.P14078008514158816390

`∩[A008864(n+1), A241646(n+1)]-1`
-/

namespace A158913.P14078008514158816390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241646 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P14078008514158816390

/-! ## A158913.P10504396060022599080

`∩[A008864(n+1), A258914(n+1)]-1`
-/

namespace A158913.P10504396060022599080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P10504396060022599080

/-! ## A158913.P4378559630711194567

`∩[A135731(n+1), A159886(n+1)]-1`
-/

namespace A158913.P4378559630711194567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P4378559630711194567

/-! ## A158913.P5440536265727529712

`∩[A135731(n+1), A241646(n+1)]-1`
-/

namespace A158913.P5440536265727529712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241646 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P5440536265727529712

/-! ## A158913.P3977975205909041478

`∩[A135731(n+1), A258914(n+1)]-1`
-/

namespace A158913.P3977975205909041478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P3977975205909041478

/-! ## A158913.P1971053517696282016

`∩[A159886(n+1), A299763(n+1)]-1`
-/

namespace A158913.P1971053517696282016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P1971053517696282016

/-! ## A158913.P16456218780759842517

`∩[A258914(n+1), A299763(n+1)]-1`
-/

namespace A158913.P16456218780759842517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P16456218780759842517

/-! ## A158913.P3563954521634301175

`∩[A159886(n+1), A351863(n+1)]-1`
-/

namespace A158913.P3563954521634301175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P3563954521634301175

/-! ## A158913.P4569866784329353817

`∩[A241646(n+1), A351863(n+1)]-1`
-/

namespace A158913.P4569866784329353817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A158913.P4569866784329353817

/-! ## A158913.P12076886463086802355

`p?[A069822(n+1)]`
-/

namespace A158913.P12076886463086802355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158913.P12076886463086802355

/-!
# A158916: Inverse binomial transform of A153130.

The programs for A158916, the canonical program `A158916.P6269727776857276970` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158916 has offset 0).

The definition of A158916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158916.P6269727776857276970

`(-1)^n*A154589(n)+A099838(n+4)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A158916

/-- `(-1)^n*A154589(n)+A099838(n+4)` -/
def P6269727776857276970.Spec : Prop :=
  ∀ n, P6269727776857276970.a n = A158916 n

theorem P6269727776857276970.correct : P6269727776857276970.Spec := by
  intro n
  simp only [A158916]

end A158916

/-! ## A158916.P18351857943193068034

`A158926(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A158916.P18351857943193068034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158926 (n - 1) + a (n - 1)

end

end A158916.P18351857943193068034

namespace A158916

/-- `A158926(n-1)+a(n-1)` -/
def P18351857943193068034.Spec : Prop :=
  ∀ n, P18351857943193068034.a n = A158916 n

end A158916

/-! ## A158916.P6451765257038058843

`A158927(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A158916.P6451765257038058843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158927 (n - 1) - a (n - 1)

end

end A158916.P6451765257038058843

namespace A158916

/-- `A158927(n-1)-a(n-1)` -/
def P6451765257038058843.Spec : Prop :=
  ∀ n, P6451765257038058843.a n = A158916 n

end A158916

/-! ## A158916.P11821270700701102722

`A146321(n)+A099838(A054429(n+3))`
-/

namespace A158916.P11821270700701102722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146321 n + A099838 (A054429 (n + 3)).toNat

end

end A158916.P11821270700701102722

namespace A158916

/-- `A146321(n)+A099838(A054429(n+3))` -/
def P11821270700701102722.Spec : Prop :=
  ∀ n, P11821270700701102722.a n = A158916 n

end A158916

/-! ## A158916.P3859132517946432100

`A100402(n)+A146321(n)-A070403(n)`
-/

namespace A158916.P3859132517946432100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100402 n + (A146321 n - A070403 n)

end

end A158916.P3859132517946432100

namespace A158916

/-- `A100402(n)+A146321(n)-A070403(n)` -/
def P3859132517946432100.Spec : Prop :=
  ∀ n, P3859132517946432100.a n = A158916 n

end A158916

/-! ## A158916.P10368247232891025878

`A061347(n+2)+A146321(n)-A061347(n+1)`
-/

namespace A158916.P10368247232891025878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) + (A146321 n - A061347 (n + 1))

end

end A158916.P10368247232891025878

namespace A158916

/-- `A061347(n+2)+A146321(n)-A061347(n+1)` -/
def P10368247232891025878.Spec : Prop :=
  ∀ n, P10368247232891025878.a n = A158916 n

end A158916

/-! ## A158916.P9363089533941095951

`(A158927(n)-A158926(n))/2`
-/

namespace A158916.P9363089533941095951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158927 n - A158926 n : ℚ) / 2

end

end A158916.P9363089533941095951

namespace A158916

/-- `(A158927(n)-A158926(n))/2` -/
def P9363089533941095951.Spec : Prop :=
  ∀ n, P9363089533941095951.a n = (A158916 n : ℚ)

end A158916

/-!
# A158917: Emirps using each of the digits 1, 3, 7, 9 at least once, but no others.

The programs for A158917, there is no canonical definition to state claims against.
-/

/-! ## A158917.P88928335726089028

`∩[A006567(n+1), A108386(n+1)]`
-/

namespace A158917.P88928335726089028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158917.P88928335726089028

/-! ## A158917.P13756033905654631035

`∩[A007500(n+1), A108386(n+1)]`
-/

namespace A158917.P13756033905654631035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158917.P13756033905654631035

/-! ## A158917.P2446985575420273132

`∩[A108386(n+1), A000040(A156793(n+1))]`
-/

namespace A158917.P2446985575420273132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158917.P2446985575420273132

/-! ## A158917.P4596135289527430759

`∩[A006005(A156793(n+1)), A108386(n+2)]`
-/

namespace A158917.P4596135289527430759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108386 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158917.P4596135289527430759

/-! ## A158917.P17528198138298385921

`∩[A108386(n+1), A008578(A156793(n+1)+1)]`
-/

namespace A158917.P17528198138298385921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A156793 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158917.P17528198138298385921

/-!
# A158919: Beatty sequence for the tribonacci constant tau (A058265): a(n) = floor(n*tau).

The programs for A158919, the canonical program `A158919.P1966360015333059393` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158919 has offset 0).

The definition of A158919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158919.P1966360015333059393

`floor(n*(1+(19-3*sqrt(33))^(1/3)+(19+3*sqrt(33))^(1/3))/3)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158919

/-- `floor(n*(1+(19-3*sqrt(33))^(1/3)+(19+3*sqrt(33))^(1/3))/3)` -/
def P1966360015333059393.Spec : Prop :=
  ∀ n, P1966360015333059393.a n = A158919 n

theorem P1966360015333059393.correct : P1966360015333059393.Spec := by
  intro n
  simp only [A158919]

end A158919

/-! ## A158919.P1002654496566124730

`comp[A140098(n+1)]-n`
-/

namespace A158919.P1002654496566124730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A158919.P1002654496566124730

namespace A158919

/-- `comp[A140098(n+1)]-n` -/
def P1002654496566124730.Spec : Prop :=
  ∀ n, P1002654496566124730.a n = A158919 n

end A158919

/-! ## A158919.P3296907965166805634

`comp[comp[A277723(n)]+1+n]`
-/

namespace A158919.P3296907965166805634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A158919.P3296907965166805634

namespace A158919

/-- `comp[comp[A277723(n)]+1+n]` -/
def P3296907965166805634.Spec : Prop :=
  ∀ n, (P3296907965166805634.a n : ℤ) = A158919 n

end A158919

/-! ## A158919.P5545667462029603579

`A003144(n)+a(A275926(n))` with `a(0)=0`
-/

namespace A158919.P5545667462029603579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003144 n + a (A275926 n).toNat

end

end A158919.P5545667462029603579

namespace A158919

/-- `A003144(n)+a(A275926(n))` -/
def P5545667462029603579.Spec : Prop :=
  ∀ n, P5545667462029603579.a n = A158919 n

end A158919

/-! ## A158919.P9175175995194499173

`comp[A276383(n+1)]`
-/

namespace A158919.P9175175995194499173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158919.P9175175995194499173

namespace A158919

/-- `comp[A276383(n+1)]` -/
def P9175175995194499173.Spec : Prop :=
  ∀ n, (P9175175995194499173.a n : ℤ) = A158919 n

end A158919

/-! ## A158919.P3163973319086292435

`A056926(A032634(5*n)²)`
-/

namespace A158919.P3163973319086292435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A032634 (5 * n) ^ 2).toNat

end

end A158919.P3163973319086292435

namespace A158919

/-- `A056926(A032634(5*n)²)` -/
def P3163973319086292435.Spec : Prop :=
  ∀ n, P3163973319086292435.a n = A158919 n

end A158919

/-! ## A158919.P14414643503540150203

`A032634(5*n%A109825(n+1))`
-/

namespace A158919.P14414643503540150203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (5 * Int.tmod (n : ℤ) (A109825 (n + 1))).toNat

end

end A158919.P14414643503540150203

namespace A158919

/-- `A032634(5*n%A109825(n+1))` -/
def P14414643503540150203.Spec : Prop :=
  ∀ n, P14414643503540150203.a n = A158919 n

end A158919

/-! ## A158919.P17372431390922916305

`A000196(A277722(n²))`
-/

namespace A158919.P17372431390922916305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A277722 (n ^ 2)).toNat

end

end A158919.P17372431390922916305

namespace A158919

/-- `A000196(A277722(n²))` -/
def P17372431390922916305.Spec : Prop :=
  ∀ n, P17372431390922916305.a n = A158919 n

end A158919

/-!
# A158920: Binomial transform of A008805 (triangular numbers with repeats).

The programs for A158920, the canonical program `A158920.P7605618799313441928` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158920 has offset 1).

The definition of A158920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158920.P7605618799313441928

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=16, a(4)=41`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158920

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P7605618799313441928.Spec : Prop :=
  ∀ n, P7605618799313441928.a n = A158920 (n + 1)

theorem P7605618799313441928.correct : P7605618799313441928.Spec := by
  intro n
  simp only [A158920, Nat.add_sub_cancel]

end A158920

/-! ## A158920.P18136752714508066212

`∑[A362179(n)]`
-/

namespace A158920.P18136752714508066212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158920.P18136752714508066212

namespace A158920

/-- `∑[A362179(n)]` -/
def P18136752714508066212.Spec : Prop :=
  ∀ n, P18136752714508066212.a n = A158920 (n + 1)

end A158920

/-! ## A158920.P13897505992126614594

`A034007(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A158920.P13897505992126614594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034007 n + 2 * a (n - 1)

end

end A158920.P13897505992126614594

namespace A158920

/-- `A034007(n)+2*a(n-1)` -/
def P13897505992126614594.Spec : Prop :=
  ∀ n, P13897505992126614594.a n = A158920 (n + 1)

end A158920

/-! ## A158920.P12768071192470702716

`∑[A291013(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A158920.P12768071192470702716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A291013 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158920.P12768071192470702716

namespace A158920

/-- `∑[A291013(n-1)+a(n-1)]` -/
def P12768071192470702716.Spec : Prop :=
  ∀ n, P12768071192470702716.a n = A158920 (n + 1)

end A158920

/-! ## A158920.P2286835396710492369

`A268586(n)+A131352(n)`
-/

namespace A158920.P2286835396710492369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 n + A131352 n

end

end A158920.P2286835396710492369

namespace A158920

/-- `A268586(n)+A131352(n)` -/
def P2286835396710492369.Spec : Prop :=
  ∀ n, P2286835396710492369.a n = A158920 (n + 1)

end A158920

/-! ## A158920.P2823993259792369124

`A291013(n+1)-A034007(n+2)`
-/

namespace A158920.P2823993259792369124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291013 (n + 1) - A034007 (n + 2)

end

end A158920.P2823993259792369124

namespace A158920

/-- `A291013(n+1)-A034007(n+2)` -/
def P2823993259792369124.Spec : Prop :=
  ∀ n, P2823993259792369124.a n = A158920 (n + 1)

end A158920

/-! ## A158920.P17501163972173923371

`A049610(n)+A268586(n)+A111297(n)`
-/

namespace A158920.P17501163972173923371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n + (A268586 n + A111297 n)

end

end A158920.P17501163972173923371

namespace A158920

/-- `A049610(n)+A268586(n)+A111297(n)` -/
def P17501163972173923371.Spec : Prop :=
  ∀ n, P17501163972173923371.a n = A158920 (n + 1)

end A158920

/-! ## A158920.P5339342467582680282

`A362179(n+1)+A045891(n)-A045891(n+1)`
-/

namespace A158920.P5339342467582680282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362179 (n + 1) + (A045891 n - A045891 (n + 1))

end

end A158920.P5339342467582680282

namespace A158920

/-- `A362179(n+1)+A045891(n)-A045891(n+1)` -/
def P5339342467582680282.Spec : Prop :=
  ∀ n, P5339342467582680282.a n = A158920 (n + 1)

end A158920

/-! ## A158920.P13616637069207541559

`Δ[(n+1)/4*A034007(n+1)]`
-/

namespace A158920.P13616637069207541559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A034007 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158920.P13616637069207541559

namespace A158920

/-- `Δ[(n+1)/4*A034007(n+1)]` -/
def P13616637069207541559.Spec : Prop :=
  ∀ n, P13616637069207541559.a n = (A158920 (n + 1) : ℚ)

end A158920

/-! ## A158920.P5045730679942215216

`(A058396(n)+A045891(n))/2`
-/

namespace A158920.P5045730679942215216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058396 n + A045891 n : ℚ) / 2

end

end A158920.P5045730679942215216

namespace A158920

/-- `(A058396(n)+A045891(n))/2` -/
def P5045730679942215216.Spec : Prop :=
  ∀ n, P5045730679942215216.a n = (A158920 (n + 1) : ℚ)

end A158920

/-! ## A158920.P1230362076875733714

`A058396(n+1)-(A362179(n+1)+A058396(n))`
-/

namespace A158920.P1230362076875733714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 (n + 1) - (A362179 (n + 1) + A058396 n)

end

end A158920.P1230362076875733714

namespace A158920

/-- `A058396(n+1)-(A362179(n+1)+A058396(n))` -/
def P1230362076875733714.Spec : Prop :=
  ∀ n, P1230362076875733714.a n = A158920 (n + 1)

end A158920

/-! ## A158920.P4389099523073080391

`Δ[A062110(A167614(n+1))]`
-/

namespace A158920.P4389099523073080391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158920.P4389099523073080391

namespace A158920

/-- `Δ[A062110(A167614(n+1))]` -/
def P4389099523073080391.Spec : Prop :=
  ∀ n, P4389099523073080391.a n = A158920 (n + 1)

end A158920

/-! ## A158920.P13687057110976018217

`Δ[Δ[A049600(A000096(n)+n)]]`
-/

namespace A158920.P13687057110976018217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A000096 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158920.P13687057110976018217

namespace A158920

/-- `Δ[Δ[A049600(A000096(n)+n)]]` -/
def P13687057110976018217.Spec : Prop :=
  ∀ n, P13687057110976018217.a n = A158920 (n + 1)

end A158920

/-! ## A158920.P3183154941372279326

`Δ[Δ[A049600(A055999(n)-n)]]`
-/

namespace A158920.P3183154941372279326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A055999 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158920.P3183154941372279326

namespace A158920

/-- `Δ[Δ[A049600(A055999(n)-n)]]` -/
def P3183154941372279326.Spec : Prop :=
  ∀ n, P3183154941372279326.a n = A158920 (n + 1)

end A158920

/-!
# A158921: Positions of hexanacci numbers in the EKG sequence.

The programs for A158921, there is no canonical definition to state claims against.
-/

/-! ## A158921.P11898283564869488448

`A064664(Δ[A172316(n)])`
-/

namespace A158921.P11898283564869488448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (f1 (n + 1) - f1 n).toNat

end

end A158921.P11898283564869488448

/-! ## A158921.P16831893832230567409

`A064664(record[A251709(n+1)-a(n-1)])` with `a(0)=1, a(1)=0`
-/

namespace A158921.P16831893832230567409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A251709 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A158921.P16831893832230567409

/-! ## A158921.P7164039385360048827

`A064664(record[A251706(n-1)+a(n-1)])` with `a(0)=1, a(1)=0`
-/

namespace A158921.P7164039385360048827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A251706 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A158921.P7164039385360048827

/-! ## A158921.P17658798852696390523

`A064664(A172316(n+1)-A172316(n))`
-/

namespace A158921.P17658798852696390523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A172316 (n + 1) - A172316 n).toNat

end

end A158921.P17658798852696390523

/-!
# A158922: Number of simple critical nonplanar graphs on n nodes.

The programs for A158922, there is no canonical definition to state claims against.
-/

/-! ## A158922.P11940095527902397773

`A064458(A272610(n!))`
-/

namespace A158922.P11940095527902397773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A272610 (Nat.factorial n)).toNat

end

end A158922.P11940095527902397773

/-! ## A158922.P1789101902229633022

`and(A020068(n), A141334(A253831(n)))`
-/

namespace A158922.P1789101902229633022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020068 n) (A141334 (A253831 n).toNat)

end

end A158922.P1789101902229633022

/-! ## A158922.P14675121711996273314

`and(A020068(n), A120749(A328431(n)))`
-/

namespace A158922.P14675121711996273314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020068 n) (A120749 (A328431 n).toNat)

end

end A158922.P14675121711996273314

/-! ## A158922.P11862655856902158320

`A108804(floor(A052841(n)/A047480(n+2)))`
-/

namespace A158922.P11862655856902158320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 ⌊(A052841 n : ℚ) / (A047480 (n + 2) : ℚ)⌋.toNat

end

end A158922.P11862655856902158320

/-!
# A158923: a(1) = 2, a(n) = a(n-1) + round(log(a(n-1))) for n >= 2.

The programs for A158923, the canonical program `A158923.P17944339297039512548` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158923 has offset 1).

The definition of A158923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+round(log(a(n-1)))` (program `A158923.P17944339297039512548`, by `A158923.P17944339297039512548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158923.P17944339297039512548

`a(n-1)+round(log(a(n-1)))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158923

/-- `a(n-1)+round(log(a(n-1)))` -/
def P17944339297039512548.Spec : Prop :=
  ∀ n, P17944339297039512548.a n = A158923 (n + 1)

theorem P17944339297039512548.correct : P17944339297039512548.Spec := by
  intro n
  simp only [A158923, Nat.add_sub_cancel]

end A158923

/-! ## A158923.P11905926896829360814

`a(n-1)-round(-log(a(n-1)))` with `a(0)=2`
-/

namespace A158923.P11905926896829360814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - SequenceMachineLib.roundAway (-Real.log (a (n - 1) : ℝ))

end

end A158923.P11905926896829360814

namespace A158923

/-- `a(n-1)-round(-log(a(n-1)))` -/
def P11905926896829360814.Spec : Prop :=
  ∀ n, P11905926896829360814.a n = A158923 (n + 1)

end A158923

/-! ## A158923.P15096038665698217682

`round(a(n-1)-log(1/a(n-1)))` with `a(0)=2`
-/

namespace A158923.P15096038665698217682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) - Real.log (1 / (a (n - 1) : ℚ) : ℝ))

end

end A158923.P15096038665698217682

namespace A158923

/-- `round(a(n-1)-log(1/a(n-1)))` -/
def P15096038665698217682.Spec : Prop :=
  ∀ n, P15096038665698217682.a n = A158923 (n + 1)

end A158923

/-! ## A158923.P14864770699072738206

`A000193(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A158923.P14864770699072738206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000193 (a (n - 1)).toNat + a (n - 1)

end

end A158923.P14864770699072738206

namespace A158923

/-- `A000193(a(n-1))+a(n-1)` -/
def P14864770699072738206.Spec : Prop :=
  ∀ n, P14864770699072738206.a n = A158923 (n + 1)

end A158923

/-! ## A158923.P15797096661350841205

`∑[A097944(A004657(n))]+1`
-/

namespace A158923.P15797096661350841205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A004657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A158923.P15797096661350841205

namespace A158923

/-- `∑[A097944(A004657(n))]+1` -/
def P15797096661350841205.Spec : Prop :=
  ∀ n, P15797096661350841205.a n = A158923 (n + 1)

end A158923

/-! ## A158923.P9814690648168724128

`∑[A054977(n)*A097944(A004657(n))]`
-/

namespace A158923.P9814690648168724128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A097944 (A004657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158923.P9814690648168724128

namespace A158923

/-- `∑[A054977(n)*A097944(A004657(n))]` -/
def P9814690648168724128.Spec : Prop :=
  ∀ n, P9814690648168724128.a n = A158923 (n + 1)

end A158923

/-! ## A158923.P4455474570759308887

`2-(A020985(n)²-∑[A097944(A004657(n))])`
-/

namespace A158923.P4455474570759308887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A004657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A020985 n ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158923.P4455474570759308887

namespace A158923

/-- `2-(A020985(n)²-∑[A097944(A004657(n))])` -/
def P4455474570759308887.Spec : Prop :=
  ∀ n, P4455474570759308887.a n = A158923 (n + 1)

end A158923

/-! ## A158923.P16545466387547960543

`a(n-1)+A097944(A004657(n))+A000007(n)` with `a(0)=2`
-/

namespace A158923.P16545466387547960543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A097944 (A004657 n).toNat + A000007 n)

end

end A158923.P16545466387547960543

namespace A158923

/-- `a(n-1)+A097944(A004657(n))+A000007(n)` -/
def P16545466387547960543.Spec : Prop :=
  ∀ n, P16545466387547960543.a n = A158923 (n + 1)

end A158923

/-!
# A158924: Number of prime powers - 1 in interval (A158923(n-1), A158923(n)] expressing the excess or deficit relative to the asymptotic average of 1.

The programs for A158924, the canonical program `A158924.P17124388727537864408` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158924 has offset 1).

The definition of A158924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9696 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158924.P17124388727537864408

`Δ[A158925(A000007(n)+n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158924

/-- `Δ[A158925(A000007(n)+n)]` -/
def P17124388727537864408.Spec : Prop :=
  ∀ n, P17124388727537864408.a n = A158924 (n + 1)

theorem P17124388727537864408.correct : P17124388727537864408.Spec := by
  intro n
  simp only [A158924, Nat.add_sub_cancel]

end A158924

/-! ## A158924.P3957280379258240632

`A158925(n+1)-A158925(A028310(n))`
-/

namespace A158924.P3957280379258240632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (n + 1) - A158925 (A028310 n).toNat

end

end A158924.P3957280379258240632

namespace A158924

/-- `A158925(n+1)-A158925(A028310(n))` -/
def P3957280379258240632.Spec : Prop :=
  ∀ n, P3957280379258240632.a n = A158924 (n + 1)

end A158924

/-! ## A158924.P737919528189880736

`A158925(n+1)-A158925(A000007(n)+n)`
-/

namespace A158924.P737919528189880736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (n + 1) - A158925 (A000007 n + (n : ℤ)).toNat

end

end A158924.P737919528189880736

namespace A158924

/-- `A158925(n+1)-A158925(A000007(n)+n)` -/
def P737919528189880736.Spec : Prop :=
  ∀ n, P737919528189880736.a n = A158924 (n + 1)

end A158924

/-! ## A158924.P434670581085860245

`Δ[A158925(A004396(A294732(n+2)))]`
-/

namespace A158924.P434670581085860245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (A004396 (A294732 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158924.P434670581085860245

namespace A158924

/-- `Δ[A158925(A004396(A294732(n+2)))]` -/
def P434670581085860245.Spec : Prop :=
  ∀ n, P434670581085860245.a n = A158924 (n + 1)

end A158924

/-! ## A158924.P10970085933862256786

`Δ[A158925(A008619(A004273(n)))]`
-/

namespace A158924.P10970085933862256786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158924.P10970085933862256786

namespace A158924

/-- `Δ[A158925(A008619(A004273(n)))]` -/
def P10970085933862256786.Spec : Prop :=
  ∀ n, P10970085933862256786.a n = A158924 (n + 1)

end A158924

/-! ## A158924.P14418286909397888441

`Δ[A158925(A123108(2*n))]`
-/

namespace A158924.P14418286909397888441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158924.P14418286909397888441

namespace A158924

/-- `Δ[A158925(A123108(2*n))]` -/
def P14418286909397888441.Spec : Prop :=
  ∀ n, P14418286909397888441.a n = A158924 (n + 1)

end A158924

/-! ## A158924.P4282397885206622261

`A158925(n+1)-A158925(A233583(n+1))`
-/

namespace A158924.P4282397885206622261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (n + 1) - A158925 (A233583 (n + 1)).toNat

end

end A158924.P4282397885206622261

namespace A158924

/-- `A158925(n+1)-A158925(A233583(n+1))` -/
def P4282397885206622261.Spec : Prop :=
  ∀ n, P4282397885206622261.a n = A158924 (n + 1)

end A158924

/-! ## A158924.P16474209557416633245

`Δ[A158925(A233583(n+1))]`
-/

namespace A158924.P16474209557416633245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158924.P16474209557416633245

namespace A158924

/-- `Δ[A158925(A233583(n+1))]` -/
def P16474209557416633245.Spec : Prop :=
  ∀ n, P16474209557416633245.a n = A158924 (n + 1)

end A158924

/-! ## A158924.P13217152539332556228

`A158925(n+1)-A158925(gcd(n, A003418(n)))`
-/

namespace A158924.P13217152539332556228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (n + 1) - A158925 (Int.gcd (n : ℤ) (A003418 n))

end

end A158924.P13217152539332556228

namespace A158924

/-- `A158925(n+1)-A158925(gcd(n, A003418(n)))` -/
def P13217152539332556228.Spec : Prop :=
  ∀ n, P13217152539332556228.a n = A158924 (n + 1)

end A158924

/-! ## A158924.P2069493903632923625

`Δ[A158925(gcd(n, A003418(n)))]`
-/

namespace A158924.P2069493903632923625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (Int.gcd (n : ℤ) (A003418 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158924.P2069493903632923625

namespace A158924

/-- `Δ[A158925(gcd(n, A003418(n)))]` -/
def P2069493903632923625.Spec : Prop :=
  ∀ n, P2069493903632923625.a n = A158924 (n + 1)

end A158924

/-!
# A158925: Accumulated excess or deficit of prime powers in (1, A158924(n)].

The programs for A158925, the canonical program `A158925.P1961462700023655035` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158925 has offset 1).

The definition of A158925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9696 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158925.P6538314232491773621

`∑[A158924(n+1)]`
-/

namespace A158925.P6538314232491773621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158925.P6538314232491773621

namespace A158925

/-- `∑[A158924(n+1)]` -/
def P6538314232491773621.Spec : Prop :=
  ∀ n, P6538314232491773621.a n = A158925 (n + 1)

end A158925

/-! ## A158925.P1961462700023655035

`A025528(A158923(n+1))-(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A158925

/-- `A025528(A158923(n+1))-(n+1)` -/
def P1961462700023655035.Spec : Prop :=
  ∀ n, P1961462700023655035.a n = A158925 (n + 1)

theorem P1961462700023655035.correct : P1961462700023655035.Spec := by
  intro n
  simp only [A158925, Nat.add_sub_cancel]

end A158925

/-! ## A158925.P14895653546227389285

`a(n-1)+A158924(n+1)+A000007(n)` with `a(0)=0`
-/

namespace A158925.P14895653546227389285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A158924 (n + 1) + A000007 n)

end

end A158925.P14895653546227389285

namespace A158925

/-- `a(n-1)+A158924(n+1)+A000007(n)` -/
def P14895653546227389285.Spec : Prop :=
  ∀ n, P14895653546227389285.a n = A158925 (n + 1)

end A158925

/-! ## A158925.P14395265773689442495

`A158924(n+1)+a(A000027(n+1)-2)` with `a(0)=0, a(1)=0`
-/

namespace A158925.P14395265773689442495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A158924 (n + 1) + a (A000027 (n + 1) - 2).toNat

end

end A158925.P14395265773689442495

namespace A158925

/-- `A158924(n+1)+a(A000027(n+1)-2)` -/
def P14395265773689442495.Spec : Prop :=
  ∀ n, P14395265773689442495.a n = A158925 (n + 1)

end A158925

/-! ## A158925.P1521939335296972113

`A025528(A158923(n+1))%A008611(3*n)`
-/

namespace A158925.P1521939335296972113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025528 (A158923 (n + 1)).toNat) (A008611 (3 * n))

end

end A158925.P1521939335296972113

namespace A158925

/-- `A025528(A158923(n+1))%A008611(3*n)` -/
def P1521939335296972113.Spec : Prop :=
  ∀ n, P1521939335296972113.a n = A158925 (n + 1)

end A158925

/-!
# A158926: First differences of A158916.

The programs for A158926, the canonical program `A158926.P3164738659012844026` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158926 has offset 0).

The definition of A158926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158926.P3164738659012844026

`Δ[A158916(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158926

/-- `Δ[A158916(n)]` -/
def P3164738659012844026.Spec : Prop :=
  ∀ n, P3164738659012844026.a n = A158926 n

theorem P3164738659012844026.correct : P3164738659012844026.Spec := by
  intro n
  simp only [A158926]

end A158926

/-! ## A158926.P15819786205415042157

`A158916(n+1)-A158916(n)`
-/

namespace A158926.P15819786205415042157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158916 (n + 1) - A158916 n

end

end A158926.P15819786205415042157

namespace A158926

/-- `A158916(n+1)-A158916(n)` -/
def P15819786205415042157.Spec : Prop :=
  ∀ n, P15819786205415042157.a n = A158926 n

theorem P15819786205415042157.correct : P15819786205415042157.Spec := by
  intro n
  simp only [A158926, Nat.add_sub_cancel, A158926.P15819786205415042157.a, A158926.P3164738659012844026.f1, A158926.P3164738659012844026.a, SequenceMachineLib.memo_apply]

end A158926

/-! ## A158926.P8671090811861913226

`A158927(n)-2*A158916(n)`
-/

namespace A158926.P8671090811861913226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158927 n - 2 * A158916 n

end

end A158926.P8671090811861913226

namespace A158926

/-- `A158927(n)-2*A158916(n)` -/
def P8671090811861913226.Spec : Prop :=
  ∀ n, P8671090811861913226.a n = A158926 n

end A158926

/-! ## A158926.P5857659430979157659

`Δ[A146321(n)-A100402(n+1)]`
-/

namespace A158926.P5857659430979157659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146321 n - A100402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158926.P5857659430979157659

namespace A158926

/-- `Δ[A146321(n)-A100402(n+1)]` -/
def P5857659430979157659.Spec : Prop :=
  ∀ n, P5857659430979157659.a n = A158926 n

end A158926

/-! ## A158926.P15378489143881642476

`Δ[A123344(n)-A100402(A103517(n))]`
-/

namespace A158926.P15378489143881642476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n - A100402 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158926.P15378489143881642476

namespace A158926

/-- `Δ[A123344(n)-A100402(A103517(n))]` -/
def P15378489143881642476.Spec : Prop :=
  ∀ n, P15378489143881642476.a n = A158926 n

end A158926

/-! ## A158926.P9277535874088475970

`Δ[A100402(n)-(A070403(n)-A146321(n))]`
-/

namespace A158926.P9277535874088475970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100402 n - (A070403 n - A146321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158926.P9277535874088475970

namespace A158926

/-- `Δ[A100402(n)-(A070403(n)-A146321(n))]` -/
def P9277535874088475970.Spec : Prop :=
  ∀ n, P9277535874088475970.a n = A158926 n

end A158926

/-!
# A158927: a(n) = -3a(n-1) - 3a(n-2) - 2a(n-3), n > 3.

The programs for A158927, the canonical program `A158927.P1396662302619489954` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158927 has offset 0).

The definition of A158927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-3*a(n-1)-3*a(n-2)-2*a(n-3)` (program `A158927.P1396662302619489954`, by `A158927.P1396662302619489954.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158927.P1567743042161337607

`(-1)^(n+1)*A157823(n)-A099838(n+3)`
-/

namespace A158927.P1567743042161337607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A157823 n - A099838 (n + 3)

end

end A158927.P1567743042161337607

namespace A158927

/-- `(-1)^(n+1)*A157823(n)-A099838(n+3)` -/
def P1567743042161337607.Spec : Prop :=
  ∀ n, P1567743042161337607.a n = A158927 n

end A158927

/-! ## A158927.P1396662302619489954

`-3*a(n-1)-3*a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=-7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158927

/-- `-3*a(n-1)-3*a(n-2)-2*a(n-3)` -/
def P1396662302619489954.Spec : Prop :=
  ∀ n, P1396662302619489954.a n = A158927 n

theorem P1396662302619489954.correct : P1396662302619489954.Spec := by
  intro n
  simp only [A158927]

end A158927

/-! ## A158927.P16755720893413473286

`A158935(n-1)-a(n-1)` with `a(0)=2`
-/

namespace A158927.P16755720893413473286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A158935 (n - 1) - a (n - 1)

end

end A158927.P16755720893413473286

namespace A158927

/-- `A158935(n-1)-a(n-1)` -/
def P16755720893413473286.Spec : Prop :=
  ∀ n, P16755720893413473286.a n = A158927 n

end A158927

/-! ## A158927.P13284642075016049716

`A146321(n)+A122803(n)`
-/

namespace A158927.P13284642075016049716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146321 n + A122803 n

end

end A158927.P13284642075016049716

namespace A158927

/-- `A146321(n)+A122803(n)` -/
def P13284642075016049716.Spec : Prop :=
  ∀ n, P13284642075016049716.a n = A158927 n

end A158927

/-! ## A158927.P16352207675015810674

`A158916(n+1)+A158916(n)`
-/

namespace A158927.P16352207675015810674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158916 (n + 1) + A158916 n

end

end A158927.P16352207675015810674

namespace A158927

/-- `A158916(n+1)+A158916(n)` -/
def P16352207675015810674.Spec : Prop :=
  ∀ n, P16352207675015810674.a n = A158927 n

end A158927

/-! ## A158927.P15739927385482444410

`4-(A123344(n)+dr(A123344(n)²))`
-/

namespace A158927.P15739927385482444410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (A123344 n + (SequenceMachineLib.digitalRoot (A123344 n ^ 2) : ℤ))

end

end A158927.P15739927385482444410

namespace A158927

/-- `4-(A123344(n)+dr(A123344(n)²))` -/
def P15739927385482444410.Spec : Prop :=
  ∀ n, P15739927385482444410.a n = A158927 n

end A158927

/-! ## A158927.P9563729022263421155

`4-(A123344(n)+dr(A123344(A004273(n))))`
-/

namespace A158927.P9563729022263421155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (A123344 n + (SequenceMachineLib.digitalRoot (A123344 (A004273 n).toNat) : ℤ))

end

end A158927.P9563729022263421155

namespace A158927

/-- `4-(A123344(n)+dr(A123344(A004273(n))))` -/
def P9563729022263421155.Spec : Prop :=
  ∀ n, P9563729022263421155.a n = A158927 n

end A158927

/-!
# A158929: a(n) is the smallest integer not yet in the sequence with no common base-4 digit with a(n-1).

The programs for A158929, there is no canonical definition to state claims against.
-/

/-! ## A158929.P9468114228713281096

`A004737(A001611(n)*A022368(n))`
-/

namespace A158929.P9468114228713281096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A001611 n * A022368 n).toNat

end

end A158929.P9468114228713281096

/-!
# A158932: Numbers k such that there is no square m^2 such that m^2 and k^2 have no common decimal digits but together use all 10 digits.

The programs for A158932, there is no canonical definition to state claims against.
-/

/-! ## A158932.P1603710743487141652

`sqrt(A182657(n+1)^A286831(n))`
-/

namespace A158932.P1603710743487141652
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A182657 (n + 1) : ℚ) ^ (A286831 n : ℤ) : ℝ)

end

end A158932.P1603710743487141652

/-! ## A158932.P6229108977026561373

`sqrt(A182657(n+1))%A233116(n+1)`
-/

namespace A158932.P6229108977026561373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A182657 (n + 1) : ℝ))) (A233116 (n + 1))

end

end A158932.P6229108977026561373

/-! ## A158932.P17943054578238466201

`sqrt(A182657(n+1)%A182658(3*(n+1)))`
-/

namespace A158932.P17943054578238466201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A182657 (n + 1)) (A182658 (3 * (n + 1))) : ℝ)

end

end A158932.P17943054578238466201

/-!
# A158933: Decimal expansion of Sum_{n>=1} ((-1)^(n+1))/F(n) where F(n) is the n-th Fibonacci number A000045(n).

The programs for A158933, there is no canonical definition to state claims against.
-/

/-! ## A158933.P3734012720103672920

`9-A324007(n)`
-/

namespace A158933.P3734012720103672920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A324007 n

end

end A158933.P3734012720103672920

/-!
# A158935: a(n)= -3a(n-1)-3a(n-2)-2a(n-3), n>3. a(0)=4, a(1)=4, a(2)=-5, a(3)=4.

The programs for A158935, the canonical program `A158935.P5884350338832969960` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158935 has offset 0).

The definition of A158935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-3*a(n-1)-3*a(n-2)-2*a(n-3)` (program `A158935.P5884350338832969960`, by `A158935.P5884350338832969960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158935.P5884350338832969960

`-3*a(n-1)-3*a(n-2)-2*a(n-3)` with `a(0)=4, a(1)=4, a(2)=-5, a(3)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158935

/-- `-3*a(n-1)-3*a(n-2)-2*a(n-3)` -/
def P5884350338832969960.Spec : Prop :=
  ∀ n, P5884350338832969960.a n = A158935 n

theorem P5884350338832969960.correct : P5884350338832969960.Spec := by
  intro n
  simp only [A158935]

end A158935

/-! ## A158935.P5779354096368989538

`A158927(n+1)+A158927(n)`
-/

namespace A158935.P5779354096368989538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158927 (n + 1) + A158927 n

end

end A158935.P5779354096368989538

namespace A158935

/-- `A158927(n+1)+A158927(n)` -/
def P5779354096368989538.Spec : Prop :=
  ∀ n, P5779354096368989538.a n = A158935 n

end A158935

/-! ## A158935.P8868896518231819286

`A123344(n)+3*A106510(n)`
-/

namespace A158935.P8868896518231819286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n + 3 * A106510 n

end

end A158935.P8868896518231819286

namespace A158935

/-- `A123344(n)+3*A106510(n)` -/
def P8868896518231819286.Spec : Prop :=
  ∀ n, P8868896518231819286.a n = A158935 n

end A158935

/-! ## A158935.P17095023442720899280

`A146321(n)-A099838(n+4)`
-/

namespace A158935.P17095023442720899280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146321 n - A099838 (n + 4)

end

end A158935.P17095023442720899280

namespace A158935

/-- `A146321(n)-A099838(n+4)` -/
def P17095023442720899280.Spec : Prop :=
  ∀ n, P17095023442720899280.a n = A158935 n

end A158935

/-! ## A158935.P16877349936644460096

`A146321(n)+4-A100402(n)`
-/

namespace A158935.P16877349936644460096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146321 n + (4 - A100402 n)

end

end A158935.P16877349936644460096

namespace A158935

/-- `A146321(n)+4-A100402(n)` -/
def P16877349936644460096.Spec : Prop :=
  ∀ n, P16877349936644460096.a n = A158935 n

end A158935

/-! ## A158935.P10045979162425117043

`A084103(A016897(2*(n+1)))+A158916(n)+A099838(n+2)`
-/

namespace A158935.P10045979162425117043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084103 (A016897 (2 * (n + 1))).toNat + (A158916 n + A099838 (n + 2))

end

end A158935.P10045979162425117043

namespace A158935

/-- `A084103(A016897(2*(n+1)))+A158916(n)+A099838(n+2)` -/
def P10045979162425117043.Spec : Prop :=
  ∀ n, P10045979162425117043.a n = A158935 n

end A158935

/-!
# A158938: Numbers congruent to {-3,7,9,11,13,23,25,27} mod 64.

The programs for A158938, the canonical program `A158938.P5718884628169107957` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158938 has offset 0).

The definition of A158938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158938.P5718884628169107957

`a(n-8)+64` with `a(0)=-3, a(1)=7, a(2)=9, a(3)=11, a(4)=13, a(5)=23, a(6)=25, a(7)=27`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158938

/-- `a(n-8)+64` -/
def P5718884628169107957.Spec : Prop :=
  ∀ n, P5718884628169107957.a n = A158938 n

theorem P5718884628169107957.correct : P5718884628169107957.Spec := by
  intro n
  simp only [A158938]

end A158938

/-! ## A158938.P15923700257379569789

`A103621(n+1)-Δ[A103621(n+8)]`
-/

namespace A158938.P15923700257379569789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 1) - (f1 (n + 1) - f1 n)

end

end A158938.P15923700257379569789

namespace A158938

/-- `A103621(n+1)-Δ[A103621(n+8)]` -/
def P15923700257379569789.Spec : Prop :=
  ∀ n, P15923700257379569789.a n = A158938 n

end A158938

/-! ## A158938.P5593459663103093332

`A214865(A115419(n+1))-34`
-/

namespace A158938.P5593459663103093332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214865 (A115419 (n + 1)).toNat - 34

end

end A158938.P5593459663103093332

namespace A158938

/-- `A214865(A115419(n+1))-34` -/
def P5593459663103093332.Spec : Prop :=
  ∀ n, P5593459663103093332.a n = A158938 n

end A158938

/-! ## A158938.P12060580450305232051

`A102370(a(n-1))` with `a(0)=-3, a(1)=7`
-/

namespace A158938.P12060580450305232051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-3, 7] fun n a =>
  A102370 (a (n - 1)).toNat

end

end A158938.P12060580450305232051

namespace A158938

/-- `A102370(a(n-1))` -/
def P12060580450305232051.Spec : Prop :=
  ∀ n, P12060580450305232051.a n = A158938 n

end A158938

/-!
# A158939: First primes followed by sequences of exactly n monotonic increasing prime gaps.

The programs for A158939, there is no canonical definition to state claims against.
-/

/-! ## A158939.P1591928661118208043

`p?[A349642(n)+A130706(n)]`
-/

namespace A158939.P1591928661118208043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349642 n + A130706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158939.P1591928661118208043

/-! ## A158939.P14026507936528355556

`p?[or(A089812(n), A349642(n))]`
-/

namespace A158939.P14026507936528355556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089812 n) (A349642 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158939.P14026507936528355556

/-! ## A158939.P9022719929696394789

`p?[or(A167891(n), A349642(n))]`
-/

namespace A158939.P9022719929696394789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A167891 n) (A349642 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158939.P9022719929696394789

/-!
# A158942: Nonsquares coprime to 10.

The programs for A158942, the canonical program `A158942.P5860238254517438265` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158942 has offset 1).

The definition of A158942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158942.P15951205298208180755

`eq[2^gcd(10, n), A067694(n)]`
-/

namespace A158942.P15951205298208180755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.gcd 10 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158942.P15951205298208180755

namespace A158942

/-- `eq[2^gcd(10, n), A067694(n)]` -/
def P15951205298208180755.Spec : Prop :=
  ∀ n, (P15951205298208180755.a n : ℤ) = A158942 (n + 1)

end A158942

/-! ## A158942.P5860238254517438265

`filter[A045572(n+1), A049240(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158942

/-- `filter[A045572(n+1), A049240(#)]` -/
def P5860238254517438265.Spec : Prop :=
  ∀ n, P5860238254517438265.a n = A158942 (n + 1)

theorem P5860238254517438265.correct : P5860238254517438265.Spec := by
  intro n
  simp only [A158942, Nat.add_sub_cancel]

end A158942

/-! ## A158942.P12716647959488162004

`filter[A045572(n+1), A323158(#)]`
-/

namespace A158942.P12716647959488162004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A158942.P12716647959488162004

namespace A158942

/-- `filter[A045572(n+1), A323158(#)]` -/
def P12716647959488162004.Spec : Prop :=
  ∀ n, P12716647959488162004.a n = A158942 (n + 1)

end A158942

/-! ## A158942.P5591978030827727500

`filter[A045572(n+1), A324903(#)]`
-/

namespace A158942.P5591978030827727500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A158942.P5591978030827727500

namespace A158942

/-- `filter[A045572(n+1), A324903(#)]` -/
def P5591978030827727500.Spec : Prop :=
  ∀ n, P5591978030827727500.a n = A158942 (n + 1)

end A158942

/-! ## A158942.P11014713749799374623

`filter[A045572(n+1), A324908(#)]`
-/

namespace A158942.P11014713749799374623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A158942.P11014713749799374623

namespace A158942

/-- `filter[A045572(n+1), A324908(#)]` -/
def P11014713749799374623.Spec : Prop :=
  ∀ n, P11014713749799374623.a n = A158942 (n + 1)

end A158942

/-! ## A158942.P12608162754327579432

`filter[A045572(n+1), A374474(#)]`
-/

namespace A158942.P12608162754327579432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A158942.P12608162754327579432

namespace A158942

/-- `filter[A045572(n+1), A374474(#)]` -/
def P12608162754327579432.Spec : Prop :=
  ∀ n, P12608162754327579432.a n = A158942 (n + 1)

end A158942

/-! ## A158942.P10766395875608349574

`∩[A045572(n+1), A374475(n+1)]`
-/

namespace A158942.P10766395875608349574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158942.P10766395875608349574

namespace A158942

/-- `∩[A045572(n+1), A374475(n+1)]` -/
def P10766395875608349574.Spec : Prop :=
  ∀ n, (P10766395875608349574.a n : ℤ) = A158942 (n + 1)

end A158942

/-! ## A158942.P9307113365060636897

`filter[A241662(n+1), A324908(#)]`
-/

namespace A158942.P9307113365060636897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A158942.P9307113365060636897

namespace A158942

/-- `filter[A241662(n+1), A324908(#)]` -/
def P9307113365060636897.Spec : Prop :=
  ∀ n, P9307113365060636897.a n = A158942 (n + 1)

end A158942

/-! ## A158942.P11241248226006969694

`filter[A088828(n+1), A011558(#)]`
-/

namespace A158942.P11241248226006969694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A158942.P11241248226006969694

namespace A158942

/-- `filter[A088828(n+1), A011558(#)]` -/
def P11241248226006969694.Spec : Prop :=
  ∀ n, P11241248226006969694.a n = A158942 (n + 1)

end A158942

/-! ## A158942.P16876032361538438959

`∩[A045572(n+1), A088828(n+1)]`
-/

namespace A158942.P16876032361538438959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158942.P16876032361538438959

namespace A158942

/-- `∩[A045572(n+1), A088828(n+1)]` -/
def P16876032361538438959.Spec : Prop :=
  ∀ n, (P16876032361538438959.a n : ℤ) = A158942 (n + 1)

end A158942

/-! ## A158942.P7977930791054097162

`∩[A088828(n+1), A241662(n+1)]`
-/

namespace A158942.P7977930791054097162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158942.P7977930791054097162

namespace A158942

/-- `∩[A088828(n+1), A241662(n+1)]` -/
def P7977930791054097162.Spec : Prop :=
  ∀ n, (P7977930791054097162.a n : ℤ) = A158942 (n + 1)

end A158942

/-! ## A158942.P265068413469042850

`∩[A045572(n+1), A053868(n+1)]`
-/

namespace A158942.P265068413469042850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158942.P265068413469042850

namespace A158942

/-- `∩[A045572(n+1), A053868(n+1)]` -/
def P265068413469042850.Spec : Prop :=
  ∀ n, (P265068413469042850.a n : ℤ) = A158942 (n + 1)

end A158942

/-! ## A158942.P16075050033215071657

`filter[A045572(n+1), A053867(#)]`
-/

namespace A158942.P16075050033215071657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A158942.P16075050033215071657

namespace A158942

/-- `filter[A045572(n+1), A053867(#)]` -/
def P16075050033215071657.Spec : Prop :=
  ∀ n, P16075050033215071657.a n = A158942 (n + 1)

end A158942

/-! ## A158942.P12047014535358679736

`∩[A045572(n+1), A204827(n+1)]`
-/

namespace A158942.P12047014535358679736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158942.P12047014535358679736

namespace A158942

/-- `∩[A045572(n+1), A204827(n+1)]` -/
def P12047014535358679736.Spec : Prop :=
  ∀ n, (P12047014535358679736.a n : ℤ) = A158942 (n + 1)

end A158942

/-! ## A158942.P8485250620576825662

`filter[A160186(n), A324908(#)]`
-/

namespace A158942.P8485250620576825662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A158942.P8485250620576825662

namespace A158942

/-- `filter[A160186(n), A324908(#)]` -/
def P8485250620576825662.Spec : Prop :=
  ∀ n, P8485250620576825662.a n = A158942 (n + 1)

end A158942

/-! ## A158942.P13280640727437063304

`filter[A047201(n+1), A324908(#)]`
-/

namespace A158942.P13280640727437063304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A158942.P13280640727437063304

namespace A158942

/-- `filter[A047201(n+1), A324908(#)]` -/
def P13280640727437063304.Spec : Prop :=
  ∀ n, P13280640727437063304.a n = A158942 (n + 1)

end A158942

/-! ## A158942.P14720466032817816310

`∩[A047201(n+1), A088828(n+1)]`
-/

namespace A158942.P14720466032817816310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158942.P14720466032817816310

namespace A158942

/-- `∩[A047201(n+1), A088828(n+1)]` -/
def P14720466032817816310.Spec : Prop :=
  ∀ n, (P14720466032817816310.a n : ℤ) = A158942 (n + 1)

end A158942

/-!
# A158943: INVERT transform of A027656: (1, 0, 2, 0, 3, 0, 4, 0, 5, ...).

The programs for A158943, the canonical program `A158943.P4260058986364418947` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158943 has offset 1).

The definition of A158943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158943.P4260058986364418947

`a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158943

/-- `a(n-1)+2*a(n-2)-a(n-4)` -/
def P4260058986364418947.Spec : Prop :=
  ∀ n, P4260058986364418947.a n = A158943 (n + 1)

theorem P4260058986364418947.correct : P4260058986364418947.Spec := by
  intro n
  simp only [A158943, Nat.add_sub_cancel]

end A158943

/-! ## A158943.P15806380637781403859

`ogf(1/(1-x-2x^2+x^4))`
-/

namespace A158943.P15806380637781403859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -2, 0, 1] n

end

end A158943.P15806380637781403859

namespace A158943

/-- `ogf(1/(1-x-2x^2+x^4))` -/
def P15806380637781403859.Spec : Prop :=
  ∀ n, P15806380637781403859.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P14807894764862383515

`∑[A052969(n)]`
-/

namespace A158943.P14807894764862383515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158943.P14807894764862383515

namespace A158943

/-- `∑[A052969(n)]` -/
def P14807894764862383515.Spec : Prop :=
  ∀ n, P14807894764862383515.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P2495230756264923293

`A003269(2*(n+1))`
-/

namespace A158943.P2495230756264923293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * (n + 1))

end

end A158943.P2495230756264923293

namespace A158943

/-- `A003269(2*(n+1))` -/
def P2495230756264923293.Spec : Prop :=
  ∀ n, P2495230756264923293.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P15096510209342929401

`A099561(2*(n+2))`
-/

namespace A158943.P15096510209342929401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099561 (2 * (n + 2))

end

end A158943.P15096510209342929401

namespace A158943

/-- `A099561(2*(n+2))` -/
def P15096510209342929401.Spec : Prop :=
  ∀ n, P15096510209342929401.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P5093832453847503640

`A122522(4*(n+1))`
-/

namespace A158943.P5093832453847503640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (4 * (n + 1))

end

end A158943.P5093832453847503640

namespace A158943

/-- `A122522(4*(n+1))` -/
def P5093832453847503640.Spec : Prop :=
  ∀ n, P5093832453847503640.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P7572329246281991468

`A017898(2*n+5)`
-/

namespace A158943.P7572329246281991468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * n + 5)

end

end A158943.P7572329246281991468

namespace A158943

/-- `A017898(2*n+5)` -/
def P7572329246281991468.Spec : Prop :=
  ∀ n, P7572329246281991468.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P16049233015486635960

`∑[A122789(2*(n+1))]`
-/

namespace A158943.P16049233015486635960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158943.P16049233015486635960

namespace A158943

/-- `∑[A122789(2*(n+1))]` -/
def P16049233015486635960.Spec : Prop :=
  ∀ n, P16049233015486635960.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P3173524200110562028

`∑[abs(Δ[A003269(2*n)])]`
-/

namespace A158943.P3173524200110562028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158943.P3173524200110562028

namespace A158943

/-- `∑[abs(Δ[A003269(2*n)])]` -/
def P3173524200110562028.Spec : Prop :=
  ∀ n, P3173524200110562028.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P5019563935470906822

`A052535(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A158943.P5019563935470906822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052535 n + a (n - 2)

end

end A158943.P5019563935470906822

namespace A158943

/-- `A052535(n)+a(n-2)` -/
def P5019563935470906822.Spec : Prop :=
  ∀ n, P5019563935470906822.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P6352563225602624193

`A193146(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A158943.P6352563225602624193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193146 (2 * n) - a (n - 1)

end

end A158943.P6352563225602624193

namespace A158943

/-- `A193146(2*n)-a(n-1)` -/
def P6352563225602624193.Spec : Prop :=
  ∀ n, P6352563225602624193.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P9179714601060303178

`A193146(2*n)-A003269(2*n)`
-/

namespace A158943.P9179714601060303178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193146 (2 * n) - A003269 (2 * n)

end

end A158943.P9179714601060303178

namespace A158943

/-- `A193146(2*n)-A003269(2*n)` -/
def P9179714601060303178.Spec : Prop :=
  ∀ n, P9179714601060303178.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P5853152004193008507

`A079974(2*n+1)+A079974(2*n)`
-/

namespace A158943.P5853152004193008507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079974 (2 * n + 1) + A079974 (2 * n)

end

end A158943.P5853152004193008507

namespace A158943

/-- `A079974(2*n+1)+A079974(2*n)` -/
def P5853152004193008507.Spec : Prop :=
  ∀ n, P5853152004193008507.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P1742257709661989290

`A122789(2*n+1)+A122789(2*n+3)`
-/

namespace A158943.P1742257709661989290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (2 * n + 1) + A122789 (2 * n + 3)

end

end A158943.P1742257709661989290

namespace A158943

/-- `A122789(2*n+1)+A122789(2*n+3)` -/
def P1742257709661989290.Spec : Prop :=
  ∀ n, P1742257709661989290.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P5977001315915822471

`Δ[record[a(n-4)-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A158943.P5977001315915822471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f2 =>
  f2 (n - 4) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158943.P5977001315915822471

namespace A158943

/-- `Δ[record[a(n-4)-a(n-1)]]` -/
def P5977001315915822471.Spec : Prop :=
  ∀ n, P5977001315915822471.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P12262176188562815849

`Δ[A109222(n)]`
-/

namespace A158943.P12262176188562815849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158943.P12262176188562815849

namespace A158943

/-- `Δ[A109222(n)]` -/
def P12262176188562815849.Spec : Prop :=
  ∀ n, P12262176188562815849.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P15809617470092573399

`Δ[A103632(2*(n+1))]`
-/

namespace A158943.P15809617470092573399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158943.P15809617470092573399

namespace A158943

/-- `Δ[A103632(2*(n+1))]` -/
def P15809617470092573399.Spec : Prop :=
  ∀ n, P15809617470092573399.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P10732010446050066157

`Δ[A079974(2*n+3)]`
-/

namespace A158943.P10732010446050066157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079974 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158943.P10732010446050066157

namespace A158943

/-- `Δ[A079974(2*n+3)]` -/
def P10732010446050066157.Spec : Prop :=
  ∀ n, P10732010446050066157.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P10684536673200098413

`Δ[A003411(A004275(n))]`
-/

namespace A158943.P10684536673200098413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158943.P10684536673200098413

namespace A158943

/-- `Δ[A003411(A004275(n))]` -/
def P10684536673200098413.Spec : Prop :=
  ∀ n, P10684536673200098413.a n = A158943 (n + 1)

end A158943

/-! ## A158943.P317150926721795877

`A109222(n+1)-A109222(n)`
-/

namespace A158943.P317150926721795877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109222 (n + 1) - A109222 n

end

end A158943.P317150926721795877

namespace A158943

/-- `A109222(n+1)-A109222(n)` -/
def P317150926721795877.Spec : Prop :=
  ∀ n, P317150926721795877.a n = A158943 (n + 1)

end A158943

/-!
# A158944: Triangle by columns: the natural numbers interleaved with zeros in every column: (1, 0, 2, 0, 3, 0, 4, ...)

The programs for A158944, the canonical program `A158944.P8822807303414981029` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158944 has offset 1).

The definition of A158944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158944.P16380777281256412147

`ceil(log2(A156663(n)+1))`
-/

namespace A158944.P16380777281256412147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A156663 n + 1 : ℝ)⌉

end

end A158944.P16380777281256412147

namespace A158944

/-- `ceil(log2(A156663(n)+1))` -/
def P16380777281256412147.Spec : Prop :=
  ∀ n, P16380777281256412147.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P3784818375814052344

`comp[∑[4*n]]%2*A115514(n+1)`
-/

namespace A158944.P3784818375814052344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A115514 (n + 1)

end

end A158944.P3784818375814052344

namespace A158944

/-- `comp[∑[4*n]]%2*A115514(n+1)` -/
def P3784818375814052344.Spec : Prop :=
  ∀ n, P3784818375814052344.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P6675191126452901849

`A027656(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A158944.P6675191126452901849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A158944.P6675191126452901849

namespace A158944

/-- `A027656(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P6675191126452901849.Spec : Prop :=
  ∀ n, P6675191126452901849.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P11299293500630114428

`A142150(C(comp[∑[n]]-n, 2)-n+1)`
-/

namespace A158944.P11299293500630114428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A158944.P11299293500630114428

namespace A158944

/-- `A142150(C(comp[∑[n]]-n, 2)-n+1)` -/
def P11299293500630114428.Spec : Prop :=
  ∀ n, P11299293500630114428.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P4077139997824991664

`A027656(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A158944.P4077139997824991664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A158944.P4077139997824991664

namespace A158944

/-- `A027656(C(comp[∑[n]]-n, 2)-n-1)` -/
def P4077139997824991664.Spec : Prop :=
  ∀ n, P4077139997824991664.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P8889879063326460403

`A142150(C(comp[∑[n]]-n, 2)-(n-1))`
-/

namespace A158944.P8889879063326460403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - ((n : ℤ) - 1)).toNat

end

end A158944.P8889879063326460403

namespace A158944

/-- `A142150(C(comp[∑[n]]-n, 2)-(n-1))` -/
def P8889879063326460403.Spec : Prop :=
  ∀ n, P8889879063326460403.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P8822807303414981029

`A027656(A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158944

/-- `A027656(A025581(n))` -/
def P8822807303414981029.Spec : Prop :=
  ∀ n, P8822807303414981029.a n = A158944 (n + 1)

theorem P8822807303414981029.correct : P8822807303414981029.Spec := by
  intro n
  simp only [A158944, Nat.add_sub_cancel]

end A158944

/-! ## A158944.P1923652768907478449

`A029906(A104571(n))`
-/

namespace A158944.P1923652768907478449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 (A104571 n).toNat

end

end A158944.P1923652768907478449

namespace A158944

/-- `A029906(A104571(n))` -/
def P1923652768907478449.Spec : Prop :=
  ∀ n, P1923652768907478449.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P4962766804187369564

`A087508(A104568(n))`
-/

namespace A158944.P4962766804187369564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A104568 n).toNat

end

end A158944.P4962766804187369564

namespace A158944

/-- `A087508(A104568(n))` -/
def P4962766804187369564.Spec : Prop :=
  ∀ n, P4962766804187369564.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P3757055371696885318

`A037213(A128177(n+1))`
-/

namespace A158944.P3757055371696885318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A128177 (n + 1)).toNat

end

end A158944.P3757055371696885318

namespace A158944

/-- `A037213(A128177(n+1))` -/
def P3757055371696885318.Spec : Prop :=
  ∀ n, P3757055371696885318.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P2650197993745650694

`A029906(A212012(n+1))`
-/

namespace A158944.P2650197993745650694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 (A212012 (n + 1)).toNat

end

end A158944.P2650197993745650694

namespace A158944

/-- `A029906(A212012(n+1))` -/
def P2650197993745650694.Spec : Prop :=
  ∀ n, P2650197993745650694.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P152051978741179380

`A142150(A025581(n)+2)`
-/

namespace A158944.P152051978741179380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A025581 n + 2).toNat

end

end A158944.P152051978741179380

namespace A158944

/-- `A142150(A025581(n)+2)` -/
def P152051978741179380.Spec : Prop :=
  ∀ n, P152051978741179380.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P13829828182136441562

`A142150(A004736(n+1)+1)`
-/

namespace A158944.P13829828182136441562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A004736 (n + 1) + 1).toNat

end

end A158944.P13829828182136441562

namespace A158944

/-- `A142150(A004736(n+1)+1)` -/
def P13829828182136441562.Spec : Prop :=
  ∀ n, P13829828182136441562.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P8833172662661078743

`lcm(A115514(n+1), A369736(n))`
-/

namespace A158944.P8833172662661078743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115514 (n + 1)) (A369736 n)

end

end A158944.P8833172662661078743

namespace A158944

/-- `lcm(A115514(n+1), A369736(n))` -/
def P8833172662661078743.Spec : Prop :=
  ∀ n, (P8833172662661078743.a n : ℤ) = A158944 (n + 1)

end A158944

/-! ## A158944.P10205247768520486141

`A115514(n+1)*A128174(n+1)`
-/

namespace A158944.P10205247768520486141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (n + 1) * A128174 (n + 1)

end

end A158944.P10205247768520486141

namespace A158944

/-- `A115514(n+1)*A128174(n+1)` -/
def P10205247768520486141.Spec : Prop :=
  ∀ n, P10205247768520486141.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P7883257408075567353

`A128174(n+1)/A002260(n+1)*A134446(n+1)`
-/

namespace A158944.P7883257408075567353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128174 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A134446 (n + 1) : ℚ)

end

end A158944.P7883257408075567353

namespace A158944

/-- `A128174(n+1)/A002260(n+1)*A134446(n+1)` -/
def P7883257408075567353.Spec : Prop :=
  ∀ n, P7883257408075567353.a n = (A158944 (n + 1) : ℚ)

end A158944

/-! ## A158944.P3157047694877264160

`A128174(n+1)*A209278(n+1)`
-/

namespace A158944.P3157047694877264160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A209278 (n + 1)

end

end A158944.P3157047694877264160

namespace A158944

/-- `A128174(n+1)*A209278(n+1)` -/
def P3157047694877264160.Spec : Prop :=
  ∀ n, P3157047694877264160.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P657115590349565627

`(A209293(n+1)-n)*A128174(n+1)`
-/

namespace A158944.P657115590349565627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A209293 (n + 1) - (n : ℤ)) * A128174 (n + 1)

end

end A158944.P657115590349565627

namespace A158944

/-- `(A209293(n+1)-n)*A128174(n+1)` -/
def P657115590349565627.Spec : Prop :=
  ∀ n, P657115590349565627.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P15573469518364471601

`A128174(n+1)*A135840(n+1)`
-/

namespace A158944.P15573469518364471601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A135840 (n + 1)

end

end A158944.P15573469518364471601

namespace A158944

/-- `A128174(n+1)*A135840(n+1)` -/
def P15573469518364471601.Spec : Prop :=
  ∀ n, P15573469518364471601.a n = A158944 (n + 1)

end A158944

/-! ## A158944.P12620194340434099903

`log2(∑{d}[A156663(2*n-n), #]+1)`
-/

namespace A158944.P12620194340434099903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 (2 * n - n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1 : ℕ) : ℝ)

end

end A158944.P12620194340434099903

namespace A158944

/-- `log2(∑{d}[A156663(2*n-n), #]+1)` -/
def P12620194340434099903.Spec : Prop :=
  ∀ n, P12620194340434099903.a n = (A158944 (n + 1) : ℝ)

end A158944

/-!
# A158945: Triangle read by rows, A158944 * an infinite matrix with A158943 (prefaced with a 1) as the right border: (1, 1, 1, 3, 5, 10, 19, 36, ...) and the rest zeros.

The programs for A158945, there is no canonical definition to state claims against.
-/

/-! ## A158945.P11774802079505821721

`A158943(A144328(n+1))*A158944(n+1)`
-/

namespace A158945.P11774802079505821721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158943 (A144328 (n + 1)).toNat * A158944 (n + 1)

end

end A158945.P11774802079505821721

/-! ## A158945.P14284269591007067119

`A027656(A025581(n))*A158943(A144328(n+1))`
-/

namespace A158945.P14284269591007067119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A025581 n).toNat * A158943 (A144328 (n + 1)).toNat

end

end A158945.P14284269591007067119

/-! ## A158945.P4765336293788455953

`A029931(A156663(n))*A158943(A144328(n+1))`
-/

namespace A158945.P4765336293788455953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A156663 n).toNat * A158943 (A144328 (n + 1)).toNat

end

end A158945.P4765336293788455953

/-! ## A158945.P13939870618674053803

`A087508(A104568(n))*A158943(A144328(n+1))`
-/

namespace A158945.P13939870618674053803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A104568 n).toNat * A158943 (A144328 (n + 1)).toNat

end

end A158945.P13939870618674053803

/-! ## A158945.P2853947912772571828

`A142150(A004736(n+1)+1)*A158943(A144328(n+1))`
-/

namespace A158945.P2853947912772571828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A004736 (n + 1) + 1).toNat * A158943 (A144328 (n + 1)).toNat

end

end A158945.P2853947912772571828

/-!
# A158946: Triangle read by rows, A000012(signed) * A145677 * A000012.

The programs for A158946, the canonical program `A158946.P11062065186975747176` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158946 has offset 1).

The definition of A158946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158946.P11062065186975747176

`A209279(A066182(n+1)-A003056(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A158946

/-- `A209279(A066182(n+1)-A003056(n))` -/
def P11062065186975747176.Spec : Prop :=
  ∀ n, P11062065186975747176.a n = A158946 (n + 1)

theorem P11062065186975747176.correct : P11062065186975747176.Spec := by
  intro n
  simp only [A158946, Nat.add_sub_cancel]

end A158946

/-! ## A158946.P6952292963581548092

`A209279(n+1)-A060510(A038722(n+1))`
-/

namespace A158946.P6952292963581548092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) - A060510 (A038722 (n + 1)).toNat

end

end A158946.P6952292963581548092

namespace A158946

/-- `A209279(n+1)-A060510(A038722(n+1))` -/
def P6952292963581548092.Spec : Prop :=
  ∀ n, P6952292963581548092.a n = A158946 (n + 1)

end A158946

/-! ## A158946.P16736095027764573712

`A128174(A066182(n+1))+A209279(n+1)-1`
-/

namespace A158946.P16736095027764573712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A066182 (n + 1)).toNat + (A209279 (n + 1) - 1)

end

end A158946.P16736095027764573712

namespace A158946

/-- `A128174(A066182(n+1))+A209279(n+1)-1` -/
def P16736095027764573712.Spec : Prop :=
  ∀ n, P16736095027764573712.a n = A158946 (n + 1)

end A158946

/-! ## A158946.P16854986248209242479

`A209279(n+1)+A128174(A080036(n))-1`
-/

namespace A158946.P16854986248209242479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) + (A128174 (A080036 n).toNat - 1)

end

end A158946.P16854986248209242479

namespace A158946

/-- `A209279(n+1)+A128174(A080036(n))-1` -/
def P16854986248209242479.Spec : Prop :=
  ∀ n, P16854986248209242479.a n = A158946 (n + 1)

end A158946

/-! ## A158946.P6658365467124571042

`A128174(A080036(n))-A024000(A209279(n+1))`
-/

namespace A158946.P6658365467124571042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A080036 n).toNat - A024000 (A209279 (n + 1)).toNat

end

end A158946.P6658365467124571042

namespace A158946

/-- `A128174(A080036(n))-A024000(A209279(n+1))` -/
def P6658365467124571042.Spec : Prop :=
  ∀ n, P6658365467124571042.a n = A158946 (n + 1)

end A158946

/-! ## A158946.P16888195101517318900

`A209279(n+1)-A157928(A130125(n))`
-/

namespace A158946.P16888195101517318900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) - A157928 (A130125 n).toNat

end

end A158946.P16888195101517318900

namespace A158946

/-- `A209279(n+1)-A157928(A130125(n))` -/
def P16888195101517318900.Spec : Prop :=
  ∀ n, P16888195101517318900.a n = A158946 (n + 1)

end A158946

/-! ## A158946.P16719019976331695753

`A332104(n)+A128174(A028310(n))`
-/

namespace A158946.P16719019976331695753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332104 n + A128174 (A028310 n).toNat

end

end A158946.P16719019976331695753

namespace A158946

/-- `A332104(n)+A128174(A028310(n))` -/
def P16719019976331695753.Spec : Prop :=
  ∀ n, P16719019976331695753.a n = A158946 (n + 1)

end A158946

/-! ## A158946.P17354531776282292492

`A332104(n)+A128174(A080036(n))`
-/

namespace A158946.P17354531776282292492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332104 n + A128174 (A080036 n).toNat

end

end A158946.P17354531776282292492

namespace A158946

/-- `A332104(n)+A128174(A080036(n))` -/
def P17354531776282292492.Spec : Prop :=
  ∀ n, P17354531776282292492.a n = A158946 (n + 1)

end A158946

/-! ## A158946.P1727058879519894662

`A332104(n)+A128174(A066182(n+1))`
-/

namespace A158946.P1727058879519894662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332104 n + A128174 (A066182 (n + 1)).toNat

end

end A158946.P1727058879519894662

namespace A158946

/-- `A332104(n)+A128174(A066182(n+1))` -/
def P1727058879519894662.Spec : Prop :=
  ∀ n, P1727058879519894662.a n = A158946 (n + 1)

end A158946

/-! ## A158946.P7765923081064793588

`A332104(n)+A000035(A200370(n+1))`
-/

namespace A158946.P7765923081064793588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332104 n + A000035 (A200370 (n + 1)).toNat

end

end A158946.P7765923081064793588

namespace A158946

/-- `A332104(n)+A000035(A200370(n+1))` -/
def P7765923081064793588.Spec : Prop :=
  ∀ n, P7765923081064793588.a n = A158946 (n + 1)

end A158946

/-!
# A158948: Triangle read by rows, left border = natural numbers repeated (1, 1, 2, 2, 3, 3, ...); all other columns = (1, 0, 1, 0, 1, 0, ...).

The programs for A158948, the canonical program `A158948.P15529743855966853988` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158948 has offset 1).

The definition of A158948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158948.P10723392808568764902

`Δ[A115514(round(acot(n)+n))]+1`
-/

namespace A158948.P10723392808568764902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A158948.P10723392808568764902

namespace A158948

/-- `Δ[A115514(round(acot(n)+n))]+1` -/
def P10723392808568764902.Spec : Prop :=
  ∀ n, P10723392808568764902.a n = A158948 (n + 1)

end A158948

/-! ## A158948.P15529743855966853988

`Δ[A115514(abs(1-n)+1)+n]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A158948

/-- `Δ[A115514(abs(1-n)+1)+n]` -/
def P15529743855966853988.Spec : Prop :=
  ∀ n, P15529743855966853988.a n = A158948 (n + 1)

theorem P15529743855966853988.correct : P15529743855966853988.Spec := by
  intro n
  simp only [A158948, Nat.add_sub_cancel]

end A158948

/-! ## A158948.P6604649986299079679

`A110654(and(round(sqrt(2*n))*char[∑[n]]+1, C(comp[∑[n]]-n, 2)-n))`
-/

namespace A158948.P6604649986299079679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.land (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A158948.P6604649986299079679

namespace A158948

/-- `A110654(and(round(sqrt(2*n))*char[∑[n]]+1, C(comp[∑[n]]-n, 2)-n))` -/
def P6604649986299079679.Spec : Prop :=
  ∀ n, P6604649986299079679.a n = A158948 (n + 1)

end A158948

/-! ## A158948.P1245417981377006031

`floor(ratio[A115514(A028310(n))])`
-/

namespace A158948.P1245417981377006031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A158948.P1245417981377006031

namespace A158948

/-- `floor(ratio[A115514(A028310(n))])` -/
def P1245417981377006031.Spec : Prop :=
  ∀ n, P1245417981377006031.a n = A158948 (n + 1)

end A158948

/-! ## A158948.P9151896977491577776

`Δ[floor(A193592(n)/2)]+1`
-/

namespace A158948.P9151896977491577776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193592 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A158948.P9151896977491577776

namespace A158948

/-- `Δ[floor(A193592(n)/2)]+1` -/
def P9151896977491577776.Spec : Prop :=
  ∀ n, P9151896977491577776.a n = A158948 (n + 1)

end A158948

/-! ## A158948.P16468461079557017743

`floor(ratio[A008619(A193592(n))])`
-/

namespace A158948.P16468461079557017743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A158948.P16468461079557017743

namespace A158948

/-- `floor(ratio[A008619(A193592(n))])` -/
def P16468461079557017743.Spec : Prop :=
  ∀ n, P16468461079557017743.a n = A158948 (n + 1)

end A158948

/-! ## A158948.P13281747305052304218

`Δ[A168258(a(n-1))+n]` with `a(0)=1`
-/

namespace A158948.P13281747305052304218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A168258 (f1 (n - 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158948.P13281747305052304218

namespace A158948

/-- `Δ[A168258(a(n-1))+n]` -/
def P13281747305052304218.Spec : Prop :=
  ∀ n, P13281747305052304218.a n = A158948 (n + 1)

end A158948

/-! ## A158948.P14413740521332698582

`A158950(n+1)^a(n-1)` with `a(0)=1`
-/

namespace A158948.P14413740521332698582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A158950 (n + 1) : ℝ) ^ (a (n - 1))

end

end A158948.P14413740521332698582

namespace A158948

/-- `A158950(n+1)^a(n-1)` -/
def P14413740521332698582.Spec : Prop :=
  ∀ n, P14413740521332698582.a n = (A158948 (n + 1) : ℝ)

end A158948

/-! ## A158948.P4494801554082043858

`Δ[ceil(A136272(n+1)/2)]`
-/

namespace A158948.P4494801554082043858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136272 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158948.P4494801554082043858

namespace A158948

/-- `Δ[ceil(A136272(n+1)/2)]` -/
def P4494801554082043858.Spec : Prop :=
  ∀ n, P4494801554082043858.a n = A158948 (n + 1)

end A158948

/-!
# A158949: Inverse Moebius transform of A065958.

The programs for A158949, the canonical program `A158949.P10603836199365168216` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158949 has offset 1).

The definition of A158949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158949.P2607839569386915141

`∑{d}[n+1, A065958(#)]`
-/

namespace A158949.P2607839569386915141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d

end

end A158949.P2607839569386915141

namespace A158949

/-- `∑{d}[n+1, A065958(#)]` -/
def P2607839569386915141.Spec : Prop :=
  ∀ n, P2607839569386915141.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P15587027910349185865

`∑{d}[n+1, A001157(#)*A008966((n+1)/#)]`
-/

namespace A158949.P15587027910349185865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P15587027910349185865

namespace A158949

/-- `∑{d}[n+1, A001157(#)*A008966((n+1)/#)]` -/
def P15587027910349185865.Spec : Prop :=
  ∀ n, P15587027910349185865.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P2328241876638188380

`∑{d}[n+1, A000290(#)*A034444((n+1)/#)]`
-/

namespace A158949.P2328241876638188380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P2328241876638188380

namespace A158949

/-- `∑{d}[n+1, A000290(#)*A034444((n+1)/#)]` -/
def P2328241876638188380.Spec : Prop :=
  ∀ n, P2328241876638188380.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P13498906606185599561

`∑{d}[n+1, A008833(#)*A034676((n+1)/#)]`
-/

namespace A158949.P13498906606185599561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A034676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P13498906606185599561

namespace A158949

/-- `∑{d}[n+1, A008833(#)*A034676((n+1)/#)]` -/
def P13498906606185599561.Spec : Prop :=
  ∀ n, P13498906606185599561.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P9232077843090274363

`∑{d}[n+1, A007434(#)*A048691((n+1)/#)]`
-/

namespace A158949.P9232077843090274363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P9232077843090274363

namespace A158949

/-- `∑{d}[n+1, A007434(#)*A048691((n+1)/#)]` -/
def P9232077843090274363.Spec : Prop :=
  ∀ n, P9232077843090274363.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P15790370638854653630

`∑{d}[n+1, A001615(#)*A057660((n+1)/#)]`
-/

namespace A158949.P15790370638854653630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P15790370638854653630

namespace A158949

/-- `∑{d}[n+1, A001615(#)*A057660((n+1)/#)]` -/
def P15790370638854653630.Spec : Prop :=
  ∀ n, P15790370638854653630.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P10317189350570078762

`∑{d}[n+1, A002618(#)*A060648((n+1)/#)]`
-/

namespace A158949.P10317189350570078762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P10317189350570078762

namespace A158949

/-- `∑{d}[n+1, A002618(#)*A060648((n+1)/#)]` -/
def P10317189350570078762.Spec : Prop :=
  ∀ n, P10317189350570078762.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P10603836199365168216

`∑{d}[n+1, A060724(#)*A063445((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A158949

/-- `∑{d}[n+1, A060724(#)*A063445((n+1)/#)]` -/
def P10603836199365168216.Spec : Prop :=
  ∀ n, P10603836199365168216.a n = A158949 (n + 1)

theorem P10603836199365168216.correct : P10603836199365168216.Spec := by
  intro n
  simp only [A158949, Nat.add_sub_cancel]

end A158949

/-! ## A158949.P2198921609893175488

`∑{d}[n+1, A076577(#)*A078461((n+1)/#)]`
-/

namespace A158949.P2198921609893175488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076577 d * A078461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P2198921609893175488

namespace A158949

/-- `∑{d}[n+1, A076577(#)*A078461((n+1)/#)]` -/
def P2198921609893175488.Spec : Prop :=
  ∀ n, P2198921609893175488.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P12256651971372365485

`∑{d}[n+1, A007433(#)*A271102((n+1)/#)]`
-/

namespace A158949.P12256651971372365485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P12256651971372365485

namespace A158949

/-- `∑{d}[n+1, A007433(#)*A271102((n+1)/#)]` -/
def P12256651971372365485.Spec : Prop :=
  ∀ n, P12256651971372365485.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P11943470414647942569

`∑{d}[n+1, A068976(#)*A254520((n+1)/#)]`
-/

namespace A158949.P11943470414647942569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068976 d * A254520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P11943470414647942569

namespace A158949

/-- `∑{d}[n+1, A068976(#)*A254520((n+1)/#)]` -/
def P11943470414647942569.Spec : Prop :=
  ∀ n, P11943470414647942569.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P2394489146483540239

`∑{d}[n+1, A001001(#)*A328729((n+1)/#)]`
-/

namespace A158949.P2394489146483540239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P2394489146483540239

namespace A158949

/-- `∑{d}[n+1, A001001(#)*A328729((n+1)/#)]` -/
def P2394489146483540239.Spec : Prop :=
  ∀ n, P2394489146483540239.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P9412255769628769991

`∑{d}[n+1, A035116(#)*A321322((n+1)/#)]`
-/

namespace A158949.P9412255769628769991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P9412255769628769991

namespace A158949

/-- `∑{d}[n+1, A035116(#)*A321322((n+1)/#)]` -/
def P9412255769628769991.Spec : Prop :=
  ∀ n, P9412255769628769991.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P11773161172938594067

`∑{d}[n+1, A091519(#)*A317528((n+1)/#)]`
-/

namespace A158949.P11773161172938594067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091519 d * A317528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P11773161172938594067

namespace A158949

/-- `∑{d}[n+1, A091519(#)*A317528((n+1)/#)]` -/
def P11773161172938594067.Spec : Prop :=
  ∀ n, P11773161172938594067.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P17922709227351567855

`∑{d}[n+1, A327251(#)*A340850((n+1)/#)]`
-/

namespace A158949.P17922709227351567855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327251 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P17922709227351567855

namespace A158949

/-- `∑{d}[n+1, A327251(#)*A340850((n+1)/#)]` -/
def P17922709227351567855.Spec : Prop :=
  ∀ n, P17922709227351567855.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P3961566345838582766

`∑{d}[(n+1)², A008833(#)]`
-/

namespace A158949.P3961566345838582766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d

end

end A158949.P3961566345838582766

namespace A158949

/-- `∑{d}[(n+1)², A008833(#)]` -/
def P3961566345838582766.Spec : Prop :=
  ∀ n, P3961566345838582766.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P13803065188603115139

`A068976((n+1)²)`
-/

namespace A158949.P13803065188603115139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068976 ((n + 1) ^ 2)

end

end A158949.P13803065188603115139

namespace A158949

/-- `A068976((n+1)²)` -/
def P13803065188603115139.Spec : Prop :=
  ∀ n, P13803065188603115139.a n = A158949 (n + 1)

end A158949

/-! ## A158949.P1951347764362264037

`∑{d}[(n+1)², A000188(#)²]`
-/

namespace A158949.P1951347764362264037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000188 d ^ 2

end

end A158949.P1951347764362264037

namespace A158949

/-- `∑{d}[(n+1)², A000188(#)²]` -/
def P1951347764362264037.Spec : Prop :=
  ∀ n, P1951347764362264037.a n = A158949 (n + 1)

end A158949

/-!
# A158950: Triangle read by rows, A158948 * (an infinite lower triangular matrix with A000071 prefaced with a 1 as the right border; and the rest zeros).

The programs for A158950, there is no canonical definition to state claims against.
-/

/-! ## A158950.P262665278734190713

`A170942(A331693(n)+A317304(n+1))`
-/

namespace A158950.P262665278734190713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170942 (A331693 n + A317304 (n + 1)).toNat

end

end A158950.P262665278734190713

/-! ## A158950.P1167400651521614423

`A086436(A000051(n))-A298100(n+1)`
-/

namespace A158950.P1167400651521614423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A000051 n).toNat - A298100 (n + 1)

end

end A158950.P1167400651521614423

/-! ## A158950.P17837427130087831652

`A347730(A051908(n+1)+A008632(n))`
-/

namespace A158950.P17837427130087831652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347730 (A051908 (n + 1) + A008632 n).toNat

end

end A158950.P17837427130087831652

/-! ## A158950.P17118405004809706408

`A033762(A300913(n)+A203571(2*n+3))`
-/

namespace A158950.P17118405004809706408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A300913 n + A203571 (2 * n + 3)).toNat

end

end A158950.P17118405004809706408

/-! ## A158950.P2563681042359926954

`A257992(A000792(2*n+3)-n)+A083093(A128662(n+1))`
-/

namespace A158950.P2563681042359926954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A000792 (2 * n + 3) - (n : ℤ)).toNat + A083093 (A128662 (n + 1)).toNat

end

end A158950.P2563681042359926954

/-!
# A158951: Triangle read by rows, A051731 * A158948.

The programs for A158951, there is no canonical definition to state claims against.
-/

/-! ## A158951.P3644654877125547574

`and(A001511(A176088(n)), A078812(n))`
-/

namespace A158951.P3644654877125547574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001511 (A176088 n).toNat) (A078812 n)

end

end A158951.P3644654877125547574

/-! ## A158951.P1788748853112047393

`A248805(A001405(n))+A126988(n+1)`
-/

namespace A158951.P1788748853112047393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A001405 n).toNat + A126988 (n + 1)

end

end A158951.P1788748853112047393

/-! ## A158951.P1367569611210627138

`and(A001511(A176088(n)), A004736(n+1))`
-/

namespace A158951.P1367569611210627138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001511 (A176088 n).toNat) (A004736 (n + 1))

end

end A158951.P1367569611210627138

/-! ## A158951.P413827054049239963

`and(A078812(n), A132832(A085383(n+1)))`
-/

namespace A158951.P413827054049239963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078812 n) (A132832 (A085383 (n + 1)).toNat)

end

end A158951.P413827054049239963

/-! ## A158951.P12929410177565850188

`A031424(2*(n+1))-A353350(A035090(n+1))`
-/

namespace A158951.P12929410177565850188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031424 (2 * (n + 1)) - A353350 (A035090 (n + 1)).toNat

end

end A158951.P12929410177565850188

/-!
# A158952: Inverse Euler transform of the number of partitions in expanding space (A023881).

The programs for A158952, there is no canonical definition to state claims against.
-/

/-! ## A158952.P12252454033046762443

`A353233(n+1)/(n+1)`
-/

namespace A158952.P12252454033046762443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353233 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A158952.P12252454033046762443

/-!
# A158954: Numerator of Hermite(n, 1/4).

The programs for A158954, there is no canonical definition to state claims against.
-/

/-! ## A158954.P17959534016154091140

`A260644(A152059(n))-C(n²+1, 2)`
-/

namespace A158954.P17959534016154091140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260644 (A152059 n).toNat - (Nat.choose (n ^ 2 + 1) 2 : ℤ)

end

end A158954.P17959534016154091140

/-!
# A158955: First differences of A061241.

The programs for A158955, the canonical program `A158955.P17986053229698884062` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158955 has offset 1).

The definition of A158955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158955.P17986053229698884062

`or(1, p?[a(n-1)+9])-A061241(n+1)` with `a(0)=16`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158955

/-- `or(1, p?[a(n-1)+9])-A061241(n+1)` -/
def P17986053229698884062.Spec : Prop :=
  ∀ n, P17986053229698884062.a n = A158955 (n + 1)

theorem P17986053229698884062.correct : P17986053229698884062.Spec := by
  intro n
  simp only [A158955, Nat.add_sub_cancel]

end A158955

/-! ## A158955.P8467475362790028624

`Δ[p?[9*n-2]]`
-/

namespace A158955.P8467475362790028624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158955.P8467475362790028624

namespace A158955

/-- `Δ[p?[9*n-2]]` -/
def P8467475362790028624.Spec : Prop :=
  ∀ n, P8467475362790028624.a n = A158955 (n + 1)

end A158955

/-! ## A158955.P4874709489407794078

`abs(Δ[p?[a(n-1)+9]])` with `a(0)=7`
-/

namespace A158955.P4874709489407794078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A158955.P4874709489407794078

namespace A158955

/-- `abs(Δ[p?[a(n-1)+9]])` -/
def P4874709489407794078.Spec : Prop :=
  ∀ n, P4874709489407794078.a n = A158955 (n + 1)

end A158955

/-! ## A158955.P11534192751826960869

`Δ[A061241(n+1)]`
-/

namespace A158955.P11534192751826960869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158955.P11534192751826960869

namespace A158955

/-- `Δ[A061241(n+1)]` -/
def P11534192751826960869.Spec : Prop :=
  ∀ n, P11534192751826960869.a n = A158955 (n + 1)

end A158955

/-! ## A158955.P9925844832634270299

`Δ[9*A024910(n+1)]`
-/

namespace A158955.P9925844832634270299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A024910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158955.P9925844832634270299

namespace A158955

/-- `Δ[9*A024910(n+1)]` -/
def P9925844832634270299.Spec : Prop :=
  ∀ n, P9925844832634270299.a n = A158955 (n + 1)

end A158955

/-! ## A158955.P10440884904052397962

`A061241(n+2)-p?[9*n-2]`
-/

namespace A158955.P10440884904052397962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158955.P10440884904052397962

namespace A158955

/-- `A061241(n+2)-p?[9*n-2]` -/
def P10440884904052397962.Spec : Prop :=
  ∀ n, P10440884904052397962.a n = A158955 (n + 1)

end A158955

/-! ## A158955.P5992405239051228881

`A061241(n+2)-A061241(n+1)`
-/

namespace A158955.P5992405239051228881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 2) - A061241 (n + 1)

end

end A158955.P5992405239051228881

namespace A158955

/-- `A061241(n+2)-A061241(n+1)` -/
def P5992405239051228881.Spec : Prop :=
  ∀ n, P5992405239051228881.a n = A158955 (n + 1)

end A158955

/-! ## A158955.P17817543110047796605

`Δ[or(1, record[A020639(3*(3*n+2)+1)])]`
-/

namespace A158955.P17817543110047796605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (3 * n + 2) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158955.P17817543110047796605

namespace A158955

/-- `Δ[or(1, record[A020639(3*(3*n+2)+1)])]` -/
def P17817543110047796605.Spec : Prop :=
  ∀ n, P17817543110047796605.a n = A158955 (n + 1)

end A158955

/-! ## A158955.P11018368790504023978

`p?[A017245(n+1)]-p?[A017245(n)]`
-/

namespace A158955.P11018368790504023978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A158955.P11018368790504023978

namespace A158955

/-- `p?[A017245(n+1)]-p?[A017245(n)]` -/
def P11018368790504023978.Spec : Prop :=
  ∀ n, P11018368790504023978.a n = A158955 (n + 1)

end A158955

/-! ## A158955.P17754704180662541745

`Δ[or(1, record[A014963(9*n+7)])]`
-/

namespace A158955.P17754704180662541745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158955.P17754704180662541745

namespace A158955

/-- `Δ[or(1, record[A014963(9*n+7)])]` -/
def P17754704180662541745.Spec : Prop :=
  ∀ n, P17754704180662541745.a n = A158955 (n + 1)

end A158955

/-! ## A158955.P6346318581843918575

`Δ[record[A014963(7*n+2*n+7)]]`
-/

namespace A158955.P6346318581843918575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + (2 * n + 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158955.P6346318581843918575

namespace A158955

/-- `Δ[record[A014963(7*n+2*n+7)]]` -/
def P6346318581843918575.Spec : Prop :=
  ∀ n, P6346318581843918575.a n = A158955 (n + 1)

end A158955

/-!
# A158958: Numerator of Hermite(n, 3/4).

The programs for A158958, there is no canonical definition to state claims against.
-/

/-! ## A158958.P7287889080968660224

`∏[3-8*(n-1)/a(n-1)]` with `a(0)=1`
-/

namespace A158958.P7287889080968660224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - (8 * ((n : ℤ) - 1) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A158958.P7287889080968660224

/-!
# A158960: Numerator of Hermite(n, 1/5).

The programs for A158960, there is no canonical definition to state claims against.
-/

/-! ## A158960.P6320845012974837438

`(-1)^floor(n/2)*2^ceil(n/2)*A237987(n)`
-/

namespace A158960.P6320845012974837438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * (A237987 n : ℚ)

end

end A158960.P6320845012974837438

/-!
# A158971: a(n) is the smallest number m such that m n's + 1 is prime and zero if there is no such m.

The programs for A158971, there is no canonical definition to state claims against.
-/

/-! ## A158971.P11974235422567792363

`A344478(A353564(n+2))`
-/

namespace A158971.P11974235422567792363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344478 (A353564 (n + 2)).toNat

end

end A158971.P11974235422567792363

/-! ## A158971.P15581879414588162710

`A122285(A302460(n+1))*A264739(n+1)`
-/

namespace A158971.P15581879414588162710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 (A302460 (n + 1)).toNat * A264739 (n + 1)

end

end A158971.P15581879414588162710

/-! ## A158971.P12622053721824122057

`A122285(A302460(n+1))%A322310(n+1)`
-/

namespace A158971.P12622053721824122057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122285 (A302460 (n + 1)).toNat) (A322310 (n + 1))

end

end A158971.P12622053721824122057

/-! ## A158971.P6364341510606959230

`A322306(or(1, A322310(n+1)))`
-/

namespace A158971.P6364341510606959230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322306 (Int.lor 1 (A322310 (n + 1))).toNat

end

end A158971.P6364341510606959230

/-! ## A158971.P6030671905318618257

`A000196(A037234(A049283(n+1)))`
-/

namespace A158971.P6030671905318618257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A037234 (A049283 (n + 1)).toNat).toNat

end

end A158971.P6030671905318618257

/-!
# A158972: a(n) is the smallest number m such that m n's - 1 is prime and zero if there is no such m.

The programs for A158972, there is no canonical definition to state claims against.
-/

/-! ## A158972.P7351443661385489217

`A109578(A092860(n+1)^A007920(n))`
-/

namespace A158972.P7351443661385489217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (SequenceMachineLib.roundAway ((A092860 (n + 1) : ℚ) ^ (A007920 n : ℤ))).toNat

end

end A158972.P7351443661385489217

/-! ## A158972.P3320106471767554796

`A231734(n+1)²%A039669(A225821(n+1))`
-/

namespace A158972.P3320106471767554796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231734 (n + 1) ^ 2) (A039669 (A225821 (n + 1)).toNat)

end

end A158972.P3320106471767554796

/-! ## A158972.P4436060463953715507

`A317641(A007920(n)*A235772(n+1))`
-/

namespace A158972.P4436060463953715507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (A007920 n * A235772 (n + 1)).toNat

end

end A158972.P4436060463953715507

/-! ## A158972.P17510253672307666901

`A028326(A145154(n))%A072996(A054529(n+3))`
-/

namespace A158972.P17510253672307666901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028326 (A145154 n).toNat) (A072996 (A054529 (n + 3)).toNat)

end

end A158972.P17510253672307666901

/-! ## A158972.P8861750054392236933

`Δ[or(1, n)]^A007423(A005578(n))`
-/

namespace A158972.P8861750054392236933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (A007423 (A005578 n).toNat : ℤ)

end

end A158972.P8861750054392236933

/-!
# A158973: a(n) = count of numbers k <= n such that all proper divisors of k are divisors of n.

The programs for A158973, the canonical program `A158973.P9222141241825856291` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158973 has offset 1).

The definition of A158973 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A004788, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158973.P9222141241825856291

`A000005(n+1)+A004788(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A158973

/-- `A000005(n+1)+A004788(n)` -/
def P9222141241825856291.Spec : Prop :=
  ∀ n, P9222141241825856291.a n = A158973 (n + 1)

theorem P9222141241825856291.correct : P9222141241825856291.Spec := by
  intro n
  simp only [A158973, Nat.add_sub_cancel]

end A158973

/-! ## A158973.P9339368388127256074

`1-A158974(n+1)+n`
-/

namespace A158973.P9339368388127256074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A158974 (n + 1) + (n : ℤ)

end

end A158973.P9339368388127256074

namespace A158973

/-- `1-A158974(n+1)+n` -/
def P9339368388127256074.Spec : Prop :=
  ∀ n, P9339368388127256074.a n = A158973 (n + 1)

end A158973

/-! ## A158973.P2644642507662408227

`-A158974(n+1)%A000203(n+1)+n+1`
-/

namespace A158973.P2644642507662408227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A158974 (n + 1)) (A000203 (n + 1)) + (n + 1 : ℤ)

end

end A158973.P2644642507662408227

namespace A158973

/-- `-A158974(n+1)%A000203(n+1)+n+1` -/
def P2644642507662408227.Spec : Prop :=
  ∀ n, P2644642507662408227.a n = A158973 (n + 1)

end A158973

/-! ## A158973.P1753554336026957312

`A008619(2*n)-A158974(A008619(2*n))`
-/

namespace A158973.P1753554336026957312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A158974 (A008619 (2 * n)).toNat

end

end A158973.P1753554336026957312

namespace A158973

/-- `A008619(2*n)-A158974(A008619(2*n))` -/
def P1753554336026957312.Spec : Prop :=
  ∀ n, P1753554336026957312.a n = A158973 (n + 1)

end A158973

/-! ## A158973.P569984056763321828

`A159070(n+1)+1`
-/

namespace A158973.P569984056763321828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159070 (n + 1) + 1

end

end A158973.P569984056763321828

namespace A158973

/-- `A159070(n+1)+1` -/
def P569984056763321828.Spec : Prop :=
  ∀ n, P569984056763321828.a n = A158973 (n + 1)

end A158973

/-! ## A158973.P16973279271559345599

`A004788(n)+Δ[A006218(n)]`
-/

namespace A158973.P16973279271559345599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 n + (f1 (n + 1) - f1 n)

end

end A158973.P16973279271559345599

namespace A158973

/-- `A004788(n)+Δ[A006218(n)]` -/
def P16973279271559345599.Spec : Prop :=
  ∀ n, P16973279271559345599.a n = A158973 (n + 1)

end A158973

/-! ## A158973.P12738693734682606253

`-A158974(n+1)%A258341(n)+n+1`
-/

namespace A158973.P12738693734682606253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A158974 (n + 1)) (A258341 n) + (n + 1 : ℤ)

end

end A158973.P12738693734682606253

namespace A158973

/-- `-A158974(n+1)%A258341(n)+n+1` -/
def P12738693734682606253.Spec : Prop :=
  ∀ n, P12738693734682606253.a n = A158973 (n + 1)

end A158973

/-! ## A158973.P684689239477424688

`2-A159072(n+1)+n`
-/

namespace A158973.P684689239477424688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A159072 (n + 1) + (n : ℤ)

end

end A158973.P684689239477424688

namespace A158973

/-- `2-A159072(n+1)+n` -/
def P684689239477424688.Spec : Prop :=
  ∀ n, P684689239477424688.a n = A158973 (n + 1)

end A158973

/-!
# A158974: a(n) is the number of numbers k <= n such that not all proper divisors of k are divisors of n.

The programs for A158974, the canonical program `A158974.P3372714102531881419` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158974 has offset 1).

The definition of A158974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158974.P3372714102531881419

`1-A158973(n+1)+n`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A158974

/-- `1-A158973(n+1)+n` -/
def P3372714102531881419.Spec : Prop :=
  ∀ n, P3372714102531881419.a n = A158974 (n + 1)

theorem P3372714102531881419.correct : P3372714102531881419.Spec := by
  intro n
  simp only [A158974, Nat.add_sub_cancel]

end A158974

/-! ## A158974.P10395389178714906445

`n-A023443(A158973(n+1))`
-/

namespace A158974.P10395389178714906445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A158973 (n + 1)).toNat

end

end A158974.P10395389178714906445

namespace A158974

/-- `n-A023443(A158973(n+1))` -/
def P10395389178714906445.Spec : Prop :=
  ∀ n, P10395389178714906445.a n = A158974 (n + 1)

end A158974

/-! ## A158974.P11084428381402964546

`A022958(A158973(n+1)+1)+n`
-/

namespace A158974.P11084428381402964546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A158973 (n + 1) + 1).toNat + (n : ℤ)

end

end A158974.P11084428381402964546

namespace A158974

/-- `A022958(A158973(n+1)+1)+n` -/
def P11084428381402964546.Spec : Prop :=
  ∀ n, P11084428381402964546.a n = A158974 (n + 1)

end A158974

/-! ## A158974.P13404377131747035555

`(A028387(n)*A158973(n+1))%(n+1)`
-/

namespace A158974.P13404377131747035555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028387 n * A158973 (n + 1)) (n + 1 : ℤ)

end

end A158974.P13404377131747035555

namespace A158974

/-- `(A028387(n)*A158973(n+1))%(n+1)` -/
def P13404377131747035555.Spec : Prop :=
  ∀ n, P13404377131747035555.a n = A158974 (n + 1)

end A158974

/-! ## A158974.P12780864948705052695

`-A158973(n+1)%A028387(n+1)+n+1`
-/

namespace A158974.P12780864948705052695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A158973 (n + 1)) (A028387 (n + 1)) + (n + 1 : ℤ)

end

end A158974.P12780864948705052695

namespace A158974

/-- `-A158973(n+1)%A028387(n+1)+n+1` -/
def P12780864948705052695.Spec : Prop :=
  ∀ n, P12780864948705052695.a n = A158974 (n + 1)

end A158974

/-! ## A158974.P17974417288829804545

`n-A159070(n+1)`
-/

namespace A158974.P17974417288829804545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A159070 (n + 1)

end

end A158974.P17974417288829804545

namespace A158974

/-- `n-A159070(n+1)` -/
def P17974417288829804545.Spec : Prop :=
  ∀ n, P17974417288829804545.a n = A158974 (n + 1)

end A158974

/-! ## A158974.P11786263827703780485

`A049820(n+1)-A004788(n)`
-/

namespace A158974.P11786263827703780485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A004788 n

end

end A158974.P11786263827703780485

namespace A158974

/-- `A049820(n+1)-A004788(n)` -/
def P11786263827703780485.Spec : Prop :=
  ∀ n, P11786263827703780485.a n = A158974 (n + 1)

end A158974

/-! ## A158974.P6488579912583275915

`A062968(n+1)-(A004788(n)+1)`
-/

namespace A158974.P6488579912583275915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - (A004788 n + 1)

end

end A158974.P6488579912583275915

namespace A158974

/-- `A062968(n+1)-(A004788(n)+1)` -/
def P6488579912583275915.Spec : Prop :=
  ∀ n, P6488579912583275915.a n = A158974 (n + 1)

end A158974

/-! ## A158974.P2629540496161869804

`1-(A004788(n)+A000005(n+1))+n`
-/

namespace A158974.P2629540496161869804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A004788 n + A000005 (n + 1)) + (n : ℤ)

end

end A158974.P2629540496161869804

namespace A158974

/-- `1-(A004788(n)+A000005(n+1))+n` -/
def P2629540496161869804.Spec : Prop :=
  ∀ n, P2629540496161869804.a n = A158974 (n + 1)

end A158974

/-! ## A158974.P1191208308508316563

`A159072(n+1)-1`
-/

namespace A158974.P1191208308508316563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159072 (n + 1) - 1

end

end A158974.P1191208308508316563

namespace A158974

/-- `A159072(n+1)-1` -/
def P1191208308508316563.Spec : Prop :=
  ∀ n, P1191208308508316563.a n = A158974 (n + 1)

end A158974

/-!
# A158975: a(n) = sum of numbers k <= n such that all proper divisors of k are divisors of n.

The programs for A158975, there is no canonical definition to state claims against.
-/

/-! ## A158975.P8531409124224907650

`A159073(n+1)+1`
-/

namespace A158975.P8531409124224907650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159073 (n + 1) + 1

end

end A158975.P8531409124224907650

/-! ## A158975.P12814299662001293542

`∑[n+1]-A158976(n+1)`
-/

namespace A158975.P12814299662001293542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A158976 (n + 1)

end

end A158975.P12814299662001293542

/-! ## A158975.P712033841011461244

`A000096(n)+1-A158976(n+1)`
-/

namespace A158975.P712033841011461244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A158976 (n + 1))

end

end A158975.P712033841011461244

/-! ## A158975.P11437838563115355549

`A000124(n)-A158976(n+1)+n`
-/

namespace A158975.P11437838563115355549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A158976 (n + 1) + (n : ℤ)

end

end A158975.P11437838563115355549

/-! ## A158975.P10459919232155339858

`abs(A000217(n+1)-A158976(n+1))`
-/

namespace A158975.P10459919232155339858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (n + 1) - A158976 (n + 1)|

end

end A158975.P10459919232155339858

/-! ## A158975.P11117518684866759568

`Δ[A005581(n)]+1-A158976(n+1)`
-/

namespace A158975.P11117518684866759568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A158976 (n + 1))

end

end A158975.P11117518684866759568

/-!
# A158976: a(n) = sum of numbers k <= n such that not all proper divisors of k are divisors of n.

The programs for A158976, there is no canonical definition to state claims against.
-/

/-! ## A158976.P6705592416486231195

`A159074(n+1)-1`
-/

namespace A158976.P6705592416486231195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159074 (n + 1) - 1

end

end A158976.P6705592416486231195

/-! ## A158976.P9705974014336938192

`∑[n+1]-A158975(n+1)`
-/

namespace A158976.P9705974014336938192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A158975 (n + 1)

end

end A158976.P9705974014336938192

/-! ## A158976.P17814743958345849653

`∑[n]-A159073(n+1)+n`
-/

namespace A158976.P17814743958345849653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A159073 (n + 1) + (n : ℤ)

end

end A158976.P17814743958345849653

/-! ## A158976.P6718287030659185432

`A000096(n)-A159073(n+1)`
-/

namespace A158976.P6718287030659185432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A159073 (n + 1)

end

end A158976.P6718287030659185432

/-! ## A158976.P7305028538787211110

`A000096(n)+1-A158975(n+1)`
-/

namespace A158976.P7305028538787211110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A158975 (n + 1))

end

end A158976.P7305028538787211110

/-! ## A158976.P16919754594066832547

`A000124(n)-A158975(n+1)+n`
-/

namespace A158976.P16919754594066832547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A158975 (n + 1) + (n : ℤ)

end

end A158976.P16919754594066832547

/-! ## A158976.P773003825679894381

`Δ[A005581(n)]-A159073(n+1)`
-/

namespace A158976.P773003825679894381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A159073 (n + 1)

end

end A158976.P773003825679894381

/-! ## A158976.P4333151569241009100

`A023443(A159074(n+1))`
-/

namespace A158976.P4333151569241009100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A159074 (n + 1)).toNat

end

end A158976.P4333151569241009100

/-!
# A158977: Product of the numbers k in the range 1 <= k <= n such that the proper divisors of k are a subset of the proper divisors of n.

The programs for A158977, there is no canonical definition to state claims against.
-/

/-! ## A158977.P11375328265329599024

`record[A047920(n)]/A158978(n+1)`
-/

namespace A158977.P11375328265329599024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A158978 (n + 1) : ℚ)

end

end A158977.P11375328265329599024

/-! ## A158977.P16444955979575024692

`record[A047922(n)]/A158978(n+1)`
-/

namespace A158977.P16444955979575024692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A158978 (n + 1) : ℚ)

end

end A158977.P16444955979575024692

/-! ## A158977.P18119188590257205867

`record[A094587(n)]/A158978(n+1)`
-/

namespace A158977.P18119188590257205867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A158978 (n + 1) : ℚ)

end

end A158977.P18119188590257205867

/-! ## A158977.P8664664016580453027

`A000142(n+1)/A158978(n+1)`
-/

namespace A158977.P8664664016580453027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A158978 (n + 1) : ℚ)

end

end A158977.P8664664016580453027

/-!
# A158978: a(n) = product of numbers k <= n such that not all proper divisors of k are divisors of n.

The programs for A158978, there is no canonical definition to state claims against.
-/

/-! ## A158978.P14242121656504856251

`record[A047920(n)]/A158977(n+1)`
-/

namespace A158978.P14242121656504856251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A158977 (n + 1) : ℚ)

end

end A158978.P14242121656504856251

/-! ## A158978.P13849295529643530323

`record[A047922(n)]/A158977(n+1)`
-/

namespace A158978.P13849295529643530323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A158977 (n + 1) : ℚ)

end

end A158978.P13849295529643530323

/-! ## A158978.P14947192811852867891

`record[A094587(n)]/A158977(n+1)`
-/

namespace A158978.P14947192811852867891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A158977 (n + 1) : ℚ)

end

end A158978.P14947192811852867891

/-! ## A158978.P15280729326256331240

`A000142(n+1)/A158977(n+1)`
-/

namespace A158978.P15280729326256331240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A158977 (n + 1) : ℚ)

end

end A158978.P15280729326256331240

/-! ## A158978.P18006914996679088593

`A051683(A000124(n))/A158977(n+1)`
-/

namespace A158978.P18006914996679088593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051683 (A000124 n).toNat : ℚ) / (A158977 (n + 1) : ℚ)

end

end A158978.P18006914996679088593

/-!
# A158979: a(n) is the smallest number > n such that n^4 + a(n)^4 is prime.

The programs for A158979, there is no canonical definition to state claims against.
-/

/-! ## A158979.P17403390638745877901

`A238004(A007318(A000726(n)))+n`
-/

namespace A158979.P17403390638745877901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238004 (A007318 (A000726 n).toNat).toNat + (n : ℤ)

end

end A158979.P17403390638745877901

/-!
# A158983: Coefficients of polynomials (in descending powers of x) P(n,x) := 2 + P(n-1,x)^2, where P(1,x) = x + 2.

The programs for A158983, there is no canonical definition to state claims against.
-/

/-! ## A158983.P6235754196836905420

`A075497(n+1)+A063691(A016098(n))`
-/

namespace A158983.P6235754196836905420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (n + 1) + A063691 (A016098 n).toNat

end

end A158983.P6235754196836905420

/-! ## A158983.P6251372890991371042

`A001009(A309861(n))*A075497(n+1)`
-/

namespace A158983.P6251372890991371042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (A309861 n).toNat * A075497 (n + 1)

end

end A158983.P6251372890991371042

/-! ## A158983.P7584258714061357386

`A075497(n+1)*A224765(A117641(n))`
-/

namespace A158983.P7584258714061357386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (n + 1) * A224765 (A117641 n).toNat

end

end A158983.P7584258714061357386

/-! ## A158983.P17610588321683083790

`A075497(n+1)*A098083(A324088(n+1))`
-/

namespace A158983.P17610588321683083790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (n + 1) * A098083 (A324088 (n + 1)).toNat

end

end A158983.P17610588321683083790

/-!
# A158988: Numbers n such that n=phi(d_1!!)*phi(d_2!!)*...*phi(d_k!!) where d_1...d_k is the decimal expansion of n.

The programs for A158988, there is no canonical definition to state claims against.
-/

/-! ## A158988.P6466379330983742938

`∏[A288181(A120588(n))]`
-/

namespace A158988.P6466379330983742938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288181 (A120588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A158988.P6466379330983742938

/-!
# A158992: Numerator of Bernoulli(n, 1/10).

The programs for A158992, there is no canonical definition to state claims against.
-/

/-! ## A158992.P5446491894077297042

`A016777(3*n+4)-A000203(A127820(2*n+1))`
-/

namespace A158992.P5446491894077297042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (3 * n + 4) - A000203 (A127820 (2 * n + 1)).toNat

end

end A158992.P5446491894077297042

/-!
# A158994: Denominator of Bernoulli(n, 1/10).

The programs for A158994, there is no canonical definition to state claims against.
-/

/-! ## A158994.P5737128744950610895

`A135517(n²)*A159012(n)`
-/

namespace A158994.P5737128744950610895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (n ^ 2) * A159012 n

end

end A158994.P5737128744950610895

/-! ## A158994.P1718631332164529699

`A158996(n)/A135517(n²)`
-/

namespace A158994.P1718631332164529699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158996 n : ℚ) / (A135517 (n ^ 2) : ℚ)

end

end A158994.P1718631332164529699

/-! ## A158994.P14829928226405758931

`Δ[A133223(n+1)]*A159012(n)`
-/

namespace A158994.P14829928226405758931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A159012 n

end

end A158994.P14829928226405758931

/-! ## A158994.P14702169250326015169

`A158996(n)/Δ[A133223(n+1)]`
-/

namespace A158994.P14702169250326015169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158996 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A158994.P14702169250326015169

/-! ## A158994.P7839816741343906410

`A014963(A135517(n))*A159012(n)`
-/

namespace A158994.P7839816741343906410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A135517 n).toNat * A159012 n

end

end A158994.P7839816741343906410

/-! ## A158994.P16204528778548886890

`A158996(n)/A014963(A135517(n))`
-/

namespace A158994.P16204528778548886890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158996 n : ℚ) / (A014963 (A135517 n).toNat : ℚ)

end

end A158994.P16204528778548886890

/-!
# A158996: Denominator of Bernoulli(n, -1/10).

The programs for A158996, there is no canonical definition to state claims against.
-/

/-! ## A158996.P4016272149827234787

`lcm(A157782(n), A158994(n))`
-/

namespace A158996.P4016272149827234787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A157782 n) (A158994 n)

end

end A158996.P4016272149827234787

/-! ## A158996.P2373516406720278203

`A135517(n²)*A158994(n)`
-/

namespace A158996.P2373516406720278203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (n ^ 2) * A158994 n

end

end A158996.P2373516406720278203

/-! ## A158996.P17858200168583699222

`A135517(n²)²*A159012(n)`
-/

namespace A158996.P17858200168583699222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (n ^ 2) ^ 2 * A159012 n

end

end A158996.P17858200168583699222

/-! ## A158996.P4796900266730073942

`Δ[A133223(n+1)]*A158994(n)`
-/

namespace A158996.P4796900266730073942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A158994 n

end

end A158996.P4796900266730073942

/-! ## A158996.P13419168020413962228

`Δ[A133223(n+1)]²*A159012(n)`
-/

namespace A158996.P13419168020413962228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A159012 n

end

end A158996.P13419168020413962228

/-! ## A158996.P16737631672463398371

`A014963(A135517(n))*A158994(n)`
-/

namespace A158996.P16737631672463398371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A135517 n).toNat * A158994 n

end

end A158996.P16737631672463398371

/-! ## A158996.P10562105581780047883

`(A233583(n+1)-A267458(n))*A158994(n)`
-/

namespace A158996.P10562105581780047883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 1) - A267458 n) * A158994 n

end

end A158996.P10562105581780047883

/-!
# A158997: Palindromes of the form m*reversal(m)+1 where m >= reversal(m), sorted on m.

The programs for A158997, there is no canonical definition to state claims against.
-/

/-! ## A158997.P6420672709485645353

`A025429(A087273(2*(n+1))*A379327(n+1))+A000040(n+1)`
-/

namespace A158997.P6420672709485645353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (A087273 (2 * (n + 1)) * A379327 (n + 1)).toNat + A000040 (n + 1)

end

end A158997.P6420672709485645353

/-!
# A158998: Numerator of Bernoulli(n, 3/10).

The programs for A158998, there is no canonical definition to state claims against.
-/

/-! ## A158998.P1809216671860818546

`A382296(A382275(n))-A053027(n+1)`
-/

namespace A158998.P1809216671860818546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382296 (A382275 n).toNat - A053027 (n + 1)

end

end A158998.P1809216671860818546

/-!
# A158999: Palprimes of the form m*reversal(m)+1, sorted on m.

The programs for A158999, there is no canonical definition to state claims against.
-/

/-! ## A158999.P4367168157169762656

`A134998(or(n+1, floor(n/(xor(n, n+1)+1))))`
-/

namespace A158999.P4367168157169762656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134998 (Int.lor (n + 1 : ℤ) ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋).toNat

end

end A158999.P4367168157169762656

