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
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
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
import Seq.B000.C030
import Seq.B000.C033
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A325001: Array read by descending antidiagonals: A(n,k) is the number of achiral colorings of the facets (or vertices) of a regular n-dimensional simplex using up to k colors.

The programs for A325001, there is no canonical definition to state claims against.
-/

/-! ## A325001.P16442099754098986216

`A005843(A104712(n+2))-A324999(n+1)`
-/

namespace A325001.P16442099754098986216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A104712 (n + 2)).toNat - A324999 (n + 1)

end

end A325001.P16442099754098986216

/-! ## A325001.P8152820199008463567

`A253641(A079474(n+1))+A216973(n)`
-/

namespace A325001.P8152820199008463567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A079474 (n + 1)).toNat + A216973 n

end

end A325001.P8152820199008463567

/-! ## A325001.P10631953376973129345

`A349294(A216973(n)+A193592(n))`
-/

namespace A325001.P10631953376973129345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A216973 n + A193592 n).toNat

end

end A325001.P10631953376973129345

/-! ## A325001.P2049011195184593102

`A000005(A130321(n)^A132735(n))`
-/

namespace A325001.P2049011195184593102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A130321 n : ℚ) ^ (A132735 n : ℤ))).toNat

end

end A325001.P2049011195184593102

/-! ## A325001.P9561135483168924951

`A001222(A130321(n)^A132735(n))+1`
-/

namespace A325001.P9561135483168924951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A130321 n : ℚ) ^ (A132735 n : ℤ))).toNat + 1

end

end A325001.P9561135483168924951

/-!
# A325002: Triangle read by rows: T(n,k) is the number of oriented colorings of the facets (or vertices) of a regular n-dimensional simplex using exactly k colors.

The programs for A325002, the canonical program `A325002.P12992565631191484110` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325002 has offset 1).

The definition of A325002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325002.P9205207564657073701

`char[∑[n]-2]+A007318(n+1)`
-/

namespace A325002.P9205207564657073701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A007318 (n + 1)

end

end A325002.P9205207564657073701

namespace A325002

/-- `char[∑[n]-2]+A007318(n+1)` -/
def P9205207564657073701.Spec : Prop :=
  ∀ n, P9205207564657073701.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P4753874296361318341

`A132749(A061579(n+1))`
-/

namespace A325002.P4753874296361318341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (A061579 (n + 1)).toNat

end

end A325002.P4753874296361318341

namespace A325002

/-- `A132749(A061579(n+1))` -/
def P4753874296361318341.Spec : Prop :=
  ∀ n, P4753874296361318341.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P9513305722081955596

`A132749(A316669(n+2))`
-/

namespace A325002.P9513305722081955596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (A316669 (n + 2)).toNat

end

end A325002.P9513305722081955596

namespace A325002

/-- `A132749(A316669(n+2))` -/
def P9513305722081955596.Spec : Prop :=
  ∀ n, P9513305722081955596.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P13851598648923096542

`A133138(n)-A156644(n)`
-/

namespace A325002.P13851598648923096542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133138 n - A156644 n

end

end A325002.P13851598648923096542

namespace A325002

/-- `A133138(n)-A156644(n)` -/
def P13851598648923096542.Spec : Prop :=
  ∀ n, P13851598648923096542.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P17156856092260243302

`A132749(A038722(n+2)-1)`
-/

namespace A325002.P17156856092260243302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (A038722 (n + 2) - 1).toNat

end

end A325002.P17156856092260243302

namespace A325002

/-- `A132749(A038722(n+2)-1)` -/
def P17156856092260243302.Spec : Prop :=
  ∀ n, P17156856092260243302.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P16805317124808938721

`A132044(n+1)+A023532(n)`
-/

namespace A325002.P16805317124808938721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 (n + 1) + A023532 n

end

end A325002.P16805317124808938721

namespace A325002

/-- `A132044(n+1)+A023532(n)` -/
def P16805317124808938721.Spec : Prop :=
  ∀ n, P16805317124808938721.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P5195282824856468236

`gcd(A251635(n), A325003(n+1))`
-/

namespace A325002.P5195282824856468236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251635 n) (A325003 (n + 1))

end

end A325002.P5195282824856468236

namespace A325002

/-- `gcd(A251635(n), A325003(n+1))` -/
def P5195282824856468236.Spec : Prop :=
  ∀ n, (P5195282824856468236.a n : ℤ) = A325002 (n + 1)

end A325002

/-! ## A325002.P6376349518053148785

`A206735(n+1)+A103451(n+1)`
-/

namespace A325002.P6376349518053148785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A103451 (n + 1)

end

end A325002.P6376349518053148785

namespace A325002

/-- `A206735(n+1)+A103451(n+1)` -/
def P6376349518053148785.Spec : Prop :=
  ∀ n, P6376349518053148785.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P3743042013888513467

`A007318(n+1)+A073423(n+2)`
-/

namespace A325002.P3743042013888513467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + A073423 (n + 2)

end

end A325002.P3743042013888513467

namespace A325002

/-- `A007318(n+1)+A073423(n+2)` -/
def P3743042013888513467.Spec : Prop :=
  ∀ n, P3743042013888513467.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P11554520524068304991

`A135225(n+2)+A097805(n+1)`
-/

namespace A325002.P11554520524068304991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (n + 2) + A097805 (n + 1)

end

end A325002.P11554520524068304991

namespace A325002

/-- `A135225(n+2)+A097805(n+1)` -/
def P11554520524068304991.Spec : Prop :=
  ∀ n, P11554520524068304991.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P7011469443429656688

`A134059(n+1)-A129994(n+1)`
-/

namespace A325002.P7011469443429656688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 (n + 1) - A129994 (n + 1)

end

end A325002.P7011469443429656688

namespace A325002

/-- `A134059(n+1)-A129994(n+1)` -/
def P7011469443429656688.Spec : Prop :=
  ∀ n, P7011469443429656688.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P12992565631191484110

`A206735(n+1)+A103452(n+1)²`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A325002

/-- `A206735(n+1)+A103452(n+1)²` -/
def P12992565631191484110.Spec : Prop :=
  ∀ n, P12992565631191484110.a n = A325002 (n + 1)

theorem P12992565631191484110.correct : P12992565631191484110.Spec := by
  intro n
  simp only [A325002, Nat.add_sub_cancel]

end A325002

/-! ## A325002.P10326124400922681033

`A007318(n+1)+Δ[A003056(n+1)]`
-/

namespace A325002.P10326124400922681033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (f1 (n + 1) - f1 n)

end

end A325002.P10326124400922681033

namespace A325002

/-- `A007318(n+1)+Δ[A003056(n+1)]` -/
def P10326124400922681033.Spec : Prop :=
  ∀ n, P10326124400922681033.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P5531317500961191720

`Δ[A102363(n+1)+A003056(n+1)]`
-/

namespace A325002.P5531317500961191720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1) + A003056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325002.P5531317500961191720

namespace A325002

/-- `Δ[A102363(n+1)+A003056(n+1)]` -/
def P5531317500961191720.Spec : Prop :=
  ∀ n, P5531317500961191720.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P10007976704137850077

`A023531(n+1)+Δ[A102363(n+1)]`
-/

namespace A325002.P10007976704137850077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1) + (f1 (n + 1) - f1 n)

end

end A325002.P10007976704137850077

namespace A325002

/-- `A023531(n+1)+Δ[A102363(n+1)]` -/
def P10007976704137850077.Spec : Prop :=
  ∀ n, P10007976704137850077.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P18371258841852999186

`A007318(n+1)+Δ[A002024(n+2)]`
-/

namespace A325002.P18371258841852999186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (f1 (n + 1) - f1 n)

end

end A325002.P18371258841852999186

namespace A325002

/-- `A007318(n+1)+Δ[A002024(n+2)]` -/
def P18371258841852999186.Spec : Prop :=
  ∀ n, P18371258841852999186.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P1610830680389876871

`Δ[A102363(n+1)+A002024(n+2)]`
-/

namespace A325002.P1610830680389876871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1) + A002024 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325002.P1610830680389876871

namespace A325002

/-- `Δ[A102363(n+1)+A002024(n+2)]` -/
def P1610830680389876871.Spec : Prop :=
  ∀ n, P1610830680389876871.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P17732751103949405488

`A007318(n+1)*Δ[A007401(n+2)]`
-/

namespace A325002.P17732751103949405488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) * (f1 (n + 1) - f1 n)

end

end A325002.P17732751103949405488

namespace A325002

/-- `A007318(n+1)*Δ[A007401(n+2)]` -/
def P17732751103949405488.Spec : Prop :=
  ∀ n, P17732751103949405488.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P18029035606359775238

`A007318(n+1)+1-A023532(n+1)`
-/

namespace A325002.P18029035606359775238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (1 - A023532 (n + 1))

end

end A325002.P18029035606359775238

namespace A325002

/-- `A007318(n+1)+1-A023532(n+1)` -/
def P18029035606359775238.Spec : Prop :=
  ∀ n, P18029035606359775238.a n = A325002 (n + 1)

end A325002

/-! ## A325002.P6604974817064515394

`(A023531(n+1)+1)*A007318(n+1)`
-/

namespace A325002.P6604974817064515394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023531 (n + 1) + 1) * A007318 (n + 1)

end

end A325002.P6604974817064515394

namespace A325002

/-- `(A023531(n+1)+1)*A007318(n+1)` -/
def P6604974817064515394.Spec : Prop :=
  ∀ n, P6604974817064515394.a n = A325002 (n + 1)

end A325002

/-!
# A325003: Triangle read by rows: T(n,k) is the number of achiral colorings of the facets (or vertices) of a regular n-dimensional simplex using exactly k colors.

The programs for A325003, the canonical program `A325003.P6363565412475937123` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325003 has offset 1).

The definition of A325003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325003.P6363565412475937123

`A198321(n+2)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A325003

/-- `A198321(n+2)` -/
def P6363565412475937123.Spec : Prop :=
  ∀ n, P6363565412475937123.a n = A325003 (n + 1)

theorem P6363565412475937123.correct : P6363565412475937123.Spec := by
  intro n
  simp only [A325003, Nat.add_sub_cancel]

end A325003

/-! ## A325003.P12596889639461300005

`A104795(n+1)-1`
-/

namespace A325003.P12596889639461300005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104795 (n + 1) - 1

end

end A325003.P12596889639461300005

namespace A325003

/-- `A104795(n+1)-1` -/
def P12596889639461300005.Spec : Prop :=
  ∀ n, P12596889639461300005.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P4493493423909914904

`floor(A131127(n+1)/2)`
-/

namespace A325003.P4493493423909914904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131127 (n + 1) : ℚ) / 2⌋

end

end A325003.P4493493423909914904

namespace A325003

/-- `floor(A131127(n+1)/2)` -/
def P4493493423909914904.Spec : Prop :=
  ∀ n, P4493493423909914904.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P10585618387969137352

`floor(A131111(n+1)/3)`
-/

namespace A325003.P10585618387969137352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131111 (n + 1) : ℚ) / 3⌋

end

end A325003.P10585618387969137352

namespace A325003

/-- `floor(A131111(n+1)/3)` -/
def P10585618387969137352.Spec : Prop :=
  ∀ n, P10585618387969137352.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P13491974410142929744

`A193815(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A325003.P13491974410142929744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193815 (n + 1) - a (n - 1)

end

end A325003.P13491974410142929744

namespace A325003

/-- `A193815(n+1)-a(n-1)` -/
def P13491974410142929744.Spec : Prop :=
  ∀ n, P13491974410142929744.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P5442381985942645872

`A007318(n+1)-char[∑[n]-2]`
-/

namespace A325003.P5442381985942645872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A325003.P5442381985942645872

namespace A325003

/-- `A007318(n+1)-char[∑[n]-2]` -/
def P5442381985942645872.Spec : Prop :=
  ∀ n, P5442381985942645872.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P9370612181632857942

`A206735(A061579(n+1))`
-/

namespace A325003.P9370612181632857942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A061579 (n + 1)).toNat

end

end A325003.P9370612181632857942

namespace A325003

/-- `A206735(A061579(n+1))` -/
def P9370612181632857942.Spec : Prop :=
  ∀ n, P9370612181632857942.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P3683695282053641878

`A071919(A181133(n+2))`
-/

namespace A325003.P3683695282053641878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A181133 (n + 2)).toNat

end

end A325003.P3683695282053641878

namespace A325003

/-- `A071919(A181133(n+2))` -/
def P3683695282053641878.Spec : Prop :=
  ∀ n, P3683695282053641878.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P5617951059626302203

`A199011(A061579(n+2))`
-/

namespace A325003.P5617951059626302203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 (A061579 (n + 2)).toNat

end

end A325003.P5617951059626302203

namespace A325003

/-- `A199011(A061579(n+2))` -/
def P5617951059626302203.Spec : Prop :=
  ∀ n, P5617951059626302203.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P11352274682043903325

`A097805(A181133(n+2)+1)`
-/

namespace A325003.P11352274682043903325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A181133 (n + 2) + 1).toNat

end

end A325003.P11352274682043903325

namespace A325003

/-- `A097805(A181133(n+2)+1)` -/
def P11352274682043903325.Spec : Prop :=
  ∀ n, P11352274682043903325.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P2549555140817509292

`A206735(A038722(n+2)-1)`
-/

namespace A325003.P2549555140817509292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A038722 (n + 2) - 1).toNat

end

end A325003.P2549555140817509292

namespace A325003

/-- `A206735(A038722(n+2)-1)` -/
def P2549555140817509292.Spec : Prop :=
  ∀ n, P2549555140817509292.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P1506145980651899613

`A132735(n+1)-A023532(n)`
-/

namespace A325003.P1506145980651899613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 (n + 1) - A023532 n

end

end A325003.P1506145980651899613

namespace A325003

/-- `A132735(n+1)-A023532(n)` -/
def P1506145980651899613.Spec : Prop :=
  ∀ n, P1506145980651899613.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P17107332374445833437

`A132749(n+1)-A097806(n)`
-/

namespace A325003.P17107332374445833437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (n + 1) - A097806 n

end

end A325003.P17107332374445833437

namespace A325003

/-- `A132749(n+1)-A097806(n)` -/
def P17107332374445833437.Spec : Prop :=
  ∀ n, P17107332374445833437.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P11401282405048892632

`lcm(A117568(n), A325002(n+1))`
-/

namespace A325003.P11401282405048892632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117568 n) (A325002 (n + 1))

end

end A325003.P11401282405048892632

namespace A325003

/-- `lcm(A117568(n), A325002(n+1))` -/
def P11401282405048892632.Spec : Prop :=
  ∀ n, (P11401282405048892632.a n : ℤ) = A325003 (n + 1)

end A325003

/-! ## A325003.P8630501018791758583

`A117568(n)²*A007318(n+1)`
-/

namespace A325003.P8630501018791758583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n ^ 2 * A007318 (n + 1)

end

end A325003.P8630501018791758583

namespace A325003

/-- `A117568(n)²*A007318(n+1)` -/
def P8630501018791758583.Spec : Prop :=
  ∀ n, P8630501018791758583.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P8405596147632440062

`A206735(A103452(n+1)+n+1)`
-/

namespace A325003.P8405596147632440062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A103452 (n + 1) + (n + 1 : ℤ)).toNat

end

end A325003.P8405596147632440062

namespace A325003

/-- `A206735(A103452(n+1)+n+1)` -/
def P8405596147632440062.Spec : Prop :=
  ∀ n, P8405596147632440062.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P3871366040835063534

`A132071(n+1)-A002024(n+1)`
-/

namespace A325003.P3871366040835063534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132071 (n + 1) - A002024 (n + 1)

end

end A325003.P3871366040835063534

namespace A325003

/-- `A132071(n+1)-A002024(n+1)` -/
def P3871366040835063534.Spec : Prop :=
  ∀ n, P3871366040835063534.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P688673618996773726

`A129994(n+1)-A007318(n+1)`
-/

namespace A325003.P688673618996773726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129994 (n + 1) - A007318 (n + 1)

end

end A325003.P688673618996773726

namespace A325003

/-- `A129994(n+1)-A007318(n+1)` -/
def P688673618996773726.Spec : Prop :=
  ∀ n, P688673618996773726.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P4798643045922613957

`A132749(n+1)-A103451(n+1)`
-/

namespace A325003.P4798643045922613957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (n + 1) - A103451 (n + 1)

end

end A325003.P4798643045922613957

namespace A325003

/-- `A132749(n+1)-A103451(n+1)` -/
def P4798643045922613957.Spec : Prop :=
  ∀ n, P4798643045922613957.a n = A325003 (n + 1)

end A325003

/-! ## A325003.P11246916199973740560

`A131111(n+1)-A129994(n+1)`
-/

namespace A325003.P11246916199973740560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 (n + 1) - A129994 (n + 1)

end

end A325003.P11246916199973740560

namespace A325003

/-- `A131111(n+1)-A129994(n+1)` -/
def P11246916199973740560.Spec : Prop :=
  ∀ n, P11246916199973740560.a n = A325003 (n + 1)

end A325003

/-!
# A325004: Array read by descending antidiagonals: A(n,k) is the number of oriented colorings of the facets of a regular n-dimensional orthotope using up to k colors.

The programs for A325004, there is no canonical definition to state claims against.
-/

/-! ## A325004.P18185812545138988734

`A325006(n+1)+A325005(n+1)`
-/

namespace A325004.P18185812545138988734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325006 (n + 1) + A325005 (n + 1)

end

end A325004.P18185812545138988734

/-! ## A325004.P5527894122108940299

`A325007(n+1)+2*A325006(n+1)`
-/

namespace A325004.P5527894122108940299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325007 (n + 1) + 2 * A325006 (n + 1)

end

end A325004.P5527894122108940299

/-! ## A325004.P5969417070625683986

`2*A325005(n+1)-A325007(n+1)`
-/

namespace A325004.P5969417070625683986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325005 (n + 1) - A325007 (n + 1)

end

end A325004.P5969417070625683986

/-! ## A325004.P14878560307000842946

`A325006(n+1)+A098568(A099375(n)+n)`
-/

namespace A325004.P14878560307000842946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325006 (n + 1) + A098568 (A099375 n + (n : ℤ)).toNat

end

end A325004.P14878560307000842946

/-! ## A325004.P11614386609416516749

`A325006(n+1)+A098568(A038722(n+1)+A003056(n))`
-/

namespace A325004.P11614386609416516749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325006 (n + 1) + A098568 (A038722 (n + 1) + A003056 n).toNat

end

end A325004.P11614386609416516749

/-! ## A325004.P2828340625634695239

`A325007(n+1)+A005843(A325006(n+1))`
-/

namespace A325004.P2828340625634695239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325007 (n + 1) + A005843 (A325006 (n + 1)).toNat

end

end A325004.P2828340625634695239

/-!
# A325005: Array read by descending antidiagonals: A(n,k) is the number of unoriented colorings of the facets of a regular n-dimensional orthotope using up to k colors.

The programs for A325005, there is no canonical definition to state claims against.
-/

/-! ## A325005.P561351407942519342

`A098568(A099375(n)+n)`
-/

namespace A325005.P561351407942519342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098568 (A099375 n + (n : ℤ)).toNat

end

end A325005.P561351407942519342

/-! ## A325005.P3319268682718271752

`A325007(n+1)+A325006(n+1)`
-/

namespace A325005.P3319268682718271752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325007 (n + 1) + A325006 (n + 1)

end

end A325005.P3319268682718271752

/-! ## A325005.P10824865105234670241

`A325004(n+1)-A325006(n+1)`
-/

namespace A325005.P10824865105234670241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325004 (n + 1) - A325006 (n + 1)

end

end A325005.P10824865105234670241

/-! ## A325005.P9884447451682102232

`(A325007(n+1)+A325004(n+1))/2`
-/

namespace A325005.P9884447451682102232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325007 (n + 1) + A325004 (n + 1) : ℚ) / 2

end

end A325005.P9884447451682102232

/-! ## A325005.P97735696379345152

`A098568(A038722(n+1)+A003056(n))`
-/

namespace A325005.P97735696379345152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098568 (A038722 (n + 1) + A003056 n).toNat

end

end A325005.P97735696379345152

/-! ## A325005.P14269095747271443145

`A098568(A380649(n+1))`
-/

namespace A325005.P14269095747271443145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098568 (A380649 (n + 1)).toNat

end

end A325005.P14269095747271443145

/-!
# A325006: Array read by descending antidiagonals: A(n,k) is the number of chiral pairs of colorings of the facets of a regular n-dimensional orthotope using up to k colors.

The programs for A325006, the canonical program `A325006.P11097347585470060049` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325006 has offset 1).

The definition of A325006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325006.P11097347585470060049

`C(C(A004736(n+1), 2), A002260(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A325006

/-- `C(C(A004736(n+1), 2), A002260(n+1))` -/
def P11097347585470060049.Spec : Prop :=
  ∀ n, (P11097347585470060049.a n : ℤ) = A325006 (n + 1)

theorem P11097347585470060049.correct : P11097347585470060049.Spec := by
  intro n
  simp only [A325006, Nat.add_sub_cancel]

end A325006

/-! ## A325006.P16218341838850739799

`C(C(A004736(n+1), 2), A285730(n+1))`
-/

namespace A325006.P16218341838850739799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A004736 (n + 1)).toNat 2) (A285730 (n + 1)).toNat

end

end A325006.P16218341838850739799

namespace A325006

/-- `C(C(A004736(n+1), 2), A285730(n+1))` -/
def P16218341838850739799.Spec : Prop :=
  ∀ n, (P16218341838850739799.a n : ℤ) = A325006 (n + 1)

end A325006

/-! ## A325006.P10686147192941258703

`C(A000217(A025581(n)), A002260(n+1))`
-/

namespace A325006.P10686147192941258703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000217 (A025581 n).toNat).toNat (A002260 (n + 1)).toNat

end

end A325006.P10686147192941258703

namespace A325006

/-- `C(A000217(A025581(n)), A002260(n+1))` -/
def P10686147192941258703.Spec : Prop :=
  ∀ n, (P10686147192941258703.a n : ℤ) = A325006 (n + 1)

end A325006

/-! ## A325006.P12405103461760507201

`C(A000217(A025581(n)), A002262(n)+1)`
-/

namespace A325006.P12405103461760507201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000217 (A025581 n).toNat).toNat (A002262 n + 1).toNat

end

end A325006.P12405103461760507201

namespace A325006

/-- `C(A000217(A025581(n)), A002262(n)+1)` -/
def P12405103461760507201.Spec : Prop :=
  ∀ n, (P12405103461760507201.a n : ℤ) = A325006 (n + 1)

end A325006

/-! ## A325006.P8779682277117773843

`C(A161680(A004736(n+1)), A002260(n+1))`
-/

namespace A325006.P8779682277117773843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161680 (A004736 (n + 1)).toNat).toNat (A002260 (n + 1)).toNat

end

end A325006.P8779682277117773843

namespace A325006

/-- `C(A161680(A004736(n+1)), A002260(n+1))` -/
def P8779682277117773843.Spec : Prop :=
  ∀ n, (P8779682277117773843.a n : ℤ) = A325006 (n + 1)

end A325006

/-! ## A325006.P706510499169200591

`C(A000217(A057554(2*(n+1))), A002260(n+1))`
-/

namespace A325006.P706510499169200591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000217 (A057554 (2 * (n + 1))).toNat).toNat (A002260 (n + 1)).toNat

end

end A325006.P706510499169200591

namespace A325006

/-- `C(A000217(A057554(2*(n+1))), A002260(n+1))` -/
def P706510499169200591.Spec : Prop :=
  ∀ n, (P706510499169200591.a n : ℤ) = A325006 (n + 1)

end A325006

/-! ## A325006.P12147513237811496331

`C(C(A057555(2*(n+1)), 2), A057555(2*n+1))`
-/

namespace A325006.P12147513237811496331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A057555 (2 * (n + 1))).toNat 2) (A057555 (2 * n + 1)).toNat

end

end A325006.P12147513237811496331

namespace A325006

/-- `C(C(A057555(2*(n+1)), 2), A057555(2*n+1))` -/
def P12147513237811496331.Spec : Prop :=
  ∀ n, (P12147513237811496331.a n : ℤ) = A325006 (n + 1)

end A325006

/-! ## A325006.P6913957632870153658

`C(A000217(A057555(2*(n+1))-1), A002260(n+1))`
-/

namespace A325006.P6913957632870153658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000217 (A057555 (2 * (n + 1)) - 1).toNat).toNat (A002260 (n + 1)).toNat

end

end A325006.P6913957632870153658

namespace A325006

/-- `C(A000217(A057555(2*(n+1))-1), A002260(n+1))` -/
def P6913957632870153658.Spec : Prop :=
  ∀ n, (P6913957632870153658.a n : ℤ) = A325006 (n + 1)

end A325006

/-! ## A325006.P4790060522835009750

`A325004(n+1)-A325005(n+1)`
-/

namespace A325006.P4790060522835009750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325004 (n + 1) - A325005 (n + 1)

end

end A325006.P4790060522835009750

namespace A325006

/-- `A325004(n+1)-A325005(n+1)` -/
def P4790060522835009750.Spec : Prop :=
  ∀ n, P4790060522835009750.a n = A325006 (n + 1)

end A325006

/-! ## A325006.P12566907318529104020

`A325005(n+1)-A325007(n+1)`
-/

namespace A325006.P12566907318529104020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325005 (n + 1) - A325007 (n + 1)

end

end A325006.P12566907318529104020

namespace A325006

/-- `A325005(n+1)-A325007(n+1)` -/
def P12566907318529104020.Spec : Prop :=
  ∀ n, P12566907318529104020.a n = A325006 (n + 1)

end A325006

/-! ## A325006.P2285660458253420361

`(A325004(n+1)-A325007(n+1))/2`
-/

namespace A325006.P2285660458253420361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325004 (n + 1) - A325007 (n + 1) : ℚ) / 2

end

end A325006.P2285660458253420361

namespace A325006

/-- `(A325004(n+1)-A325007(n+1))/2` -/
def P2285660458253420361.Spec : Prop :=
  ∀ n, P2285660458253420361.a n = (A325006 (n + 1) : ℚ)

end A325006

/-! ## A325006.P15418096486556073801

`A325004(A000027(n+1))%A325005(n+1)`
-/

namespace A325006.P15418096486556073801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325004 (A000027 (n + 1)).toNat) (A325005 (n + 1))

end

end A325006.P15418096486556073801

namespace A325006

/-- `A325004(A000027(n+1))%A325005(n+1)` -/
def P15418096486556073801.Spec : Prop :=
  ∀ n, P15418096486556073801.a n = A325006 (n + 1)

end A325006

/-! ## A325006.P10756822759319020069

`(A325004(n+1)%A325005(n+1))%A337958(n+1)`
-/

namespace A325006.P10756822759319020069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A325004 (n + 1)) (A325005 (n + 1))) (A337958 (n + 1))

end

end A325006.P10756822759319020069

namespace A325006

/-- `(A325004(n+1)%A325005(n+1))%A337958(n+1)` -/
def P10756822759319020069.Spec : Prop :=
  ∀ n, P10756822759319020069.a n = A325006 (n + 1)

end A325006

/-! ## A325006.P1219767907129577051

`C(C(A004736(n+1), 2), A080508(n+1))`
-/

namespace A325006.P1219767907129577051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A004736 (n + 1)).toNat 2) (A080508 (n + 1)).toNat

end

end A325006.P1219767907129577051

namespace A325006

/-- `C(C(A004736(n+1), 2), A080508(n+1))` -/
def P1219767907129577051.Spec : Prop :=
  ∀ n, (P1219767907129577051.a n : ℤ) = A325006 (n + 1)

end A325006

/-!
# A325007: Array read by descending antidiagonals: A(n,k) is the number of achiral colorings of the facets of a regular n-dimensional orthotope using up to k colors.

The programs for A325007, there is no canonical definition to state claims against.
-/

/-! ## A325007.P7573087612639521914

`A098568(A099375(n)+n)-A325006(n+1)`
-/

namespace A325007.P7573087612639521914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098568 (A099375 n + (n : ℤ)).toNat - A325006 (n + 1)

end

end A325007.P7573087612639521914

/-! ## A325007.P14764907911501156638

`A098568(A038722(n+1)+A003056(n))-A325006(n+1)`
-/

namespace A325007.P14764907911501156638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098568 (A038722 (n + 1) + A003056 n).toNat - A325006 (n + 1)

end

end A325007.P14764907911501156638

/-! ## A325007.P17900306421086304361

`A325005(n+1)-A325006(n+1)`
-/

namespace A325007.P17900306421086304361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325005 (n + 1) - A325006 (n + 1)

end

end A325007.P17900306421086304361

/-! ## A325007.P4428723629452153157

`2*A325005(n+1)-A325004(n+1)`
-/

namespace A325007.P4428723629452153157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325005 (n + 1) - A325004 (n + 1)

end

end A325007.P4428723629452153157

/-! ## A325007.P16727041501270889724

`A325004(n+1)-2*A325006(n+1)`
-/

namespace A325007.P16727041501270889724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325004 (n + 1) - 2 * A325006 (n + 1)

end

end A325007.P16727041501270889724

/-! ## A325007.P3858755404284191888

`A325005(n+1)+A057428(n)*A325006(n+1)`
-/

namespace A325007.P3858755404284191888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325005 (n + 1) + A057428 n * A325006 (n + 1)

end

end A325007.P3858755404284191888

/-! ## A325007.P10066821024875442334

`A325004(n+1)-A005843(A325006(n+1))`
-/

namespace A325007.P10066821024875442334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325004 (n + 1) - A005843 (A325006 (n + 1)).toNat

end

end A325007.P10066821024875442334

/-!
# A325008: Triangle read by rows: T(n,k) is the number of oriented colorings of the facets of a regular n-dimensional orthotope using exactly k colors. Row n has 2n columns.

The programs for A325008, there is no canonical definition to state claims against.
-/

/-! ## A325008.P12958505269270751675

`A325009(n+1)+A325009(n+1)-A325011(n+1)`
-/

namespace A325008.P12958505269270751675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325009 (n + 1) + (A325009 (n + 1) - A325011 (n + 1))

end

end A325008.P12958505269270751675

/-! ## A325008.P10729701171080773691

`2*A325009(n+1)-A325011(n+1)`
-/

namespace A325008.P10729701171080773691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325009 (n + 1) - A325011 (n + 1)

end

end A325008.P10729701171080773691

/-! ## A325008.P7665947270745424551

`A325010(n+1)+A325009(n+1)`
-/

namespace A325008.P7665947270745424551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325010 (n + 1) + A325009 (n + 1)

end

end A325008.P7665947270745424551

/-! ## A325008.P467687225203532065

`A325011(n+1)+2*A325010(n+1)`
-/

namespace A325008.P467687225203532065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325011 (n + 1) + 2 * A325010 (n + 1)

end

end A325008.P467687225203532065

/-! ## A325008.P15503509278831319332

`A325010(A000027(n+1))+A325011(n+1)+A325010(n+1)`
-/

namespace A325008.P15503509278831319332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325010 (A000027 (n + 1)).toNat + (A325011 (n + 1) + A325010 (n + 1))

end

end A325008.P15503509278831319332

/-!
# A325009: Triangle read by rows: T(n,k) is the number of unoriented colorings of the facets of a regular n-dimensional orthotope using exactly k colors. Row n has 2n columns.

The programs for A325009, there is no canonical definition to state claims against.
-/

/-! ## A325009.P16337204534294895075

`(A325011(n+1)+A325008(n+1))/2`
-/

namespace A325009.P16337204534294895075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325011 (n + 1) + A325008 (n + 1) : ℚ) / 2

end

end A325009.P16337204534294895075

/-! ## A325009.P8663104840570204392

`A325011(n+1)+A325010(n+1)`
-/

namespace A325009.P8663104840570204392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325011 (n + 1) + A325010 (n + 1)

end

end A325009.P8663104840570204392

/-! ## A325009.P11011857443650648784

`A325008(n+1)-A325010(n+1)`
-/

namespace A325009.P11011857443650648784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325008 (n + 1) - A325010 (n + 1)

end

end A325009.P11011857443650648784

/-! ## A325009.P1934096951671479803

`A325011(n+1)+A014682(A325008(n+1)-A325011(n+1))`
-/

namespace A325009.P1934096951671479803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325011 (n + 1) + A014682 (A325008 (n + 1) - A325011 (n + 1)).toNat

end

end A325009.P1934096951671479803

/-! ## A325009.P15842779320610982910

`A325011(n+1)+A038572(A325008(n+1)-A325011(n+1))`
-/

namespace A325009.P15842779320610982910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325011 (n + 1) + A038572 (A325008 (n + 1) - A325011 (n + 1)).toNat

end

end A325009.P15842779320610982910

/-!
# A325010: Triangle read by rows: T(n,k) is the number of chiral pairs of colorings of the facets of a regular n-dimensional orthotope using exactly k colors. Row n has 2n columns.

The programs for A325010, there is no canonical definition to state claims against.
-/

/-! ## A325010.P1965572903998115564

`A325008(n+1)-A325009(n+1)`
-/

namespace A325010.P1965572903998115564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325008 (n + 1) - A325009 (n + 1)

end

end A325010.P1965572903998115564

/-! ## A325010.P1550178808575588557

`A325009(n+1)-A325011(n+1)`
-/

namespace A325010.P1550178808575588557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325009 (n + 1) - A325011 (n + 1)

end

end A325010.P1550178808575588557

/-! ## A325010.P10296502183044940582

`(A325008(n+1)-A325011(n+1))/2`
-/

namespace A325010.P10296502183044940582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325008 (n + 1) - A325011 (n + 1) : ℚ) / 2

end

end A325010.P10296502183044940582

/-! ## A325010.P2597520728702638123

`A014682(A325008(n+1)-A325011(n+1))`
-/

namespace A325010.P2597520728702638123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A325008 (n + 1) - A325011 (n + 1)).toNat

end

end A325010.P2597520728702638123

/-! ## A325010.P11382316217338194438

`A038572(A325008(n+1)-A325011(n+1))`
-/

namespace A325010.P11382316217338194438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A325008 (n + 1) - A325011 (n + 1)).toNat

end

end A325010.P11382316217338194438

/-!
# A325011: Triangle read by rows: T(n,k) is the number of achiral colorings of the facets of a regular n-dimensional orthotope using exactly k colors. Row n has 2n columns.

The programs for A325011, there is no canonical definition to state claims against.
-/

/-! ## A325011.P4145519242242861470

`A325009(n+1)+A325009(n+1)-A325008(n+1)`
-/

namespace A325011.P4145519242242861470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325009 (n + 1) + (A325009 (n + 1) - A325008 (n + 1))

end

end A325011.P4145519242242861470

/-! ## A325011.P15504072937440340361

`2*A325009(n+1)-A325008(n+1)`
-/

namespace A325011.P15504072937440340361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325009 (n + 1) - A325008 (n + 1)

end

end A325011.P15504072937440340361

/-! ## A325011.P12323588507076494415

`A325009(n+1)-A325010(n+1)`
-/

namespace A325011.P12323588507076494415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325009 (n + 1) - A325010 (n + 1)

end

end A325011.P12323588507076494415

/-! ## A325011.P15337870584073525476

`A325008(n+1)-2*A325010(n+1)`
-/

namespace A325011.P15337870584073525476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325008 (n + 1) - 2 * A325010 (n + 1)

end

end A325011.P15337870584073525476

/-! ## A325011.P11158068005552103762

`A325009(n+1)+A057428(n)*A325010(n+1)`
-/

namespace A325011.P11158068005552103762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325009 (n + 1) + A057428 n * A325010 (n + 1)

end

end A325011.P11158068005552103762

/-! ## A325011.P10876279157848458254

`A325009(n+1)+-A325010(n+1)%A325008(n+1)`
-/

namespace A325011.P10876279157848458254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325009 (n + 1) + Int.tmod (-A325010 (n + 1)) (A325008 (n + 1))

end

end A325011.P10876279157848458254

/-!
# A325012: Array read by descending antidiagonals: A(n,k) is the number of oriented colorings of the facets of a regular n-dimensional orthoplex using up to k colors.

The programs for A325012, there is no canonical definition to state claims against.
-/

/-! ## A325012.P13004386740065899569

`A325014(n+1)+A325013(n+1)`
-/

namespace A325012.P13004386740065899569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325014 (n + 1) + A325013 (n + 1)

end

end A325012.P13004386740065899569

/-! ## A325012.P244287830029322144

`A325015(n+1)+2*A325014(n+1)`
-/

namespace A325012.P244287830029322144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325015 (n + 1) + 2 * A325014 (n + 1)

end

end A325012.P244287830029322144

/-! ## A325012.P13498501359222535210

`2*A325013(n+1)-A325015(n+1)`
-/

namespace A325012.P13498501359222535210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325013 (n + 1) - A325015 (n + 1)

end

end A325012.P13498501359222535210

/-! ## A325012.P13742220369225543432

`A325014(A000027(n+1))+A325015(n+1)+A325014(n+1)`
-/

namespace A325012.P13742220369225543432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325014 (A000027 (n + 1)).toNat + (A325015 (n + 1) + A325014 (n + 1))

end

end A325012.P13742220369225543432

/-! ## A325012.P15273988443572653471

`A325013(A000027(n+1))+A325013(n+1)-A325015(n+1)`
-/

namespace A325012.P15273988443572653471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325013 (A000027 (n + 1)).toNat + (A325013 (n + 1) - A325015 (n + 1))

end

end A325012.P15273988443572653471

/-!
# A325013: Array read by descending antidiagonals: A(n,k) is the number of unoriented colorings of the facets of a regular n-dimensional orthoplex using up to k colors.

The programs for A325013, there is no canonical definition to state claims against.
-/

/-! ## A325013.P13314965607981088581

`A325015(n+1)+A325014(n+1)`
-/

namespace A325013.P13314965607981088581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325015 (n + 1) + A325014 (n + 1)

end

end A325013.P13314965607981088581

/-! ## A325013.P15362346634660794084

`A325012(n+1)-A325014(n+1)`
-/

namespace A325013.P15362346634660794084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325012 (n + 1) - A325014 (n + 1)

end

end A325013.P15362346634660794084

/-! ## A325013.P2582127889218402946

`(A325015(n+1)+A325012(n+1))/2`
-/

namespace A325013.P2582127889218402946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325015 (n + 1) + A325012 (n + 1) : ℚ) / 2

end

end A325013.P2582127889218402946

/-! ## A325013.P9158385383433418947

`A004525(A325015(n+1)+A325012(n+1))`
-/

namespace A325013.P9158385383433418947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A325015 (n + 1) + A325012 (n + 1)).toNat

end

end A325013.P9158385383433418947

/-! ## A325013.P10538171893844827952

`A004526(A325015(n+1)+A325012(n+1))`
-/

namespace A325013.P10538171893844827952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A325015 (n + 1) + A325012 (n + 1)).toNat

end

end A325013.P10538171893844827952

/-!
# A325014: Array read by descending antidiagonals: A(n,k) is the number of chiral pairs of colorings of the facets of a regular n-dimensional orthoplex using up to k colors.

The programs for A325014, there is no canonical definition to state claims against.
-/

/-! ## A325014.P16414460694657132357

`A325012(n+1)-A325013(n+1)`
-/

namespace A325014.P16414460694657132357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325012 (n + 1) - A325013 (n + 1)

end

end A325014.P16414460694657132357

/-! ## A325014.P16039755060399439935

`A325013(n+1)-A325015(n+1)`
-/

namespace A325014.P16039755060399439935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325013 (n + 1) - A325015 (n + 1)

end

end A325014.P16039755060399439935

/-! ## A325014.P2206997495152713715

`(A325012(n+1)-A325015(n+1))/2`
-/

namespace A325014.P2206997495152713715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325012 (n + 1) - A325015 (n + 1) : ℚ) / 2

end

end A325014.P2206997495152713715

/-! ## A325014.P14990104805355942359

`A325012(A000027(n+1))%A325013(n+1)`
-/

namespace A325014.P14990104805355942359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325012 (A000027 (n + 1)).toNat) (A325013 (n + 1))

end

end A325014.P14990104805355942359

/-! ## A325014.P1873078667172362450

`(A325012(n+1)+A000007(n))%A325013(n+1)`
-/

namespace A325014.P1873078667172362450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325012 (n + 1) + A000007 n) (A325013 (n + 1))

end

end A325014.P1873078667172362450

/-!
# A325015: Array read by descending antidiagonals: T(n,k) is the number of achiral colorings of the facets of a regular n-dimensional orthoplex using up to k colors.

The programs for A325015, there is no canonical definition to state claims against.
-/

/-! ## A325015.P3827405475238082761

`A325013(n+1)-A325014(n+1)`
-/

namespace A325015.P3827405475238082761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325013 (n + 1) - A325014 (n + 1)

end

end A325015.P3827405475238082761

/-! ## A325015.P22422569992305968

`2*A325013(n+1)-A325012(n+1)`
-/

namespace A325015.P22422569992305968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325013 (n + 1) - A325012 (n + 1)

end

end A325015.P22422569992305968

/-! ## A325015.P14725685214031280669

`A325012(n+1)-2*A325014(n+1)`
-/

namespace A325015.P14725685214031280669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325012 (n + 1) - 2 * A325014 (n + 1)

end

end A325015.P14725685214031280669

/-! ## A325015.P4946439763895452113

`A325013(A000027(n+1))-(A325012(n+1)-A325013(n+1))`
-/

namespace A325015.P4946439763895452113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325013 (A000027 (n + 1)).toNat - (A325012 (n + 1) - A325013 (n + 1))

end

end A325015.P4946439763895452113

/-! ## A325015.P2057572365652281566

`A325013(n+1)-(A325012(n+1)+A000007(n))%A325013(n+1)`
-/

namespace A325015.P2057572365652281566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325013 (n + 1) - Int.tmod (A325012 (n + 1) + A000007 n) (A325013 (n + 1))

end

end A325015.P2057572365652281566

/-!
# A325016: Triangle read by rows: T(n,k) is the number of oriented colorings of the facets of a regular n-dimensional orthoplex using exactly k colors. Row n has 2^n columns.

The programs for A325016, there is no canonical definition to state claims against.
-/

/-! ## A325016.P7274227677467030657

`A325018(n+1)+A325017(n+1)`
-/

namespace A325016.P7274227677467030657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325018 (n + 1) + A325017 (n + 1)

end

end A325016.P7274227677467030657

/-! ## A325016.P15444263608318398618

`A325019(n+1)+2*A325018(n+1)`
-/

namespace A325016.P15444263608318398618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325019 (n + 1) + 2 * A325018 (n + 1)

end

end A325016.P15444263608318398618

/-! ## A325016.P5735792516659365440

`2*A325017(n+1)-A325019(n+1)`
-/

namespace A325016.P5735792516659365440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325017 (n + 1) - A325019 (n + 1)

end

end A325016.P5735792516659365440

/-! ## A325016.P12223700017380603500

`A325018(A000027(n+1))+A325019(n+1)+A325018(n+1)`
-/

namespace A325016.P12223700017380603500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325018 (A000027 (n + 1)).toNat + (A325019 (n + 1) + A325018 (n + 1))

end

end A325016.P12223700017380603500

/-! ## A325016.P15017195932768094825

`A325017(A000027(n+1))+A325017(n+1)-A325019(n+1)`
-/

namespace A325016.P15017195932768094825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325017 (A000027 (n + 1)).toNat + (A325017 (n + 1) - A325019 (n + 1))

end

end A325016.P15017195932768094825

/-!
# A325017: Triangle read by rows: T(n,k) is the number of unoriented colorings of the facets of a regular n-dimensional orthoplex using exactly k colors. Row n has 2^n columns.

The programs for A325017, there is no canonical definition to state claims against.
-/

/-! ## A325017.P9937306486634580229

`A325019(n+1)+A325018(n+1)`
-/

namespace A325017.P9937306486634580229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325019 (n + 1) + A325018 (n + 1)

end

end A325017.P9937306486634580229

/-! ## A325017.P8894546413511765981

`A325016(n+1)-A325018(n+1)`
-/

namespace A325017.P8894546413511765981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325016 (n + 1) - A325018 (n + 1)

end

end A325017.P8894546413511765981

/-! ## A325017.P16193968449229471110

`(A325019(n+1)+A325016(n+1))/2`
-/

namespace A325017.P16193968449229471110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325019 (n + 1) + A325016 (n + 1) : ℚ) / 2

end

end A325017.P16193968449229471110

/-! ## A325017.P7060078948613843762

`A325016(n+1)+A057428(n)*A325018(n+1)`
-/

namespace A325017.P7060078948613843762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325016 (n + 1) + A057428 n * A325018 (n + 1)

end

end A325017.P7060078948613843762

/-! ## A325017.P16781121627179675322

`A001281(A325019(n+1)+A325016(n+1))`
-/

namespace A325017.P16781121627179675322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A325019 (n + 1) + A325016 (n + 1)).toNat

end

end A325017.P16781121627179675322

/-!
# A325018: Triangle read by rows: T(n,k) is the number of chiral pairs of colorings of the facets of a regular n-dimensional orthoplex using exactly k colors. Row n has 2^n columns.

The programs for A325018, there is no canonical definition to state claims against.
-/

/-! ## A325018.P11391248068572704191

`A325016(n+1)-A325017(n+1)`
-/

namespace A325018.P11391248068572704191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325016 (n + 1) - A325017 (n + 1)

end

end A325018.P11391248068572704191

/-! ## A325018.P6708382597646640492

`A325017(n+1)-A325019(n+1)`
-/

namespace A325018.P6708382597646640492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325017 (n + 1) - A325019 (n + 1)

end

end A325018.P6708382597646640492

/-! ## A325018.P11046661902880291886

`(A325016(n+1)-A325019(n+1))/2`
-/

namespace A325018.P11046661902880291886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325016 (n + 1) - A325019 (n + 1) : ℚ) / 2

end

end A325018.P11046661902880291886

/-! ## A325018.P14350739655956873880

`A325017(n+1)+A057428(n+1)*A325019(n+1)`
-/

namespace A325018.P14350739655956873880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325017 (n + 1) + A057428 (n + 1) * A325019 (n + 1)

end

end A325018.P14350739655956873880

/-! ## A325018.P9344677950946628020

`A001281(A325016(n+1)-A325019(n+1))`
-/

namespace A325018.P9344677950946628020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A325016 (n + 1) - A325019 (n + 1)).toNat

end

end A325018.P9344677950946628020

/-!
# A325019: Triangle read by rows: T(n,k) is the number of achiral colorings of the facets of a regular n-dimensional orthoplex using exactly k colors. Row n has 2^n columns.

The programs for A325019, there is no canonical definition to state claims against.
-/

/-! ## A325019.P11640207046365037501

`A325017(n+1)-A325018(n+1)`
-/

namespace A325019.P11640207046365037501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325017 (n + 1) - A325018 (n + 1)

end

end A325019.P11640207046365037501

/-! ## A325019.P12289936059120610390

`2*A325017(n+1)-A325016(n+1)`
-/

namespace A325019.P12289936059120610390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325017 (n + 1) - A325016 (n + 1)

end

end A325019.P12289936059120610390

/-! ## A325019.P13960258584345501915

`A325016(n+1)-2*A325018(n+1)`
-/

namespace A325019.P13960258584345501915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325016 (n + 1) - 2 * A325018 (n + 1)

end

end A325019.P13960258584345501915

/-! ## A325019.P10821988935129373878

`A325017(n+1)+A057428(n)*A325018(n+1)`
-/

namespace A325019.P10821988935129373878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325017 (n + 1) + A057428 n * A325018 (n + 1)

end

end A325019.P10821988935129373878

/-! ## A325019.P11970124971202000535

`A325016(n+1)-A325018(n+1)-A325018(A000027(n+1))`
-/

namespace A325019.P11970124971202000535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325016 (n + 1) - A325018 (n + 1) - A325018 (A000027 (n + 1)).toNat

end

end A325019.P11970124971202000535

/-!
# A325021: Harmonic numbers m from A001599 such that m*(m-tau(m))/sigma(m) is an integer h, where k-tau(k) is the number of nondivisors of k (A049820), tau(k) is the number of divisors of k (A000005), and sigma(k) is the sum of the divisors of k (A000203).

The programs for A325021, there is no canonical definition to state claims against.
-/

/-! ## A325021.P16804011310576711196

`∩[A001599(n+1), A325020(n+1)]`
-/

namespace A325021.P16804011310576711196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325021.P16804011310576711196

/-! ## A325021.P1449443190238126569

`∩[A090777(n+1), A325020(n+1)]`
-/

namespace A325021.P1449443190238126569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325021.P1449443190238126569

/-! ## A325021.P8629662103092691408

`∩[A001599(n+1), A090777(n+1)]`
-/

namespace A325021.P8629662103092691408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325021.P8629662103092691408

/-! ## A325021.P15461107246792216340

`∩[A090777(n+1), A349476(n+1)]`
-/

namespace A325021.P15461107246792216340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325021.P15461107246792216340

/-! ## A325021.P3398685000332061187

`∩[A325020(n+1), A349476(n+1)]`
-/

namespace A325021.P3398685000332061187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325021.P3398685000332061187

/-!
# A325022: Harmonic numbers m from A001599 such that m*(m-tau(m))/sigma(m) is not an integer, where k-tau(k) = the number of nondivisors of k (A049820), tau(k) = the number of divisors of k (A000005) and sigma(k) = the sum of the divisors of k (A000203).

The programs for A325022, there is no canonical definition to state claims against.
-/

/-! ## A325022.P13832883374266689189

`A140798(lt[A325025(n+1), A017681(n+1)])`
-/

namespace A325022.P13832883374266689189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140798 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325022.P13832883374266689189

/-! ## A325022.P13895575425454828483

`A140798(n+1)+A024362(A007477(n))`
-/

namespace A325022.P13895575425454828483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140798 (n + 1) + A024362 (A007477 n).toNat

end

end A325022.P13895575425454828483

/-! ## A325022.P12289321369189970962

`A140798(n+1)+A000038(A217109(n))`
-/

namespace A325022.P12289321369189970962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140798 (n + 1) + A000038 (A217109 n).toNat

end

end A325022.P12289321369189970962

/-! ## A325022.P16980456324118012084

`A140798(n+1)%A054818(A034008(n))`
-/

namespace A325022.P16980456324118012084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140798 (n + 1)) (A054818 (A034008 n).toNat)

end

end A325022.P16980456324118012084

/-! ## A325022.P10021753325184374246

`lcm(A072911(A178381(n)), A140798(n+1))`
-/

namespace A325022.P10021753325184374246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072911 (A178381 n).toNat) (A140798 (n + 1))

end

end A325022.P10021753325184374246

/-!
# A325023: Multiperfect numbers m from A007691 such that m*(m-tau(m))/sigma(m) is an integer h, where k-tau(k) is the number of nondivisors of k (A049820) and sigma(k) is the sum of the divisors of k (A000203).

The programs for A325023, there is no canonical definition to state claims against.
-/

/-! ## A325023.P9139757201120993663

`∩[A007691(n+1), A325021(n+1)]`
-/

namespace A325023.P9139757201120993663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325023.P9139757201120993663

/-! ## A325023.P1004068944008337613

`∩[A325021(n+1), A325025(n+1)]`
-/

namespace A325023.P1004068944008337613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325023.P1004068944008337613

/-! ## A325023.P2187916543282349519

`A325025(lt[A057034(n+4), A352000(3*n+2)])`
-/

namespace A325023.P2187916543282349519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057034 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352000 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325023.P2187916543282349519

/-! ## A325023.P11892903255457650217

`A325025(comp[A185284(n²)])`
-/

namespace A325023.P11892903255457650217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A325023.P11892903255457650217

/-! ## A325023.P11565304620886311021

`A325025(record[A003056(A322530(n))])`
-/

namespace A325023.P11565304620886311021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A322530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325023.P11565304620886311021

/-!
# A325025: Numbers that are multiperfect (A007691) and simultaneously harmonic (A001599).

The programs for A325025, there is no canonical definition to state claims against.
-/

/-! ## A325025.P15932233605816128354

`∪[A325023(n+1), A340864(n+1)]`
-/

namespace A325025.P15932233605816128354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325025.P15932233605816128354

/-! ## A325025.P7820319855507517394

`∪[A336702(n+1), A340864(n+1)]`
-/

namespace A325025.P7820319855507517394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325025.P7820319855507517394

/-! ## A325025.P5468794260588890453

`∩[A001599(n+1), A007691(n+1)]`
-/

namespace A325025.P5468794260588890453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325025.P5468794260588890453

/-! ## A325025.P6188321599707638959

`A007691(comp[A000292(n)-A002464(n)])`
-/

namespace A325025.P6188321599707638959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - A002464 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A325025.P6188321599707638959

/-! ## A325025.P9118120231887106717

`∩[A007691(n+1), A349476(n+1)]`
-/

namespace A325025.P9118120231887106717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325025.P9118120231887106717

/-!
# A325026: Multiperfect numbers from A007691 that are not harmonic (A001599).

The programs for A325026, there is no canonical definition to state claims against.
-/

/-! ## A325026.P14867640592909696267

`A325024(eq[A007949(2*n+3), A011845(n)])`
-/

namespace A325026.P14867640592909696267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325024 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325026.P14867640592909696267

/-!
# A325027: Triangle read by rows: T(n,k), 0 <= k < n, is the least m minimizing the number of intervals [a,a+1) or [ma,m(a+1)) that must be XORed together to form the interval [k,n).

The programs for A325027, there is no canonical definition to state claims against.
-/

/-! ## A325027.P1153057710260726270

`A304036(A221623(n+1))`
-/

namespace A325027.P1153057710260726270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 (A221623 (n + 1)).toNat

end

end A325027.P1153057710260726270

/-! ## A325027.P2201269935111786650

`A365484((n+1)^A082601(n))`
-/

namespace A325027.P2201269935111786650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A082601 n : ℤ))).toNat

end

end A325027.P2201269935111786650

/-! ## A325027.P15121275704042840997

`A186714(A125800(n))+A025581(n)`
-/

namespace A325027.P15121275704042840997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186714 (A125800 n).toNat + A025581 n

end

end A325027.P15121275704042840997

/-! ## A325027.P11465355704614317124

`gcd(A001222(A183159(n)), A120108(n))`
-/

namespace A325027.P11465355704614317124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A183159 n).toNat) (A120108 n)

end

end A325027.P11465355704614317124

/-! ## A325027.P8656919078866056228

`A249821(n+1)-A188014(A233584(n+1))`
-/

namespace A325027.P8656919078866056228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249821 (n + 1) - A188014 (A233584 (n + 1)).toNat

end

end A325027.P8656919078866056228

/-!
# A325028: Triangle read by rows: T(n,k), 0 <= k < n, is the number of intervals [a,a+1) or [ma,m(a+1)) that must be XORed together to form the interval [k,n), where m = A325027(n,k).

The programs for A325028, there is no canonical definition to state claims against.
-/

/-! ## A325028.P6856022150972875766

`A014963(A321312(n)%A089688(n)+1)`
-/

namespace A325028.P6856022150972875766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (A321312 n) (A089688 n) + 1).toNat

end

end A325028.P6856022150972875766

/-! ## A325028.P257032898936147631

`ceil(A342866(A055248(n)²)/2)`
-/

namespace A325028.P257032898936147631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342866 (A055248 n ^ 2).toNat : ℚ) / 2⌉

end

end A325028.P257032898936147631

/-! ## A325028.P11033456132477875180

`A003056(A342866(A055248(n)²))`
-/

namespace A325028.P11033456132477875180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A342866 (A055248 n ^ 2).toNat).toNat

end

end A325028.P11033456132477875180

/-! ## A325028.P14646310690798518057

`A378122(A208510(n+1)%A084007(n+2))`
-/

namespace A325028.P14646310690798518057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378122 (Int.tmod (A208510 (n + 1)) (A084007 (n + 2))).toNat

end

end A325028.P14646310690798518057

/-! ## A325028.P4480249249120533612

`A305936(A122016(n)+2)`
-/

namespace A325028.P4480249249120533612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (A122016 n + 2).toNat

end

end A325028.P4480249249120533612

/-!
# A325029: a(n) = Sum_{d|n} (sigma(d)*pod(d)) where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

The programs for A325029, the canonical program `A325029.P11066408375137913507` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325029 has offset 1).

The definition of A325029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325029.P11066408375137913507

`∑{d}[n+1, A076722(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A325029

/-- `∑{d}[n+1, A076722(#)]` -/
def P11066408375137913507.Spec : Prop :=
  ∀ n, P11066408375137913507.a n = A325029 (n + 1)

theorem P11066408375137913507.correct : P11066408375137913507.Spec := by
  intro n
  simp only [A325029, Nat.add_sub_cancel]

end A325029

/-! ## A325029.P8016534144197572296

`∑{d}[n+1, A000203(#)*A007955(#)]`
-/

namespace A325029.P8016534144197572296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A007955 d

end

end A325029.P8016534144197572296

namespace A325029

/-- `∑{d}[n+1, A000203(#)*A007955(#)]` -/
def P8016534144197572296.Spec : Prop :=
  ∀ n, P8016534144197572296.a n = A325029 (n + 1)

end A325029

/-! ## A325029.P12214451616141176221

`∑{d}[n+1, #*A220846(#)]`
-/

namespace A325029.P12214451616141176221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A220846 d

end

end A325029.P12214451616141176221

namespace A325029

/-- `∑{d}[n+1, #*A220846(#)]` -/
def P12214451616141176221.Spec : Prop :=
  ∀ n, P12214451616141176221.a n = A325029 (n + 1)

end A325029

/-! ## A325029.P15109718960499662479

`∑{d}[A077168(n), A076722(#)]-char[20]`
-/

namespace A325029.P15109718960499662479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A076722 d - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325029.P15109718960499662479

namespace A325029

/-- `∑{d}[A077168(n), A076722(#)]-char[20]` -/
def P15109718960499662479.Spec : Prop :=
  ∀ n, P15109718960499662479.a n = A325029 (n + 1)

end A325029

/-! ## A325029.P7503648694379876085

`A000027(∑{d}[A077168(n), A076722(#)])`
-/

namespace A325029.P7503648694379876085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, A076722 d).toNat

end

end A325029.P7503648694379876085

namespace A325029

/-- `A000027(∑{d}[A077168(n), A076722(#)])` -/
def P7503648694379876085.Spec : Prop :=
  ∀ n, P7503648694379876085.a n = A325029 (n + 1)

end A325029

/-!
# A325030: a(n) = Product_{d|n} (sigma(d)*pod(d)) where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

The programs for A325030, the canonical program `A325030.P6646308341091855978` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325030 has offset 1).

The definition of A325030 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325030.P6646308341091855978

`A206032(n+1)*A266265(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A325030

/-- `A206032(n+1)*A266265(n+1)` -/
def P6646308341091855978.Spec : Prop :=
  ∀ n, P6646308341091855978.a n = A325030 (n + 1)

theorem P6646308341091855978.correct : P6646308341091855978.Spec := by
  intro n
  simp only [A325030, Nat.add_sub_cancel]

end A325030

/-! ## A325030.P15534071363786670010

`∏{d}[n+1, A076722(#)]`
-/

namespace A325030.P15534071363786670010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A076722 d

end

end A325030.P15534071363786670010

namespace A325030

/-- `∏{d}[n+1, A076722(#)]` -/
def P15534071363786670010.Spec : Prop :=
  ∀ n, P15534071363786670010.a n = A325030 (n + 1)

end A325030

/-! ## A325030.P3066303405104082869

`A322672(n+1)*A324980(n+1)`
-/

namespace A325030.P3066303405104082869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322672 (n + 1) * A324980 (n + 1)

end

end A325030.P3066303405104082869

namespace A325030

/-- `A322672(n+1)*A324980(n+1)` -/
def P3066303405104082869.Spec : Prop :=
  ∀ n, P3066303405104082869.a n = A325030 (n + 1)

end A325030

/-! ## A325030.P17685774643363285751

`A334731(n+1)*A334809(n+1)`
-/

namespace A325030.P17685774643363285751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334731 (n + 1) * A334809 (n + 1)

end

end A325030.P17685774643363285751

namespace A325030

/-- `A334731(n+1)*A334809(n+1)` -/
def P17685774643363285751.Spec : Prop :=
  ∀ n, P17685774643363285751.a n = A325030 (n + 1)

end A325030

/-! ## A325030.P7659561528262970640

`∏{d}[n+1, A306682(#)]*A334809(n+1)`
-/

namespace A325030.P7659561528262970640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), A306682 d) * A334809 (n + 1)

end

end A325030.P7659561528262970640

namespace A325030

/-- `∏{d}[n+1, A306682(#)]*A334809(n+1)` -/
def P7659561528262970640.Spec : Prop :=
  ∀ n, P7659561528262970640.a n = A325030 (n + 1)

end A325030

/-!
# A325031: Numbers divisible by all prime indices of their prime indices.

The programs for A325031, there is no canonical definition to state claims against.
-/

/-! ## A325031.P3656454918251894509

`eq[1, char[(n+1)*A156061(A156061(n+1))]]`
-/

namespace A325031.P3656454918251894509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A156061 (A156061 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325031.P3656454918251894509

/-! ## A325031.P15769779308506591986

`eq[1, char[(n+1)*A290103(A290103(n+1))]]`
-/

namespace A325031.P15769779308506591986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A290103 (A290103 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325031.P15769779308506591986

/-! ## A325031.P17401252214053183329

`lt[A111008(n), A000005(A110970(n+1))]`
-/

namespace A325031.P17401252214053183329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A110970 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325031.P17401252214053183329

/-!
# A325032: Product of products of the multisets of prime indices of each prime index of n.

The programs for A325032, the canonical program `A325032.P2508317497112137827` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325032 has offset 1).

The definition of A325032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325032.P2508317497112137827

`A003963(A003963(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A325032

/-- `A003963(A003963(n+1))` -/
def P2508317497112137827.Spec : Prop :=
  ∀ n, P2508317497112137827.a n = A325032 (n + 1)

theorem P2508317497112137827.correct : P2508317497112137827.Spec := by
  intro n
  simp only [A325032, Nat.add_sub_cancel]

end A325032

/-! ## A325032.P859687843085514632

`A003963(2*A003963(-xor(n, -1)))`
-/

namespace A325032.P859687843085514632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A003963 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A325032.P859687843085514632

namespace A325032

/-- `A003963(2*A003963(-xor(n, -1)))` -/
def P859687843085514632.Spec : Prop :=
  ∀ n, P859687843085514632.a n = A325032 (n + 1)

end A325032

/-! ## A325032.P16218626215443815192

`A003963(2*A003963(1-(n-2*n)))`
-/

namespace A325032.P16218626215443815192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A003963 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A325032.P16218626215443815192

namespace A325032

/-- `A003963(2*A003963(1-(n-2*n)))` -/
def P16218626215443815192.Spec : Prop :=
  ∀ n, P16218626215443815192.a n = A325032 (n + 1)

end A325032

/-! ## A325032.P8396816075510497072

`A064553(A064989(A064553(A064989(n+1))))`
-/

namespace A325032.P8396816075510497072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A064989 (A064553 (A064989 (n + 1)).toNat).toNat).toNat

end

end A325032.P8396816075510497072

namespace A325032

/-- `A064553(A064989(A064553(A064989(n+1))))` -/
def P8396816075510497072.Spec : Prop :=
  ∀ n, P8396816075510497072.a n = A325032 (n + 1)

end A325032

/-! ## A325032.P16775677784590010137

`A357984(A064988(A357984(A064988(n+1))))`
-/

namespace A325032.P16775677784590010137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357984 (A064988 (A357984 (A064988 (n + 1)).toNat).toNat).toNat

end

end A325032.P16775677784590010137

namespace A325032

/-- `A357984(A064988(A357984(A064988(n+1))))` -/
def P16775677784590010137.Spec : Prop :=
  ∀ n, P16775677784590010137.a n = A325032 (n + 1)

end A325032

/-! ## A325032.P8978412172652360645

`A290106(A064549(A290106(A064549(n+1))))`
-/

namespace A325032.P8978412172652360645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290106 (A064549 (A290106 (A064549 (n + 1)).toNat).toNat).toNat

end

end A325032.P8978412172652360645

namespace A325032

/-- `A290106(A064549(A290106(A064549(n+1))))` -/
def P8978412172652360645.Spec : Prop :=
  ∀ n, P8978412172652360645.a n = A325032 (n + 1)

end A325032

/-!
# A325033: Sum of sums of the multisets of prime indices of each prime index of n.

The programs for A325033, the canonical program `A325033.P18279495578190988988` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325033 has offset 1).

The definition of A325033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325033.P18279495578190988988

`A056239(A003963(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A325033

/-- `A056239(A003963(n+1))` -/
def P18279495578190988988.Spec : Prop :=
  ∀ n, P18279495578190988988.a n = A325033 (n + 1)

theorem P18279495578190988988.correct : P18279495578190988988.Spec := by
  intro n
  simp only [A325033, Nat.add_sub_cancel]

end A325033

/-! ## A325033.P11704042563796271820

`∑{d}[A003963(n+1), A297109(#)]`
-/

namespace A325033.P11704042563796271820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A325033.P11704042563796271820

namespace A325033

/-- `∑{d}[A003963(n+1), A297109(#)]` -/
def P11704042563796271820.Spec : Prop :=
  ∀ n, P11704042563796271820.a n = A325033 (n + 1)

end A325033

/-! ## A325033.P9108301087803222397

`A316436(2*A003963(n+1))-1`
-/

namespace A325033.P9108301087803222397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * A003963 (n + 1)).toNat - 1

end

end A325033.P9108301087803222397

namespace A325033

/-- `A316436(2*A003963(n+1))-1` -/
def P9108301087803222397.Spec : Prop :=
  ∀ n, P9108301087803222397.a n = A325033 (n + 1)

end A325033

/-! ## A325033.P2789289423000847284

`A056239(A325036(n+1)+A056239(n+1))`
-/

namespace A325033.P2789289423000847284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A325036 (n + 1) + A056239 (n + 1)).toNat

end

end A325033.P2789289423000847284

namespace A325033

/-- `A056239(A325036(n+1)+A056239(n+1))` -/
def P2789289423000847284.Spec : Prop :=
  ∀ n, P2789289423000847284.a n = A325033 (n + 1)

end A325033

/-! ## A325033.P7652900018207218477

`A318995(A003963(n+1))+A302242(n+1)`
-/

namespace A325033.P7652900018207218477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A003963 (n + 1)).toNat + A302242 (n + 1)

end

end A325033.P7652900018207218477

namespace A325033

/-- `A318995(A003963(n+1))+A302242(n+1)` -/
def P7652900018207218477.Spec : Prop :=
  ∀ n, P7652900018207218477.a n = A325033 (n + 1)

end A325033

/-! ## A325033.P8057695850020033578

`A325032(n+1)-A325036(A003963(n+1))`
-/

namespace A325033.P8057695850020033578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325032 (n + 1) - A325036 (A003963 (n + 1)).toNat

end

end A325033.P8057695850020033578

namespace A325033

/-- `A325032(n+1)-A325036(A003963(n+1))` -/
def P8057695850020033578.Spec : Prop :=
  ∀ n, P8057695850020033578.a n = A325033 (n + 1)

end A325033

/-! ## A325033.P3695052647241383358

`A346698(A003963(n+1)^2)`
-/

namespace A325033.P3695052647241383358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A003963 (n + 1) ^ 2).toNat

end

end A325033.P3695052647241383358

namespace A325033

/-- `A346698(A003963(n+1)^2)` -/
def P3695052647241383358.Spec : Prop :=
  ∀ n, P3695052647241383358.a n = A325033 (n + 1)

end A325033

/-! ## A325033.P13739026402743047500

`A346700(A003963(n+1)²)`
-/

namespace A325033.P13739026402743047500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A003963 (n + 1) ^ 2).toNat

end

end A325033.P13739026402743047500

namespace A325033

/-- `A346700(A003963(n+1)²)` -/
def P13739026402743047500.Spec : Prop :=
  ∀ n, P13739026402743047500.a n = A325033 (n + 1)

end A325033

/-! ## A325033.P5822459416209995092

`A346700(A003963(n+1)^2)`
-/

namespace A325033.P5822459416209995092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A003963 (n + 1) ^ 2).toNat

end

end A325033.P5822459416209995092

namespace A325033

/-- `A346700(A003963(n+1)^2)` -/
def P5822459416209995092.Spec : Prop :=
  ∀ n, P5822459416209995092.a n = A325033 (n + 1)

end A325033

/-! ## A325033.P16417632880942727900

`A346698(A003963((n+1)²))`
-/

namespace A325033.P16417632880942727900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A003963 ((n + 1) ^ 2)).toNat

end

end A325033.P16417632880942727900

namespace A325033

/-- `A346698(A003963((n+1)²))` -/
def P16417632880942727900.Spec : Prop :=
  ∀ n, P16417632880942727900.a n = A325033 (n + 1)

end A325033

/-!
# A325034: Sum of products of the multisets of prime indices of each prime index of n.

The programs for A325034, there is no canonical definition to state claims against.
-/

/-! ## A325034.P5389621624036707666

`∑{e}[A181821(n+1), A003963(#)]`
-/

namespace A325034.P5389621624036707666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 (Nat.factorization (f1 n).natAbs p)

end

end A325034.P5389621624036707666

/-! ## A325034.P3944881865848585749

`∑{e}[A304660(n+1), A003963(#)]`
-/

namespace A325034.P3944881865848585749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 (Nat.factorization (f1 n).natAbs p)

end

end A325034.P3944881865848585749

/-! ## A325034.P13189757343334840626

`∑{e}[A181821(n+1), A064553(A064989(#))]`
-/

namespace A325034.P13189757343334840626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A064553 (A064989 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325034.P13189757343334840626

/-! ## A325034.P17394738456329567212

`∑{e}[A181821(n+1), A005361(A181821(#))]`
-/

namespace A325034.P17394738456329567212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005361 (A181821 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325034.P17394738456329567212

/-! ## A325034.P16088360505656568371

`∑{e}[A181821(n+1), A225395(A102631(#))]`
-/

namespace A325034.P16088360505656568371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A225395 (A102631 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325034.P16088360505656568371

/-!
# A325035: Product of sums of the multisets of prime indices of each prime index of 2 * n + 1.

The programs for A325035, there is no canonical definition to state claims against.
-/

/-! ## A325035.P16941547381586423245

`∏{e}[A181821(2*n+1), A056239(#)]`
-/

namespace A325035.P16941547381586423245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 (Nat.factorization (f1 n).natAbs p)

end

end A325035.P16941547381586423245

/-! ## A325035.P11527193046735810917

`∏{e}[A304660(2*n+1), A056239(#)]`
-/

namespace A325035.P11527193046735810917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 (Nat.factorization (f1 n).natAbs p)

end

end A325035.P11527193046735810917

/-! ## A325035.P722406479842560165

`∏{e}[A181821(2*n+1), A001222(A181821(#))]`
-/

namespace A325035.P722406479842560165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (A181821 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325035.P722406479842560165

/-! ## A325035.P7832778284138527786

`∏{e}[A304660(2*n+1), A001222(A304660(#))]`
-/

namespace A325035.P7832778284138527786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (A304660 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325035.P7832778284138527786

/-! ## A325035.P7517292283634386468

`A055642(and(A224190(2*(n+1)), A288337(n)))`
-/

namespace A325035.P7517292283634386468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.land (A224190 (2 * (n + 1))) (A288337 n)).toNat

end

end A325035.P7517292283634386468

/-!
# A325036: Difference between product and sum of prime indices of n.

The programs for A325036, the canonical program `A325036.P14148753285896189603` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325036 has offset 1).

The definition of A325036 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, A056239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325036.P14148753285896189603

`A003963(n+1)-A056239(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A325036

/-- `A003963(n+1)-A056239(n+1)` -/
def P14148753285896189603.Spec : Prop :=
  ∀ n, P14148753285896189603.a n = A325036 (n + 1)

theorem P14148753285896189603.correct : P14148753285896189603.Spec := by
  intro n
  simp only [A325036, Nat.add_sub_cancel]

end A325036

/-! ## A325036.P12744000202028411352

`A380344(n+1)+A331415(n+1)`
-/

namespace A325036.P12744000202028411352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380344 (n + 1) + A331415 (n + 1)

end

end A325036.P12744000202028411352

namespace A325036

/-- `A380344(n+1)+A331415(n+1)` -/
def P12744000202028411352.Spec : Prop :=
  ∀ n, P12744000202028411352.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P16476443574100986268

`2*A003963(n+1)-A379681(n+1)`
-/

namespace A325036.P16476443574100986268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003963 (n + 1) - A379681 (n + 1)

end

end A325036.P16476443574100986268

namespace A325036

/-- `2*A003963(n+1)-A379681(n+1)` -/
def P16476443574100986268.Spec : Prop :=
  ∀ n, P16476443574100986268.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P5667896029247698925

`A379681(n+1)-2*A056239(n+1)`
-/

namespace A325036.P5667896029247698925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379681 (n + 1) - 2 * A056239 (n + 1)

end

end A325036.P5667896029247698925

namespace A325036

/-- `A379681(n+1)-2*A056239(n+1)` -/
def P5667896029247698925.Spec : Prop :=
  ∀ n, P5667896029247698925.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P11838645601532160503

`A003963(n+1)-∑{d}[n+1, A297109(#)]`
-/

namespace A325036.P11838645601532160503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A297109 d

end

end A325036.P11838645601532160503

namespace A325036

/-- `A003963(n+1)-∑{d}[n+1, A297109(#)]` -/
def P11838645601532160503.Spec : Prop :=
  ∀ n, P11838645601532160503.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P15072232735024268390

`A003963(n+1)-(A316436(2*(n+1))-1)`
-/

namespace A325036.P15072232735024268390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - (A316436 (2 * (n + 1)) - 1)

end

end A325036.P15072232735024268390

namespace A325036

/-- `A003963(n+1)-(A316436(2*(n+1))-1)` -/
def P15072232735024268390.Spec : Prop :=
  ∀ n, P15072232735024268390.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P10683654698024274208

`A064553(A064989(n+1))-A056239(n+1)`
-/

namespace A325036.P10683654698024274208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A064989 (n + 1)).toNat - A056239 (n + 1)

end

end A325036.P10683654698024274208

namespace A325036

/-- `A064553(A064989(n+1))-A056239(n+1)` -/
def P10683654698024274208.Spec : Prop :=
  ∀ n, P10683654698024274208.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P4136525418037626843

`A003963(n+1)-A304739(A064664(n+1))`
-/

namespace A325036.P4136525418037626843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A304739 (A064664 (n + 1)).toNat

end

end A325036.P4136525418037626843

namespace A325036

/-- `A003963(n+1)-A304739(A064664(n+1))` -/
def P4136525418037626843.Spec : Prop :=
  ∀ n, P4136525418037626843.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P1821635535626155201

`A003963(n+1)+A001057(2*A056239(n+1))`
-/

namespace A325036.P1821635535626155201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + A001057 (2 * A056239 (n + 1)).toNat

end

end A325036.P1821635535626155201

namespace A325036

/-- `A003963(n+1)+A001057(2*A056239(n+1))` -/
def P1821635535626155201.Spec : Prop :=
  ∀ n, P1821635535626155201.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P12341167342024275402

`A003963(n+1)-(A318995(n+1)+Δ[A022559(n)])`
-/

namespace A325036.P12341167342024275402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - (A318995 (n + 1) + (f1 (n + 1) - f1 n))

end

end A325036.P12341167342024275402

namespace A325036

/-- `A003963(n+1)-(A318995(n+1)+Δ[A022559(n)])` -/
def P12341167342024275402.Spec : Prop :=
  ∀ n, P12341167342024275402.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P15274681485630021041

`A001222(n+1)+A003963(n+1)-A318994(n+1)`
-/

namespace A325036.P15274681485630021041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A003963 (n + 1) - A318994 (n + 1))

end

end A325036.P15274681485630021041

namespace A325036

/-- `A001222(n+1)+A003963(n+1)-A318994(n+1)` -/
def P15274681485630021041.Spec : Prop :=
  ∀ n, P15274681485630021041.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P6557615794963800853

`A003963(n+1)-(A318995(n+1)+A001222(n+1))`
-/

namespace A325036.P6557615794963800853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - (A318995 (n + 1) + A001222 (n + 1))

end

end A325036.P6557615794963800853

namespace A325036

/-- `A003963(n+1)-(A318995(n+1)+A001222(n+1))` -/
def P6557615794963800853.Spec : Prop :=
  ∀ n, P6557615794963800853.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P7591805545331607206

`A003963(n+1)+A325794(n+1)-A000005(n+1)`
-/

namespace A325036.P7591805545331607206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + (A325794 (n + 1) - A000005 (n + 1))

end

end A325036.P7591805545331607206

namespace A325036

/-- `A003963(n+1)+A325794(n+1)-A000005(n+1)` -/
def P7591805545331607206.Spec : Prop :=
  ∀ n, P7591805545331607206.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P15034043574441250789

`A003963(n+1)-(A339823(n+1)+A000523(n+1))`
-/

namespace A325036.P15034043574441250789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - (A339823 (n + 1) + A000523 (n + 1))

end

end A325036.P15034043574441250789

namespace A325036

/-- `A003963(n+1)-(A339823(n+1)+A000523(n+1))` -/
def P15034043574441250789.Spec : Prop :=
  ∀ n, P15034043574441250789.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P5363127544528911152

`A003963(n+1)-(A339896(n+1)+A339894(n+1))`
-/

namespace A325036.P5363127544528911152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - (A339896 (n + 1) + A339894 (n + 1))

end

end A325036.P5363127544528911152

namespace A325036

/-- `A003963(n+1)-(A339896(n+1)+A339894(n+1))` -/
def P5363127544528911152.Spec : Prop :=
  ∀ n, P5363127544528911152.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P7240162440013570942

`A075254(n+1)+A380344(n+1)-A380345(n+1)`
-/

namespace A325036.P7240162440013570942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) + (A380344 (n + 1) - A380345 (n + 1))

end

end A325036.P7240162440013570942

namespace A325036

/-- `A075254(n+1)+A380344(n+1)-A380345(n+1)` -/
def P7240162440013570942.Spec : Prop :=
  ∀ n, P7240162440013570942.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P7677596034887136910

`A003963(n+1)-(A258851(n+1)-A278510(n+1))`
-/

namespace A325036.P7677596034887136910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - (A258851 (n + 1) - A278510 (n + 1))

end

end A325036.P7677596034887136910

namespace A325036

/-- `A003963(n+1)-(A258851(n+1)-A278510(n+1))` -/
def P7677596034887136910.Spec : Prop :=
  ∀ n, P7677596034887136910.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P9994499212484825012

`A156061(n+1)*A290106(n+1)-A056239(n+1)`
-/

namespace A325036.P9994499212484825012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (n + 1) * A290106 (n + 1) - A056239 (n + 1)

end

end A325036.P9994499212484825012

namespace A325036

/-- `A156061(n+1)*A290106(n+1)-A056239(n+1)` -/
def P9994499212484825012.Spec : Prop :=
  ∀ n, P9994499212484825012.a n = A325036 (n + 1)

end A325036

/-! ## A325036.P17906534868058034495

`A290103(n+1)*A290104(n+1)-A056239(n+1)`
-/

namespace A325036.P17906534868058034495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1) * A290104 (n + 1) - A056239 (n + 1)

end

end A325036.P17906534868058034495

namespace A325036

/-- `A290103(n+1)*A290104(n+1)-A056239(n+1)` -/
def P17906534868058034495.Spec : Prop :=
  ∀ n, P17906534868058034495.a n = A325036 (n + 1)

end A325036

/-!
# A325037: Heinz numbers of integer partitions whose product of parts is greater than their sum.

The programs for A325037, the canonical program `A325037.P8489955718019130323` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325037 has offset 1).

The definition of A325037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325037.P8489955718019130323

`lt[A056239(n+1), A003963(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A325037

/-- `lt[A056239(n+1), A003963(n+1)]+1` -/
def P8489955718019130323.Spec : Prop :=
  ∀ n, (P8489955718019130323.a n : ℤ) = A325037 (n + 1)

theorem P8489955718019130323.correct : P8489955718019130323.Spec := by
  intro n
  simp only [A325037, Nat.add_sub_cancel]

end A325037

/-! ## A325037.P8736001491585326753

`lt[A028310(n), A325036(A028310(n))+n]`
-/

namespace A325037.P8736001491585326753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325037.P8736001491585326753

namespace A325037

/-- `lt[A028310(n), A325036(A028310(n))+n]` -/
def P8736001491585326753.Spec : Prop :=
  ∀ n, (P8736001491585326753.a n : ℤ) = A325037 (n + 1)

end A325037

/-! ## A325037.P10751802133171593247

`lt[A056239(n+1), A064553(A064989(n+1))]+1`
-/

namespace A325037.P10751802133171593247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A064989 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325037.P10751802133171593247

namespace A325037

/-- `lt[A056239(n+1), A064553(A064989(n+1))]+1` -/
def P10751802133171593247.Spec : Prop :=
  ∀ n, (P10751802133171593247.a n : ℤ) = A325037 (n + 1)

end A325037

/-! ## A325037.P7882194210004561472

`lt[A318995(n+1)+A001222(n+1), A003963(n+1)]+1`
-/

namespace A325037.P7882194210004561472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325037.P7882194210004561472

namespace A325037

/-- `lt[A318995(n+1)+A001222(n+1), A003963(n+1)]+1` -/
def P7882194210004561472.Spec : Prop :=
  ∀ n, (P7882194210004561472.a n : ℤ) = A325037 (n + 1)

end A325037

/-! ## A325037.P4971033311330705684

`lt[A318994(n+1)-A001222(n+1), A003963(n+1)]+1`
-/

namespace A325037.P4971033311330705684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (n + 1) - A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325037.P4971033311330705684

namespace A325037

/-- `lt[A318994(n+1)-A001222(n+1), A003963(n+1)]+1` -/
def P4971033311330705684.Spec : Prop :=
  ∀ n, (P4971033311330705684.a n : ℤ) = A325037 (n + 1)

end A325037

/-! ## A325037.P3175698701682737119

`lt[A318995(n+1)+A255201(n+1)/2, A003963(n+1)]+1`
-/

namespace A325037.P3175698701682737119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318995 (n + 1) : ℚ) + (A255201 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A325037.P3175698701682737119

namespace A325037

/-- `lt[A318995(n+1)+A255201(n+1)/2, A003963(n+1)]+1` -/
def P3175698701682737119.Spec : Prop :=
  ∀ n, (P3175698701682737119.a n : ℤ) = A325037 (n + 1)

end A325037

/-!
# A325038: Heinz numbers of integer partitions whose sum of parts is greater than their product.

The programs for A325038, there is no canonical definition to state claims against.
-/

/-! ## A325038.P16709005505528053204

`2*A325044(n+1)`
-/

namespace A325038.P16709005505528053204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325044 (n + 1)

end

end A325038.P16709005505528053204

/-! ## A325038.P5961115891714303686

`lt[A325036(n+1), 0]+1`
-/

namespace A325038.P5961115891714303686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325038.P5961115891714303686

/-! ## A325038.P404638979939214203

`2*(comp[A325037(n+1)-1]+1)`
-/

namespace A325038.P404638979939214203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A325038.P404638979939214203

/-! ## A325038.P5701401087665699277

`lt[A325036(n*a(gcd(2, n)-1)), 0]` with `a(0)=1`
-/

namespace A325038.P5701401087665699277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A325036 ((n : ℤ) * f1 (Nat.gcd 2 n - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325038.P5701401087665699277

/-! ## A325038.P14574110378698476626

`A004277(A325044(n+1))`
-/

namespace A325038.P14574110378698476626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A325044 (n + 1)).toNat

end

end A325038.P14574110378698476626

/-! ## A325038.P14711768840732227103

`lt[A325036(A028310(n)), 0]`
-/

namespace A325038.P14711768840732227103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325038.P14711768840732227103

/-! ## A325038.P5048187355536644238

`A000267(A325044(n+1)²)`
-/

namespace A325038.P5048187355536644238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A325044 (n + 1) ^ 2).toNat

end

end A325038.P5048187355536644238

/-! ## A325038.P11465107045283573359

`A027434(A325044(n+1)²)`
-/

namespace A325038.P11465107045283573359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A325044 (n + 1) ^ 2).toNat

end

end A325038.P11465107045283573359

/-! ## A325038.P1869752322920977603

`A063655(A325044(n+1)²)`
-/

namespace A325038.P1869752322920977603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A325044 (n + 1) ^ 2).toNat

end

end A325038.P1869752322920977603

/-! ## A325038.P14768102542603031505

`A004275(A325044(n+1)+1)`
-/

namespace A325038.P14768102542603031505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A325044 (n + 1) + 1).toNat

end

end A325038.P14768102542603031505

/-!
# A325040: Heinz numbers of integer partitions with the same product of parts as their conjugate.

The programs for A325040, there is no canonical definition to state claims against.
-/

/-! ## A325040.P5972666934400360583

`eq[1, A353570(n+1)]+1`
-/

namespace A325040.P5972666934400360583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325040.P5972666934400360583

/-! ## A325040.P5631062366105087640

`filter[A316350(n+1), A353570(#)]`
-/

namespace A325040.P5631062366105087640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353570 (f1 j).toNat = 1) n)

end

end A325040.P5631062366105087640

/-! ## A325040.P4322636272148808459

`record[A000027(n+1)*A353570(n+1)]`
-/

namespace A325040.P4322636272148808459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A353570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325040.P4322636272148808459

/-! ## A325040.P6857911697645464829

`eq[A003963(n+1), A329382(n+1)]+1`
-/

namespace A325040.P6857911697645464829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325040.P6857911697645464829

/-! ## A325040.P12596363095053737985

`eq[A057427(n), A353570(A028310(n))]`
-/

namespace A325040.P12596363095053737985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353570 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325040.P12596363095053737985

/-! ## A325040.P12533812950390095202

`lt[A000038(n), A353570(A028310(n))]`
-/

namespace A325040.P12533812950390095202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353570 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325040.P12533812950390095202

/-! ## A325040.P5771456722715069580

`lt[A353570(n+2), A353570(A028310(n))]`
-/

namespace A325040.P5771456722715069580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353570 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353570 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325040.P5771456722715069580

/-! ## A325040.P14575778236815041471

`lt[A000038(n), A353570(A000038(n)+n)]`
-/

namespace A325040.P14575778236815041471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353570 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325040.P14575778236815041471

/-!
# A325041: Heinz numbers of integer partitions whose product of parts is one greater than their sum.

The programs for A325041, there is no canonical definition to state claims against.
-/

/-! ## A325041.P8802797761731985689

`A301988(n+1)/dr(A037074(n+1)-6)`
-/

namespace A325041.P8802797761731985689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301988 (n + 1) : ℚ) / (SequenceMachineLib.digitalRoot (A037074 (n + 1) - 6) : ℚ)

end

end A325041.P8802797761731985689

/-! ## A325041.P12816900886051336864

`A301988(n+1)/A291363(A008574(n))`
-/

namespace A325041.P12816900886051336864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301988 (n + 1) : ℚ) / (A291363 (A008574 n).toNat : ℚ)

end

end A325041.P12816900886051336864

/-! ## A325041.P9865320270649694359

`A301988(n+1)/A291363(A103517(n))`
-/

namespace A325041.P9865320270649694359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301988 (n + 1) : ℚ) / (A291363 (A103517 n).toNat : ℚ)

end

end A325041.P9865320270649694359

/-! ## A325041.P11363580769658831174

`A301988(n+1)/A291363(A025487(n+1))`
-/

namespace A325041.P11363580769658831174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301988 (n + 1) : ℚ) / (A291363 (A025487 (n + 1)).toNat : ℚ)

end

end A325041.P11363580769658831174

/-! ## A325041.P8506163915349322434

`A301988(n+1)/A291363(A181821(n+1))`
-/

namespace A325041.P8506163915349322434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301988 (n + 1) : ℚ) / (A291363 (A181821 (n + 1)).toNat : ℚ)

end

end A325041.P8506163915349322434

/-!
# A325042: Heinz numbers of integer partitions whose product of parts is one fewer than their sum.

The programs for A325042, there is no canonical definition to state claims against.
-/

/-! ## A325042.P3944429222330971716

`2*A301987(n+1)`
-/

namespace A325042.P3944429222330971716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301987 (n + 1)

end

end A325042.P3944429222330971716

/-! ## A325042.P5474465533334623959

`2*(lt[A325036(n+1)², 1]+1)`
-/

namespace A325042.P5474465533334623959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A325042.P5474465533334623959

/-! ## A325042.P11285915807595060364

`A004277(A301987(n+1))`
-/

namespace A325042.P11285915807595060364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A301987 (n + 1)).toNat

end

end A325042.P11285915807595060364

/-! ## A325042.P6033855075060588981

`A004275(A301987(n+1)+1)`
-/

namespace A325042.P6033855075060588981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A301987 (n + 1) + 1).toNat

end

end A325042.P6033855075060588981

/-! ## A325042.P10245371233103828422

`A051755(A301987(n+1)+1)`
-/

namespace A325042.P10245371233103828422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A301987 (n + 1) + 1).toNat

end

end A325042.P10245371233103828422

/-! ## A325042.P12791416264119179767

`A092535(A301987(n+1)+1)`
-/

namespace A325042.P12791416264119179767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (A301987 (n + 1) + 1).toNat

end

end A325042.P12791416264119179767

/-! ## A325042.P7478670554612620601

`A004271(A301987(n+1)+2)`
-/

namespace A325042.P7478670554612620601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A301987 (n + 1) + 2).toNat

end

end A325042.P7478670554612620601

/-! ## A325042.P15436090246532215854

`A004278(A301987(n+1)+2)`
-/

namespace A325042.P15436090246532215854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A301987 (n + 1) + 2).toNat

end

end A325042.P15436090246532215854

/-! ## A325042.P15175569921373156032

`A103517(A301987(n+1)-1)`
-/

namespace A325042.P15175569921373156032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A301987 (n + 1) - 1).toNat

end

end A325042.P15175569921373156032

/-! ## A325042.P11772295978752867752

`2*∩[A326149(n+1), A326155(n+1)]`
-/

namespace A325042.P11772295978752867752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325042.P11772295978752867752

/-!
# A325043: Heinz numbers of integer partitions, with at least three parts, whose product of parts is one fewer than their sum.

The programs for A325043, there is no canonical definition to state claims against.
-/

/-! ## A325043.P977222135842305127

`2*A301988(n+1)`
-/

namespace A325043.P977222135842305127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301988 (n + 1)

end

end A325043.P977222135842305127

/-! ## A325043.P1245573835895243917

`∑{e}[A247129(n+1), A301988(#+n)]`
-/

namespace A325043.P1245573835895243917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A301988 (Nat.factorization (f1 n).natAbs p + n)

end

end A325043.P1245573835895243917

/-! ## A325043.P413438105956287695

`∑{e}[A301991(n+1), A301988(#+n)]`
-/

namespace A325043.P413438105956287695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A301988 (Nat.factorization (f1 n).natAbs p + n)

end

end A325043.P413438105956287695

/-! ## A325043.P14130054968190093973

`A301988(n+1)+A301988(-xor(n, -1))`
-/

namespace A325043.P14130054968190093973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301988 (n + 1) + A301988 (-Int.xor (n : ℤ) (-1)).toNat

end

end A325043.P14130054968190093973

/-! ## A325043.P9928629084659812927

`∑{e}[A109373(n+1), A301988(n+1)/#]`
-/

namespace A325043.P9928629084659812927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A301988 (n + 1) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A325043.P9928629084659812927

/-!
# A325044: Heinz numbers of integer partitions whose sum of parts is greater than or equal to their product.

The programs for A325044, there is no canonical definition to state claims against.
-/

/-! ## A325044.P11577997386078807166

`A325038(n+1)/2`
-/

namespace A325044.P11577997386078807166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325038 (n + 1) : ℚ) / 2

end

end A325044.P11577997386078807166

/-! ## A325044.P950579853874898546

`lt[A325036(n+1), 1]+1`
-/

namespace A325044.P950579853874898546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325044.P950579853874898546

/-! ## A325044.P3873409796992261434

`comp[A325037(n+1)-1]+1`
-/

namespace A325044.P3873409796992261434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A325044.P3873409796992261434

/-! ## A325044.P15003881005039036081

`lt[A325036(n*a(gcd(2, n)-1)), 0]` with `a(0)=2, a(1)=2`
-/

namespace A325044.P15003881005039036081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  A325036 ((n : ℤ) * f1 (Nat.gcd 2 n - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325044.P15003881005039036081

/-! ## A325044.P12459616643663812781

`lt[A325036(A004277(n)), 0]`
-/

namespace A325044.P12459616643663812781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325044.P12459616643663812781

/-! ## A325044.P12882822273736206788

`lt[A325036(A028310(n)), 1]`
-/

namespace A325044.P12882822273736206788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325044.P12882822273736206788

/-! ## A325044.P8651202324655862970

`A020725(lt[A325036(n+1), 1])`
-/

namespace A325044.P8651202324655862970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A325044.P8651202324655862970

/-! ## A325044.P17269931480728870199

`∪[A301987(n+1), A325038(n+1)]`
-/

namespace A325044.P17269931480728870199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325044.P17269931480728870199

/-! ## A325044.P791676684252282150

`lt[A003963(n+1), A056239(n+1)+1]+1`
-/

namespace A325044.P791676684252282150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325044.P791676684252282150

/-!
# A325045: Number of factorizations of n whose conjugate as an integer partition has no ones.

The programs for A325045, there is no canonical definition to state claims against.
-/

/-! ## A325045.P14766456906617028104

`floor(A000188(n+1)/A327076(A007947(n+1)))`
-/

namespace A325045.P14766456906617028104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000188 (n + 1) : ℚ) / (A327076 (A007947 (n + 1)).toNat : ℚ)⌋

end

end A325045.P14766456906617028104

/-! ## A325045.P8398621017814179994

`A293234(A033286(n+1))-A056170(A253560(n+1))`
-/

namespace A325045.P8398621017814179994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A033286 (n + 1)).toNat - A056170 (A253560 (n + 1)).toNat

end

end A325045.P8398621017814179994

/-! ## A325045.P5988214092139256931

`C(A376657(n+1), A318651(A122111(n+1)))`
-/

namespace A325045.P5988214092139256931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A376657 (n + 1)).toNat (A318651 (A122111 (n + 1)).toNat).toNat

end

end A325045.P5988214092139256931

/-! ## A325045.P14717084076154852870

`∏{p}[A238745(A181821(n+1)), A352514(#)]`
-/

namespace A325045.P14717084076154852870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A181821 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A352514 p

end

end A325045.P14717084076154852870

/-! ## A325045.P16792584355801363098

`and(A376657(n+1), A379683(n))`
-/

namespace A325045.P16792584355801363098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A376657 (n + 1)) (A379683 n)

end

end A325045.P16792584355801363098

/-!
# A325046: G.f.: Sum_{n>=0} x^n * (1 + x^n)^n / (1 - x^(n+1))^(n+1).

The programs for A325046, there is no canonical definition to state claims against.
-/

/-! ## A325046.P648803179817559990

`A018302(A046854(n)+A002113(n+1))`
-/

namespace A325046.P648803179817559990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018302 (A046854 n + A002113 (n + 1)).toNat

end

end A325046.P648803179817559990

/-! ## A325046.P6845433873057339033

`A018302(A221114(n+1)+A165412(n+1))`
-/

namespace A325046.P6845433873057339033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018302 (A221114 (n + 1) + A165412 (n + 1)).toNat

end

end A325046.P6845433873057339033

/-! ## A325046.P10373115866416717515

`A018302(A221114(n+1)+A178858(n+1))`
-/

namespace A325046.P10373115866416717515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018302 (A221114 (n + 1) + A178858 (n + 1)).toNat

end

end A325046.P10373115866416717515

/-! ## A325046.P2287220631244167020

`A018302(A221114(n+1)+A178860(n+1))`
-/

namespace A325046.P2287220631244167020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018302 (A221114 (n + 1) + A178860 (n + 1)).toNat

end

end A325046.P2287220631244167020

/-! ## A325046.P11883412862634674962

`A018302(A221114(n+1)+A178862(n+1))`
-/

namespace A325046.P11883412862634674962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018302 (A221114 (n + 1) + A178862 (n + 1)).toNat

end

end A325046.P11883412862634674962

/-!
# A325047: Odd coefficients in Sum_{n>=0} x^n * (1 + x^n)^n / (1 - x^(n+1))^(n+1).

The programs for A325047, there is no canonical definition to state claims against.
-/

/-! ## A325047.P15866324102786327548

`A325046(n*(n+1))`
-/

namespace A325047.P15866324102786327548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325046 (n * (n + 1))

end

end A325047.P15866324102786327548

/-! ## A325047.P2370756263202656267

`or(1, A325046(n²+n))`
-/

namespace A325047.P2370756263202656267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A325046 (n ^ 2 + n))

end

end A325047.P2370756263202656267

/-! ## A325047.P13091359000072452317

`record[A005369(n)*A325046(n)]`
-/

namespace A325047.P13091359000072452317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A325046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325047.P13091359000072452317

/-! ## A325047.P2703492573293996910

`filter[A325046(n), A356172(#)]`
-/

namespace A325047.P2703492573293996910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A325047.P2703492573293996910

/-!
# A325050: a(n) = Product_{k=0..n} (k!^2 + 1).

The programs for A325050, there is no canonical definition to state claims against.
-/

/-! ## A325050.P13205270391474110924

`∏[n!²+1]`
-/

namespace A325050.P13205270391474110924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A325050.P13205270391474110924

/-! ## A325050.P10736297548770524360

`∏[n!^2+1]`
-/

namespace A325050.P10736297548770524360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A325050.P10736297548770524360

/-! ## A325050.P8184230218438844970

`∏[or(2, n!²)-1]`
-/

namespace A325050.P8184230218438844970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (Nat.factorial n ^ 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A325050.P8184230218438844970

/-! ## A325050.P8999897551233475256

`∏[xor(2, n!²)-1]`
-/

namespace A325050.P8999897551233475256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (Nat.factorial n ^ 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A325050.P8999897551233475256

/-! ## A325050.P16917643783170233083

`∏[-xor(-1, n!²)]`
-/

namespace A325050.P16917643783170233083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (Nat.factorial n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A325050.P16917643783170233083

/-!
# A325054: Sum of all compositions [c_1, c_2, ..., c_q] of n encoded as Product_{i=1..q} prime(i)^(c_i).

The programs for A325054, there is no canonical definition to state claims against.
-/

/-! ## A325054.P12692866366642829942

`A340288((n+1)^n+1)`
-/

namespace A325054.P12692866366642829942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340288 ((n + 1) ^ n + 1)

end

end A325054.P12692866366642829942

/-!
# A325056: Index of n-th low point in A076042.

The programs for A325056, there is no canonical definition to state claims against.
-/

/-! ## A325056.P6010573924521233437

`∑[A324792(n)]-A324792(n)`
-/

namespace A325056.P6010573924521233437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A324792 n

end

end A325056.P6010573924521233437

/-! ## A325056.P3868363770950592349

`lt[A076042(n), A168277(n+1)]`
-/

namespace A325056.P3868363770950592349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325056.P3868363770950592349

/-! ## A325056.P9229256526258032348

`lt[A076042(n), A189887(n+1)]`
-/

namespace A325056.P9229256526258032348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189887 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325056.P9229256526258032348

/-! ## A325056.P13974547063474084260

`∑[A279891(A229354(n))-1]-(A279891(A229354(n))-1)`
-/

namespace A325056.P13974547063474084260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (A229354 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A279891 (A229354 n).toNat - 1)

end

end A325056.P13974547063474084260

/-! ## A325056.P18251648439689246377

`∑[A131507(A171761(n))+4]-(A131507(A171761(n))+4)`
-/

namespace A325056.P18251648439689246377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A171761 n).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A131507 (A171761 n).toNat + 4)

end

end A325056.P18251648439689246377

/-!
# A325057: Number of positive integers k <= prime(n)# so that (k mod p_1) < (k mod p_2) < ... < (k mod p_n).

The programs for A325057, there is no canonical definition to state claims against.
-/

/-! ## A325057.P13546850266346659501

`A347205(A320877(n))`
-/

namespace A325057.P13546850266346659501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A320877 n).toNat

end

end A325057.P13546850266346659501

/-! ## A325057.P6622493998402195552

`A347205(A080355(n+1)-1)`
-/

namespace A325057.P6622493998402195552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A080355 (n + 1) - 1).toNat

end

end A325057.P6622493998402195552

/-! ## A325057.P2146727372110300659

`A324750(A006156(n))+A072851(2*n+3)`
-/

namespace A325057.P2146727372110300659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324750 (A006156 n).toNat + A072851 (2 * n + 3)

end

end A325057.P2146727372110300659

/-!
# A325058: Starts of runs of 7 consecutive exponentially odd numbers (A268335).

The programs for A325058, there is no canonical definition to state claims against.
-/

/-! ## A325058.P14018969385946224148

`A000010(A090784(n+1)^A090751(n+2)²)+5`
-/

namespace A325058.P14018969385946224148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A090784 (n + 1) : ℚ) ^ (A090751 (n + 2) ^ 2 : ℤ))).toNat + 5

end

end A325058.P14018969385946224148

/-!
# A325059: G.f.: Sum_{n>=0} x^n * (1 + (1+x)^n)^n / (1 - x*(1+x)^n)^(n+1).

The programs for A325059, there is no canonical definition to state claims against.
-/

/-! ## A325059.P14000583273721578844

`A274529(A369160(n))`
-/

namespace A325059.P14000583273721578844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274529 (A369160 n).toNat

end

end A325059.P14000583273721578844

/-! ## A325059.P17726264130560311065

`A008620(Δ[Δ[A006790(n)]])`
-/

namespace A325059.P17726264130560311065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006790 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (n + 1) - f1 n).toNat

end

end A325059.P17726264130560311065

/-!
# A325060: E.g.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * exp(n^2*x) / A(x)^n.

The programs for A325060, there is no canonical definition to state claims against.
-/

/-! ## A325060.P1926081678758329869

`A210436(A192804(n)*A218672(n))`
-/

namespace A325060.P1926081678758329869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210436 (A192804 n * A218672 n).toNat

end

end A325060.P1926081678758329869

/-! ## A325060.P12137250792726260009

`A188188(A113147(n))+A151950(A188188(2*n+5))`
-/

namespace A325060.P12137250792726260009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (A113147 n).toNat + A151950 (A188188 (2 * n + 5)).toNat

end

end A325060.P12137250792726260009

/-!
# A325061: E.g.f. A(x) satisfies: x = Sum_{n>=1} x^n * exp(n^2*x) / A(x)^n.

The programs for A325061, there is no canonical definition to state claims against.
-/

/-! ## A325061.P11949931791194889689

`A326841((n+1)!)`
-/

namespace A325061.P11949931791194889689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (Nat.factorial (n + 1))

end

end A325061.P11949931791194889689

/-!
# A325067: Prime numbers congruent to 1 modulo 16 representable by both x^2 + 32*y^2 and x^2 + 64*y^2.

The programs for A325067, there is no canonical definition to state claims against.
-/

/-! ## A325067.P14935425095007027715

`filter[A014754(n+1), A305994(#)]`
-/

namespace A325067.P14935425095007027715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A325067.P14935425095007027715

/-! ## A325067.P15627608836703894579

`filter[A040098(n+1), A305994(#)]`
-/

namespace A325067.P15627608836703894579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A325067.P15627608836703894579

/-! ## A325067.P16729088192635457742

`filter[A105389(n+1), A305994(#)]`
-/

namespace A325067.P16729088192635457742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A325067.P16729088192635457742

/-! ## A325067.P3091992600736578269

`∩[A014754(n+1), A158057(n)]`
-/

namespace A325067.P3091992600736578269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325067.P3091992600736578269

/-! ## A325067.P8116229456569621370

`∩[A040098(n+1), A158057(n)]`
-/

namespace A325067.P8116229456569621370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325067.P8116229456569621370

/-!
# A325068: Prime numbers congruent to 1 modulo 16 representable neither by x^2 + 32*y^2 nor by x^2 + 64*y^2.

The programs for A325068, there is no canonical definition to state claims against.
-/

/-! ## A325068.P7182999124487588826

`filter[A070179(n+1), A305994(#)]`
-/

namespace A325068.P7182999124487588826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A325068.P7182999124487588826

/-! ## A325068.P4087599526227028018

`filter[A121243(n+1), A305994(#)]`
-/

namespace A325068.P4087599526227028018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A325068.P4087599526227028018

/-! ## A325068.P4217646487551839100

`filter[A293394(n+2), A305994(#)]`
-/

namespace A325068.P4217646487551839100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A325068.P4217646487551839100

/-! ## A325068.P16098579933500851700

`∩[A040100(n+1), A158057(n)]`
-/

namespace A325068.P16098579933500851700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325068.P16098579933500851700

/-! ## A325068.P15496518353539611311

`∩[A070179(n+1), A158057(n)]`
-/

namespace A325068.P15496518353539611311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325068.P15496518353539611311

/-!
# A325069: Prime numbers congruent to 9 modulo 16 representable by x^2 + 32*y^2.

The programs for A325069, there is no canonical definition to state claims against.
-/

/-! ## A325069.P14281452092045593831

`filter[A070179(n+1), A144603(#)]`
-/

namespace A325069.P14281452092045593831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144603 (f1 j).toNat = 1) n)

end

end A325069.P14281452092045593831

/-! ## A325069.P10059630532576051914

`filter[A070179(n+1), A169672(#)]`
-/

namespace A325069.P10059630532576051914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169672 (f1 j).toNat = 1) n)

end

end A325069.P10059630532576051914

/-! ## A325069.P8903504237834828290

`filter[A105389(n+1), A144603(#)]`
-/

namespace A325069.P8903504237834828290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144603 (f1 j).toNat = 1) n)

end

end A325069.P8903504237834828290

/-! ## A325069.P10504684782973835073

`filter[A105389(n+1), A169672(#)]`
-/

namespace A325069.P10504684782973835073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169672 (f1 j).toNat = 1) n)

end

end A325069.P10504684782973835073

/-! ## A325069.P6677388673178991436

`filter[A133204(n+1), A144603(#)]`
-/

namespace A325069.P6677388673178991436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144603 (f1 j).toNat = 1) n)

end

end A325069.P6677388673178991436

/-!
# A325070: Prime numbers congruent to 9 modulo 16 representable by x^2 + 64*y^2.

The programs for A325070, there is no canonical definition to state claims against.
-/

/-! ## A325070.P8052450360244635961

`filter[A014754(n+1), A144603(#)]`
-/

namespace A325070.P8052450360244635961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144603 (f1 j).toNat = 1) n)

end

end A325070.P8052450360244635961

/-! ## A325070.P12775011694980082713

`filter[A014754(n+1), A169672(#)]`
-/

namespace A325070.P12775011694980082713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169672 (f1 j).toNat = 1) n)

end

end A325070.P12775011694980082713

/-! ## A325070.P3969086767751924002

`filter[A121243(n+1), A144603(#)]`
-/

namespace A325070.P3969086767751924002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144603 (f1 j).toNat = 1) n)

end

end A325070.P3969086767751924002

/-! ## A325070.P1467602635254544169

`filter[A121243(n+1), A169672(#)]`
-/

namespace A325070.P1467602635254544169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169672 (f1 j).toNat = 1) n)

end

end A325070.P1467602635254544169

/-! ## A325070.P10161179117783155218

`∩[A014754(n+1), A049638(n)]`
-/

namespace A325070.P10161179117783155218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325070.P10161179117783155218

/-!
# A325071: Prime numbers congruent to 1 modulo 20 representable by both x^2 + 20*y^2 and x^2 + 100*y^2.

The programs for A325071, there is no canonical definition to state claims against.
-/

/-! ## A325071.P4716498218520753164

`filter[A047650(n), A112713(#)]`
-/

namespace A325071.P4716498218520753164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A325071.P4716498218520753164

/-! ## A325071.P12874187021700337158

`filter[A047650(n), A185705(#)]`
-/

namespace A325071.P12874187021700337158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A325071.P12874187021700337158

/-! ## A325071.P2901233430927400354

`∩[A016861(n), A047650(n)]`
-/

namespace A325071.P2901233430927400354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325071.P2901233430927400354

/-! ## A325071.P16384402391622645294

`∩[A017281(n), A047650(n)]`
-/

namespace A325071.P16384402391622645294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325071.P16384402391622645294

/-! ## A325071.P9233212838392878458

`∩[A047650(n), A100531(n)]`
-/

namespace A325071.P9233212838392878458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100531 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325071.P9233212838392878458

/-!
# A325072: Prime numbers congruent to 1 modulo 20 neither representable by x^2 + 20*y^2 nor by x^2 + 100*y^2.

The programs for A325072, there is no canonical definition to state claims against.
-/

/-! ## A325072.P3974484424367459100

`p?[A079356(A107218(n+1))]`
-/

namespace A325072.P3974484424367459100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079356 (A107218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A325072.P3974484424367459100

/-! ## A325072.P9756271556026320308

`filter[A107218(n+1), A112713(#)]`
-/

namespace A325072.P9756271556026320308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A325072.P9756271556026320308

/-! ## A325072.P15202386649686509199

`filter[A106963(n+1), A185705(#)]`
-/

namespace A325072.P15202386649686509199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A325072.P15202386649686509199

/-! ## A325072.P10788676102636885685

`filter[A107218(n+1), A185705(#)]`
-/

namespace A325072.P10788676102636885685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A325072.P10788676102636885685

/-! ## A325072.P5049141010166751650

`filter[A106963(n+2), A112713(#)]`
-/

namespace A325072.P5049141010166751650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A325072.P5049141010166751650

/-!
# A325073: Prime numbers congruent to 9 modulo 20 representable by x^2 + 20*y^2.

The programs for A325073, there is no canonical definition to state claims against.
-/

/-! ## A325073.P2168000146299769754

`filter[A047650(n), A011658(#)]`
-/

namespace A325073.P2168000146299769754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011658 (f1 j).toNat = 1) n)

end

end A325073.P2168000146299769754

/-! ## A325073.P15180051817213951623

`filter[A047650(n), A144597(#)]`
-/

namespace A325073.P15180051817213951623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144597 (f1 j).toNat = 1) n)

end

end A325073.P15180051817213951623

/-! ## A325073.P5077187374175309745

`filter[A047650(n), A185709(#)]`
-/

namespace A325073.P5077187374175309745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A325073.P5077187374175309745

/-! ## A325073.P11223101542911227627

`∩[A016897(n), A047650(n)]`
-/

namespace A325073.P11223101542911227627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325073.P11223101542911227627

/-! ## A325073.P2464320026919576142

`∩[A017377(n), A047650(n)]`
-/

namespace A325073.P2464320026919576142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325073.P2464320026919576142

/-!
# A325074: Prime numbers congruent to 9 modulo 20 representable by x^2 + 100*y^2.

The programs for A325074, there is no canonical definition to state claims against.
-/

/-! ## A325074.P708042211026282571

`filter[A106963(n+1), A011658(#)]`
-/

namespace A325074.P708042211026282571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011658 (f1 j).toNat = 1) n)

end

end A325074.P708042211026282571

/-! ## A325074.P1766938748862824702

`filter[A107219(n+1), A011658(#)]`
-/

namespace A325074.P1766938748862824702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011658 (f1 j).toNat = 1) n)

end

end A325074.P1766938748862824702

/-! ## A325074.P8980097628671177379

`filter[A106963(n+1), A144597(#)]`
-/

namespace A325074.P8980097628671177379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144597 (f1 j).toNat = 1) n)

end

end A325074.P8980097628671177379

/-! ## A325074.P14709676973522414652

`filter[A107219(n+1), A144597(#)]`
-/

namespace A325074.P14709676973522414652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144597 (f1 j).toNat = 1) n)

end

end A325074.P14709676973522414652

/-! ## A325074.P6264063245223069878

`filter[A106963(n+1), A185709(#)]`
-/

namespace A325074.P6264063245223069878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A325074.P6264063245223069878

/-!
# A325075: Prime numbers congruent to 1, 16 or 22 modulo 39 representable by both x^2 + x*y + 10*y^2 and x^2 + x*y + 127*y^2.

The programs for A325075, there is no canonical definition to state claims against.
-/

/-! ## A325075.P17655804118683366686

`∩[A033227(n+1), A092476(n+1)]`
-/

namespace A325075.P17655804118683366686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325075.P17655804118683366686

/-!
# A325076: Prime numbers congruent to 1, 16 or 22 modulo 39 neither representable by x^2 + x*y + 10*y^2 nor by x^2 + x*y + 127*y^2.

The programs for A325076, there is no canonical definition to state claims against.
-/

/-! ## A325076.P8590987754727233448

`A272406(A335192(2*n+7)-A302246(n+1))`
-/

namespace A325076.P8590987754727233448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272406 (A335192 (2 * n + 7) - A302246 (n + 1)).toNat

end

end A325076.P8590987754727233448

/-!
# A325077: Prime numbers congruent to 4, 10 or 25 modulo 39 representable by x^2 + x*y + 10*y^2.

The programs for A325077, there is no canonical definition to state claims against.
-/

/-! ## A325077.P212097167353490717

`filter[A033227(n+1), A144599(#)]`
-/

namespace A325077.P212097167353490717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144599 (f1 j).toNat = 1) n)

end

end A325077.P212097167353490717

/-! ## A325077.P15136119327060818135

`∩[A106888(n+1), A196670(n+1)]`
-/

namespace A325077.P15136119327060818135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325077.P15136119327060818135

/-!
# A325078: Prime numbers congruent to 4, 10 or 25 modulo 39 representable by x^2 + x*y + 127*y^2.

The programs for A325078, there is no canonical definition to state claims against.
-/

/-! ## A325078.P12327329521027490506

`filter[A106884(n+1), A144599(#)]`
-/

namespace A325078.P12327329521027490506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144599 (f1 j).toNat = 1) n)

end

end A325078.P12327329521027490506

/-!
# A325079: Prime numbers congruent to 1, 16, 26, 31 or 36 modulo 55 representable by both x^2 + x*y + 14*y^2 and x^2 + x*y + 69*y^2.

The programs for A325079, there is no canonical definition to state claims against.
-/

/-! ## A325079.P4154314755909690316

`filter[A033235(n+1), A112713(#)]`
-/

namespace A325079.P4154314755909690316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A325079.P4154314755909690316

/-! ## A325079.P12082900467276075670

`filter[A033235(n+1), A185705(#)]`
-/

namespace A325079.P12082900467276075670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A325079.P12082900467276075670

/-! ## A325079.P9752418227131637846

`∩[A033235(n+1), A016861(n)]`
-/

namespace A325079.P9752418227131637846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325079.P9752418227131637846

/-! ## A325079.P17947246744460246398

`∩[A033235(n+1), A017281(n)]`
-/

namespace A325079.P17947246744460246398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325079.P17947246744460246398

/-! ## A325079.P7058584519321743668

`∩[A033235(n+1), A103486(n)]`
-/

namespace A325079.P7058584519321743668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325079.P7058584519321743668

/-!
# A325080: Prime numbers congruent to 1, 16, 26, 31 or 36 modulo 55 neither representable by x^2 + x*y + 14*y^2 nor by x^2 + x*y + 69*y^2.

The programs for A325080, there is no canonical definition to state claims against.
-/

/-! ## A325080.P10605539676976460213

`filter[A106908(n+3), A112713(#)]`
-/

namespace A325080.P10605539676976460213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A325080.P10605539676976460213

/-! ## A325080.P14253441859984259143

`filter[A106908(n+3), A185705(#)]`
-/

namespace A325080.P14253441859984259143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A325080.P14253441859984259143

/-! ## A325080.P3363043681100937883

`∩[A106908(n+1), A103486(n+2)]`
-/

namespace A325080.P3363043681100937883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103486 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325080.P3363043681100937883

/-! ## A325080.P2658534672266320494

`∩[A106908(n+1), A016861(n+4)]`
-/

namespace A325080.P2658534672266320494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325080.P2658534672266320494

/-! ## A325080.P17903114459174663561

`∩[A017377(n)+12, A106908(n+2)]`
-/

namespace A325080.P17903114459174663561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325080.P17903114459174663561

/-!
# A325081: Prime numbers congruent to 4, 9, 14, 34 or 49 modulo 55 representable by x^2 + x*y + 14*y^2.

The programs for A325081, there is no canonical definition to state claims against.
-/

/-! ## A325081.P4099848771422090807

`filter[A033235(n+1), A011658(#)]`
-/

namespace A325081.P4099848771422090807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011658 (f1 j).toNat = 1) n)

end

end A325081.P4099848771422090807

/-! ## A325081.P3415058074646644505

`filter[A033235(n+1), A144597(#)]`
-/

namespace A325081.P3415058074646644505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144597 (f1 j).toNat = 1) n)

end

end A325081.P3415058074646644505

/-! ## A325081.P12495778403803694530

`filter[A033235(n+1), A185709(#)]`
-/

namespace A325081.P12495778403803694530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A325081.P12495778403803694530

/-! ## A325081.P16397058173842352654

`∩[A033235(n+1), A016897(n)]`
-/

namespace A325081.P16397058173842352654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325081.P16397058173842352654

/-! ## A325081.P7523282459114546589

`∩[A033235(n+1), A017377(n)]`
-/

namespace A325081.P7523282459114546589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325081.P7523282459114546589

/-!
# A325082: Prime numbers congruent to 4, 9, 14, 34 or 49 modulo 55 representable by x^2 + x*y + 69*y^2.

The programs for A325082, there is no canonical definition to state claims against.
-/

/-! ## A325082.P2882347775154278601

`filter[A106908(n+1), A011658(#)]`
-/

namespace A325082.P2882347775154278601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011658 (f1 j).toNat = 1) n)

end

end A325082.P2882347775154278601

/-! ## A325082.P12604210066050596459

`filter[A106908(n+1), A144597(#)]`
-/

namespace A325082.P12604210066050596459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144597 (f1 j).toNat = 1) n)

end

end A325082.P12604210066050596459

/-! ## A325082.P467018526047593164

`filter[A106908(n+1), A185709(#)]`
-/

namespace A325082.P467018526047593164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A325082.P467018526047593164

/-! ## A325082.P15895873388208904632

`∩[A106908(n+1), A016897(n)]`
-/

namespace A325082.P15895873388208904632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325082.P15895873388208904632

/-! ## A325082.P14777384045915785724

`∩[A106908(n+1), A017377(n)]`
-/

namespace A325082.P14777384045915785724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325082.P14777384045915785724

/-!
# A325083: Prime numbers congruent to 1, 65 or 81 modulo 112 representable by both x^2 + 14*y^2 and x^2 + 448*y^2.

The programs for A325083, there is no canonical definition to state claims against.
-/

/-! ## A325083.P8527219737463395060

`∩[A033211(n+1), A158057(n)]`
-/

namespace A325083.P8527219737463395060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325083.P8527219737463395060

/-! ## A325083.P8091440536993122421

`∩[A107164(n+1), A158057(n)]`
-/

namespace A325083.P8091440536993122421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325083.P8091440536993122421

/-! ## A325083.P7589604443077865701

`∩[A107164(n+1), A273312(n)]`
-/

namespace A325083.P7589604443077865701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325083.P7589604443077865701

/-! ## A325083.P4078873105722437283

`∩[A033211(n+1), A094407(n+1)]`
-/

namespace A325083.P4078873105722437283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325083.P4078873105722437283

/-! ## A325083.P10594138863131417350

`∩[A094407(n+1), A107164(n+1)]`
-/

namespace A325083.P10594138863131417350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325083.P10594138863131417350

/-!
# A325084: Prime numbers congruent to 1, 65 or 81 modulo 112 neither representable by x^2 + 14*y^2 nor by x^2 + 448*y^2.

The programs for A325084, there is no canonical definition to state claims against.
-/

/-! ## A325084.P16025009207856225569

`∩[A106917(n+1), A158057(n)]`
-/

namespace A325084.P16025009207856225569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325084.P16025009207856225569

/-! ## A325084.P3999585323195270464

`∩[A020675(n+1), A094407(n+1)]`
-/

namespace A325084.P3999585323195270464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325084.P3999585323195270464

/-! ## A325084.P7450546849840016095

`∩[A094407(n+1), A106917(n+1)]`
-/

namespace A325084.P7450546849840016095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325084.P7450546849840016095

/-! ## A325084.P16540107571149020311

`∩[A106917(n+1), A151977(n+1)]`
-/

namespace A325084.P16540107571149020311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325084.P16540107571149020311

/-! ## A325084.P4884634439198083196

`∩[A106917(n+1), A247061(n+1)]`
-/

namespace A325084.P4884634439198083196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325084.P4884634439198083196

/-!
# A325085: Prime numbers congruent to 9, 25 or 57 modulo 112 representable by x^2 + 14*y^2.

The programs for A325085, there is no canonical definition to state claims against.
-/

/-! ## A325085.P11998113334822711593

`∩[A107164(n+1), A273420(n)]`
-/

namespace A325085.P11998113334822711593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273420 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325085.P11998113334822711593

/-! ## A325085.P8612115635223946971

`∩[A107164(n+1), A273834(n)]`
-/

namespace A325085.P8612115635223946971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273834 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325085.P8612115635223946971

/-! ## A325085.P9999418106661077298

`∩[A033211(n+1), A105126(n+1)]`
-/

namespace A325085.P9999418106661077298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325085.P9999418106661077298

/-! ## A325085.P10026778181038096192

`∩[A105126(n+1), A107164(n+1)]`
-/

namespace A325085.P10026778181038096192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325085.P10026778181038096192

/-! ## A325085.P1342252573218047446

`∩[A107164(n+1), A273312(n)+2]`
-/

namespace A325085.P1342252573218047446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273312 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325085.P1342252573218047446

/-!
# A325086: Prime numbers congruent to 9, 25 or 57 modulo 112 representable by x^2 + 448*y^2.

The programs for A325086, there is no canonical definition to state claims against.
-/

/-! ## A325086.P18058763845319639187

`∩[A020675(n+1), A105126(n+1)]`
-/

namespace A325086.P18058763845319639187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325086.P18058763845319639187

/-! ## A325086.P4687973879569816993

`∩[A105126(n+1), A106917(n+1)]`
-/

namespace A325086.P4687973879569816993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325086.P4687973879569816993

/-! ## A325086.P13980461832697272302

`∩[A273834(2*n), A106917(n+1)]`
-/

namespace A325086.P13980461832697272302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273834 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325086.P13980461832697272302

/-! ## A325086.P1723035736338188502

`∩[A004273(A047599(2*(n+1))), A106917(n+1)]`
-/

namespace A325086.P1723035736338188502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047599 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325086.P1723035736338188502

/-!
# A325088: Prime numbers congruent to 1 or 169 modulo 240 representable neither by x^2 + 150*y^2 nor by x^2 + 960*y^2.

The programs for A325088, there is no canonical definition to state claims against.
-/

/-! ## A325088.P8945955082109305816

`p?[A151509(n)*A227863(n+1)]`
-/

namespace A325088.P8945955082109305816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151509 n * A227863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A325088.P8945955082109305816

/-!
# A325090: Prime numbers congruent to 49 or 121 modulo 240 representable by x^2 + 960*y^2.

The programs for A325090, there is no canonical definition to state claims against.
-/

/-! ## A325090.P2314412499757378145

`A139502(eq[3, A155043(n)])`
-/

namespace A325090.P2314412499757378145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325090.P2314412499757378145

/-!
# A325091: Heinz numbers of integer partitions of powers of 2.

The programs for A325091, there is no canonical definition to state claims against.
-/

/-! ## A325091.P12165967848915227503

`lt[∏{p}[A056239(n+1), #], 3]+1`
-/

namespace A325091.P12165967848915227503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A325091.P12165967848915227503

/-! ## A325091.P11017719524520240045

`eq[0, A276167(A056239(n+1))]+1`
-/

namespace A325091.P11017719524520240045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276167 (A056239 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325091.P11017719524520240045

/-! ## A325091.P6210620060247710902

`eq[1, A294442(A056239(n+1)²)]+1`
-/

namespace A325091.P6210620060247710902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (A056239 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325091.P6210620060247710902

/-! ## A325091.P3166366248110877818

`record[A103517(n)/A001316(A056239(n+1))]`
-/

namespace A325091.P3166366248110877818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A001316 (A056239 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325091.P3166366248110877818

/-! ## A325091.P9919076972064907649

`record[A000027(n+1)/A294442(A056239(n+1))]`
-/

namespace A325091.P9919076972064907649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A294442 (A056239 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325091.P9919076972064907649

/-! ## A325091.P18078816254793498468

`record[(1-A001489(n))/A294442(A056239(n+1)²)]`
-/

namespace A325091.P18078816254793498468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n : ℚ) / (A294442 (A056239 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325091.P18078816254793498468

/-!
# A325092: Heinz numbers of integer partitions of powers of 2 into powers of 2.

The programs for A325092, there is no canonical definition to state claims against.
-/

/-! ## A325092.P1977172406993509341

`∩[A318400(n+1), A325091(n+1)]`
-/

namespace A325092.P1977172406993509341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325092.P1977172406993509341

/-! ## A325092.P10012907266277829315

`∩[A325091(n+1), A326841(n+1)]`
-/

namespace A325092.P10012907266277829315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325092.P10012907266277829315

/-! ## A325092.P7442250630069320378

`∩[A325091(n+1), A342339(n+1)]`
-/

namespace A325092.P7442250630069320378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325092.P7442250630069320378

/-! ## A325092.P383174564789704652

`∩[A325097(n+1), A325091(A325114(n+1))]`
-/

namespace A325092.P383174564789704652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325091 (A325114 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325092.P383174564789704652

/-! ## A325092.P2746219937207613851

`A115180(A002984(n)*A115205(n))`
-/

namespace A325092.P2746219937207613851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A002984 n * A115205 n).toNat

end

end A325092.P2746219937207613851

/-!
# A325093: Heinz numbers of integer partitions into distinct powers of 2.

The programs for A325093, the canonical program `A325093.P294070785817657769` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325093 has offset 1).

The definition of A325093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325093.P294070785817657769

`record[A007913(A318400(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A325093

/-- `record[A007913(A318400(n+1))]` -/
def P294070785817657769.Spec : Prop :=
  ∀ n, P294070785817657769.a n = A325093 (n + 1)

theorem P294070785817657769.correct : P294070785817657769.Spec := by
  intro n
  simp only [A325093, Nat.add_sub_cancel]

end A325093

/-! ## A325093.P5159422077586047022

`filter[A318400(n+1), A008966(#)]`
-/

namespace A325093.P5159422077586047022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A325093.P5159422077586047022

namespace A325093

/-- `filter[A318400(n+1), A008966(#)]` -/
def P5159422077586047022.Spec : Prop :=
  ∀ n, P5159422077586047022.a n = A325093 (n + 1)

end A325093

/-! ## A325093.P17470628693834905554

`∩[A274546(n+1), A318400(n+1)]`
-/

namespace A325093.P17470628693834905554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325093.P17470628693834905554

namespace A325093

/-- `∩[A274546(n+1), A318400(n+1)]` -/
def P17470628693834905554.Spec : Prop :=
  ∀ n, (P17470628693834905554.a n : ℤ) = A325093 (n + 1)

end A325093

/-! ## A325093.P9227857980572412230

`∩[A318400(n+1), A366641(n+1)]`
-/

namespace A325093.P9227857980572412230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325093.P9227857980572412230

namespace A325093

/-- `∩[A318400(n+1), A366641(n+1)]` -/
def P9227857980572412230.Spec : Prop :=
  ∀ n, (P9227857980572412230.a n : ℤ) = A325093 (n + 1)

end A325093

/-! ## A325093.P10950583101667177347

`∩[A318400(n+1), A326535(n+1)]`
-/

namespace A325093.P10950583101667177347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325093.P10950583101667177347

namespace A325093

/-- `∩[A318400(n+1), A326535(n+1)]` -/
def P10950583101667177347.Spec : Prop :=
  ∀ n, (P10950583101667177347.a n : ℤ) = A325093 (n + 1)

end A325093

/-! ## A325093.P5845038856528077569

`∩[A005117(n+1), A318400(n+1)]`
-/

namespace A325093.P5845038856528077569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325093.P5845038856528077569

namespace A325093

/-- `∩[A005117(n+1), A318400(n+1)]` -/
def P5845038856528077569.Spec : Prop :=
  ∀ n, (P5845038856528077569.a n : ℤ) = A325093 (n + 1)

end A325093

/-! ## A325093.P17009015733808084394

`∩[A193304(n+1), A318400(n+1)]`
-/

namespace A325093.P17009015733808084394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325093.P17009015733808084394

namespace A325093

/-- `∩[A193304(n+1), A318400(n+1)]` -/
def P17009015733808084394.Spec : Prop :=
  ∀ n, (P17009015733808084394.a n : ℤ) = A325093 (n + 1)

end A325093

/-! ## A325093.P16751554387738359312

`lt[0, char[A325094(n)]]`
-/

namespace A325093.P16751554387738359312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325093.P16751554387738359312

namespace A325093

/-- `lt[0, char[A325094(n)]]` -/
def P16751554387738359312.Spec : Prop :=
  ∀ n, (P16751554387738359312.a n : ℤ) = A325093 (n + 1)

end A325093

/-! ## A325093.P13462021023312314084

`record[A007913(n+1)/A003963(A003963(n+1))]`
-/

namespace A325093.P13462021023312314084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A003963 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325093.P13462021023312314084

namespace A325093

/-- `record[A007913(n+1)/A003963(A003963(n+1))]` -/
def P13462021023312314084.Spec : Prop :=
  ∀ n, P13462021023312314084.a n = (A325093 (n + 1) : ℚ)

end A325093

/-! ## A325093.P14505186738782087055

`record[A007947(n+1)/A003963(A003963(n+1))]`
-/

namespace A325093.P14505186738782087055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A003963 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325093.P14505186738782087055

namespace A325093

/-- `record[A007947(n+1)/A003963(A003963(n+1))]` -/
def P14505186738782087055.Spec : Prop :=
  ∀ n, P14505186738782087055.a n = (A325093 (n + 1) : ℚ)

end A325093

/-!
# A325094: Write n as a sum of distinct powers of 2, then take the primes of those powers of 2 and multiply them together.

The programs for A325094, there is no canonical definition to state claims against.
-/

/-! ## A325094.P3732565844102348520

`A019565(A253317(n+1))`
-/

namespace A325094.P3732565844102348520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A253317 (n + 1)).toNat

end

end A325094.P3732565844102348520

/-! ## A325094.P15658826145956961836

`A019565(∑{p}[A019565(n), A059884(#)])`
-/

namespace A325094.P15658826145956961836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A059884 p).toNat

end

end A325094.P15658826145956961836

/-! ## A325094.P9794553485668956761

`A019565(∑{p}[A019565(n), A331312(#)])`
-/

namespace A325094.P9794553485668956761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331312 p).toNat

end

end A325094.P9794553485668956761

/-! ## A325094.P5742625212285739534

`A364925(A001317(n))`
-/

namespace A325094.P5742625212285739534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364925 (A001317 n).toNat

end

end A325094.P5742625212285739534

/-! ## A325094.P14177556204229257729

`A364925(A053576(n))`
-/

namespace A325094.P14177556204229257729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364925 (A053576 n).toNat

end

end A325094.P14177556204229257729

/-!
# A325095: Number of subsets of {1...n} with no binary carries.

The programs for A325095, the canonical program `A325095.P4478772866640746713` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325095 has offset 0).

The definition of A325095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325095.P4478772866640746713

`a(n-1)+a(A115378(n))` with `a(0)=1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A325095

/-- `a(n-1)+a(A115378(n))` -/
def P4478772866640746713.Spec : Prop :=
  ∀ n, (P4478772866640746713.a n : ℤ) = A325095 n

theorem P4478772866640746713.correct : P4478772866640746713.Spec := by
  intro n
  simp only [A325095]

end A325095

/-! ## A325095.P10895355394112831190

`a(n-1)+a(A080100(n)-1)` with `a(0)=1`
-/

namespace A325095.P10895355394112831190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A080100 n - 1).toNat

end

end A325095.P10895355394112831190

namespace A325095

/-- `a(n-1)+a(A080100(n)-1)` -/
def P10895355394112831190.Spec : Prop :=
  ∀ n, (P10895355394112831190.a n : ℤ) = A325095 n

end A325095

/-! ## A325095.P13541830638631094762

`∑[A000110(A008687(n+1))]`
-/

namespace A325095.P13541830638631094762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A008687 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325095.P13541830638631094762

namespace A325095

/-- `∑[A000110(A008687(n+1))]` -/
def P13541830638631094762.Spec : Prop :=
  ∀ n, P13541830638631094762.a n = A325095 n

end A325095

/-! ## A325095.P4396186997999762956

`∑[A000110(A080791(n)+1)]`
-/

namespace A325095.P4396186997999762956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A080791 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325095.P4396186997999762956

namespace A325095

/-- `∑[A000110(A080791(n)+1)]` -/
def P4396186997999762956.Spec : Prop :=
  ∀ n, P4396186997999762956.a n = A325095 n

end A325095

/-! ## A325095.P1025291744449661520

`∑[A000110(A023416(n)+1)]-1`
-/

namespace A325095.P1025291744449661520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A023416 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325095.P1025291744449661520

namespace A325095

/-- `∑[A000110(A023416(n)+1)]-1` -/
def P1025291744449661520.Spec : Prop :=
  ∀ n, P1025291744449661520.a n = A325095 n

end A325095

/-! ## A325095.P3123664074932024768

`∑[A000110(A023416(2*n))]`
-/

namespace A325095.P3123664074932024768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A023416 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325095.P3123664074932024768

namespace A325095

/-- `∑[A000110(A023416(2*n))]` -/
def P3123664074932024768.Spec : Prop :=
  ∀ n, P3123664074932024768.a n = A325095 n

end A325095

/-! ## A325095.P6588105239387950982

`∑[A000110(A080791(2*n))]`
-/

namespace A325095.P6588105239387950982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A080791 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325095.P6588105239387950982

namespace A325095

/-- `∑[A000110(A080791(2*n))]` -/
def P6588105239387950982.Spec : Prop :=
  ∀ n, P6588105239387950982.a n = A325095 n

end A325095

/-! ## A325095.P17179974713860358816

`∑[A050315(A080100(2*n)-1)]`
-/

namespace A325095.P17179974713860358816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A080100 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325095.P17179974713860358816

namespace A325095

/-- `∑[A050315(A080100(2*n)-1)]` -/
def P17179974713860358816.Spec : Prop :=
  ∀ n, P17179974713860358816.a n = A325095 n

end A325095

/-! ## A325095.P1029015752760431721

`∑[A050315(A115378(A080100(2*n)))]`
-/

namespace A325095.P1029015752760431721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A115378 (A080100 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325095.P1029015752760431721

namespace A325095

/-- `∑[A050315(A115378(A080100(2*n)))]` -/
def P1029015752760431721.Spec : Prop :=
  ∀ n, P1029015752760431721.a n = A325095 n

end A325095

/-! ## A325095.P17589383275344629843

`∑[A000110(A001222(A163511(n)))]`
-/

namespace A325095.P17589383275344629843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A001222 (A163511 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325095.P17589383275344629843

namespace A325095

/-- `∑[A000110(A001222(A163511(n)))]` -/
def P17589383275344629843.Spec : Prop :=
  ∀ n, P17589383275344629843.a n = A325095 n

end A325095

/-!
# A325096: Number of maximal subsets of {1...n} with no binary carries.

The programs for A325096, there is no canonical definition to state claims against.
-/

/-! ## A325096.P6248451690691290272

`∑[A109036(A000120(n)^A080100(n))]`
-/

namespace A325096.P6248451690691290272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109036 (SequenceMachineLib.roundAway ((A000120 n : ℚ) ^ (A080100 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325096.P6248451690691290272

/-!
# A325097: Heinz numbers of integer partitions whose distinct parts have no binary carries.

The programs for A325097, there is no canonical definition to state claims against.
-/

/-! ## A325097.P1994827257677436683

`eq[2, A020639(A318762(∏{p}[n+1, #])+3)]+1`
-/

namespace A325097.P1994827257677436683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A318762 (∏ p ∈ Nat.primeFactors (f3 n), p) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325097.P1994827257677436683

/-! ## A325097.P16243173192499637024

`A371455(n+1)%A325552(n+2)`
-/

namespace A325097.P16243173192499637024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371455 (n + 1)) (A325552 (n + 2))

end

end A325097.P16243173192499637024

/-! ## A325097.P6085483758537965888

`A371455(n+1)%A173294(A241415(n))`
-/

namespace A325097.P6085483758537965888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371455 (n + 1)) (A173294 (A241415 n).toNat)

end

end A325097.P6085483758537965888

/-! ## A325097.P11325116926164221536

`A257990(A158714(n+1))*A371455(n+1)`
-/

namespace A325097.P11325116926164221536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A158714 (n + 1)).toNat * A371455 (n + 1)

end

end A325097.P11325116926164221536

/-! ## A325097.P15854420152257404483

`A371455(n+1)+A248517(A328169(2*(n+1)))`
-/

namespace A325097.P15854420152257404483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371455 (n + 1) + A248517 (A328169 (2 * (n + 1))).toNat

end

end A325097.P15854420152257404483

