import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B005.C000
import Seq.B005.C001
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
# A227703: The Wiener index of the zig-zag polyhex nanotube TUHC_6[2n,2] defined pictorially in Fig. 1 of the Eliasi et al. reference.

The programs for A227703, the canonical program `A227703.P9864661244176835042` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227703 has offset 2).

The definition of A227703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227703.P9864661244176835042

`2*(n+2)*(1+2*(n+2)+2*(n+2)²)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227703

/-- `2*(n+2)*(1+2*(n+2)+2*(n+2)²)` -/
def P9864661244176835042.Spec : Prop :=
  ∀ n, (P9864661244176835042.a n : ℤ) = A227703 (n + 2)

theorem P9864661244176835042.correct : P9864661244176835042.Spec := by
  intro n
  simp only [A227703, Nat.add_sub_cancel]

end A227703

/-! ## A227703.P2684790140444575890

`lcm(n+2, Δ[(n+2)²]²)+n+2`
-/

namespace A227703.P2684790140444575890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) + (n + 2)

end

end A227703.P2684790140444575890

namespace A227703

/-- `lcm(n+2, Δ[(n+2)²]²)+n+2` -/
def P2684790140444575890.Spec : Prop :=
  ∀ n, (P2684790140444575890.a n : ℤ) = A227703 (n + 2)

end A227703

/-! ## A227703.P7527283633320772100

`(2*n+5)*C(2*n+5, 2)+n+2`
-/

namespace A227703.P7527283633320772100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 5) * Nat.choose (2 * n + 5) 2 + n + 2

end

end A227703.P7527283633320772100

namespace A227703

/-- `(2*n+5)*C(2*n+5, 2)+n+2` -/
def P7527283633320772100.Spec : Prop :=
  ∀ n, (P7527283633320772100.a n : ℤ) = A227703 (n + 2)

end A227703

/-! ## A227703.P4366114634647061988

`Δ[2*∑[A048395(n+1)]]`
-/

namespace A227703.P4366114634647061988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227703.P4366114634647061988

namespace A227703

/-- `Δ[2*∑[A048395(n+1)]]` -/
def P4366114634647061988.Spec : Prop :=
  ∀ n, P4366114634647061988.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P10315788923439659221

`Δ[A093119(n+1)]-(n+3)`
-/

namespace A227703.P10315788923439659221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 3 : ℤ)

end

end A227703.P10315788923439659221

namespace A227703

/-- `Δ[A093119(n+1)]-(n+3)` -/
def P10315788923439659221.Spec : Prop :=
  ∀ n, P10315788923439659221.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P4580142357789068165

`abs(A046092(n+2)-Δ[(n+2)²²])-1`
-/

namespace A227703.P4580142357789068165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046092 (n + 2) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))| - 1

end

end A227703.P4580142357789068165

namespace A227703

/-- `abs(A046092(n+2)-Δ[(n+2)²²])-1` -/
def P4580142357789068165.Spec : Prop :=
  ∀ n, P4580142357789068165.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P7664854351186292006

`A048395(n+2)+A048395(n+2)`
-/

namespace A227703.P7664854351186292006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 (n + 2) + A048395 (n + 2)

end

end A227703.P7664854351186292006

namespace A227703

/-- `A048395(n+2)+A048395(n+2)` -/
def P7664854351186292006.Spec : Prop :=
  ∀ n, P7664854351186292006.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P17322510528086830281

`A099776(n+2)+A099776(n+2)*A144396(n+1)`
-/

namespace A227703.P17322510528086830281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 2) + A099776 (n + 2) * A144396 (n + 1)

end

end A227703.P17322510528086830281

namespace A227703

/-- `A099776(n+2)+A099776(n+2)*A144396(n+1)` -/
def P17322510528086830281.Spec : Prop :=
  ∀ n, P17322510528086830281.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P17253344762657445283

`A084367(n+2)+2+n`
-/

namespace A227703.P17253344762657445283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084367 (n + 2) + 2 + (n : ℤ)

end

end A227703.P17253344762657445283

namespace A227703

/-- `A084367(n+2)+2+n` -/
def P17253344762657445283.Spec : Prop :=
  ∀ n, P17253344762657445283.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P13648124266438172329

`A302302(n+2)-∑[n+1]`
-/

namespace A227703.P13648124266438172329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302302 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227703.P13648124266438172329

namespace A227703

/-- `A302302(n+2)-∑[n+1]` -/
def P13648124266438172329.Spec : Prop :=
  ∀ n, P13648124266438172329.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P15926071875357434379

`lcm(2*(n+2), A001844(n+2))`
-/

namespace A227703.P15926071875357434379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * (n + 2) : ℤ) (A001844 (n + 2))

end

end A227703.P15926071875357434379

namespace A227703

/-- `lcm(2*(n+2), A001844(n+2))` -/
def P15926071875357434379.Spec : Prop :=
  ∀ n, (P15926071875357434379.a n : ℤ) = A227703 (n + 2)

end A227703

/-! ## A227703.P16585248719239789273

`A163815(n+1)+A163815(n+2)`
-/

namespace A227703.P16585248719239789273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 (n + 1) + A163815 (n + 2)

end

end A227703.P16585248719239789273

namespace A227703

/-- `A163815(n+1)+A163815(n+2)` -/
def P16585248719239789273.Spec : Prop :=
  ∀ n, P16585248719239789273.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P1566605043222484295

`A005917(n+3)-A001844(n+2)`
-/

namespace A227703.P1566605043222484295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 3) - A001844 (n + 2)

end

end A227703.P1566605043222484295

namespace A227703

/-- `A005917(n+3)-A001844(n+2)` -/
def P1566605043222484295.Spec : Prop :=
  ∀ n, P1566605043222484295.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P761847250624613979

`A047928(n+4)-A071253(n+2)`
-/

namespace A227703.P761847250624613979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047928 (n + 4) - A071253 (n + 2)

end

end A227703.P761847250624613979

namespace A227703

/-- `A047928(n+4)-A071253(n+2)` -/
def P761847250624613979.Spec : Prop :=
  ∀ n, P761847250624613979.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P2399843118017930634

`Δ[2*A212523(n+2)]`
-/

namespace A227703.P2399843118017930634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227703.P2399843118017930634

namespace A227703

/-- `Δ[2*A212523(n+2)]` -/
def P2399843118017930634.Spec : Prop :=
  ∀ n, P2399843118017930634.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P8032074439031593972

`A067389(n+2)+A045991(n+3)`
-/

namespace A227703.P8032074439031593972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 (n + 2) + A045991 (n + 3)

end

end A227703.P8032074439031593972

namespace A227703

/-- `A067389(n+2)+A045991(n+3)` -/
def P8032074439031593972.Spec : Prop :=
  ∀ n, P8032074439031593972.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P433817733760978514

`A141530(n+3)-A132209(n+1)`
-/

namespace A227703.P433817733760978514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141530 (n + 3) - A132209 (n + 1)

end

end A227703.P433817733760978514

namespace A227703

/-- `A141530(n+3)-A132209(n+1)` -/
def P433817733760978514.Spec : Prop :=
  ∀ n, P433817733760978514.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P13189896541036501394

`A008532(n+3)-A008527(n+3)`
-/

namespace A227703.P13189896541036501394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 (n + 3) - A008527 (n + 3)

end

end A227703.P13189896541036501394

namespace A227703

/-- `A008532(n+3)-A008527(n+3)` -/
def P13189896541036501394.Spec : Prop :=
  ∀ n, P13189896541036501394.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P15063081635777762400

`A008532(n+3)-A108100(n+3)`
-/

namespace A227703.P15063081635777762400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 (n + 3) - A108100 (n + 3)

end

end A227703.P15063081635777762400

namespace A227703

/-- `A008532(n+3)-A108100(n+3)` -/
def P15063081635777762400.Spec : Prop :=
  ∀ n, P15063081635777762400.a n = A227703 (n + 2)

end A227703

/-! ## A227703.P12710848532523915008

`A035006(n+3)+A005996(2*n+3)`
-/

namespace A227703.P12710848532523915008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035006 (n + 3) + A005996 (2 * n + 3)

end

end A227703.P12710848532523915008

namespace A227703

/-- `A035006(n+3)+A005996(2*n+3)` -/
def P12710848532523915008.Spec : Prop :=
  ∀ n, P12710848532523915008.a n = A227703 (n + 2)

end A227703

/-!
# A227704: The hyper-Wiener index of the zig-zag polyhex nanotube TUHC_6[2n,2] defined pictorially in Fig. 1 of the Eliasi et al. reference.

The programs for A227704, the canonical program `A227704.P13072905503244377354` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227704 has offset 2).

The definition of A227704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227704.P13072905503244377354

`(n+2)*(15+14*(n+2)+12*(n+2)²+4*(n+2)^3)/3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227704

/-- `(n+2)*(15+14*(n+2)+12*(n+2)²+4*(n+2)^3)/3` -/
def P13072905503244377354.Spec : Prop :=
  ∀ n, P13072905503244377354.a n = (A227704 (n + 2) : ℚ)

end A227704

/-!
# A227707: The terminal Wiener index of the dendrimer D_n defined pictorially in Fig. 1 of the Heydari et al. reference.

The programs for A227707, the canonical program `A227707.P17009337396285617661` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227707 has offset 0).

The definition of A227707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227707.P17009337396285617661

`3*2^n+9*4^n*(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227707

/-- `3*2^n+9*4^n*(n+1)` -/
def P17009337396285617661.Spec : Prop :=
  ∀ n, (P17009337396285617661.a n : ℤ) = A227707 n

theorem P17009337396285617661.correct : P17009337396285617661.Spec := by
  intro n
  simp only [A227707]

end A227707

/-! ## A227707.P2281933872678485494

`A007283(n)*A048474(n+1)`
-/

namespace A227707.P2281933872678485494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n * A048474 (n + 1)

end

end A227707.P2281933872678485494

namespace A227707

/-- `A007283(n)*A048474(n+1)` -/
def P2281933872678485494.Spec : Prop :=
  ∀ n, P2281933872678485494.a n = A227707 n

end A227707

/-! ## A227707.P13599670511163590850

`(A083329(n+1)+1)*A048474(n+1)`
-/

namespace A227707.P13599670511163590850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083329 (n + 1) + 1) * A048474 (n + 1)

end

end A227707.P13599670511163590850

namespace A227707

/-- `(A083329(n+1)+1)*A048474(n+1)` -/
def P13599670511163590850.Spec : Prop :=
  ∀ n, P13599670511163590850.a n = A227707 n

end A227707

/-! ## A227707.P16727078778907062237

`(A167667(n+1)+1)*A003945(n+1)`
-/

namespace A227707.P16727078778907062237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167667 (n + 1) + 1) * A003945 (n + 1)

end

end A227707.P16727078778907062237

namespace A227707

/-- `(A167667(n+1)+1)*A003945(n+1)` -/
def P16727078778907062237.Spec : Prop :=
  ∀ n, P16727078778907062237.a n = A227707 n

end A227707

/-! ## A227707.P207748221215847540

`(A203150(2*(n+1))+1)*A003945(n+1)`
-/

namespace A227707.P207748221215847540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A203150 (2 * (n + 1)) + 1) * A003945 (n + 1)

end

end A227707.P207748221215847540

namespace A227707

/-- `(A203150(2*(n+1))+1)*A003945(n+1)` -/
def P207748221215847540.Spec : Prop :=
  ∀ n, P207748221215847540.a n = A227707 n

end A227707

/-! ## A227707.P5748165493854953015

`(9*(n+1)*A000079(n)+3)*A000079(n)`
-/

namespace A227707.P5748165493854953015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((9 * (n + 1) : ℤ) * A000079 n + 3) * A000079 n

end

end A227707.P5748165493854953015

namespace A227707

/-- `(9*(n+1)*A000079(n)+3)*A000079(n)` -/
def P5748165493854953015.Spec : Prop :=
  ∀ n, P5748165493854953015.a n = A227707 n

end A227707

/-! ## A227707.P3640953609885776533

`((n+1)*Δ[A033484(n)]+1)*Δ[A033484(n)]`
-/

namespace A227707.P3640953609885776533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (f1 (n + 1) - f1 n) + 1) * (f2 (n + 1) - f2 n)

end

end A227707.P3640953609885776533

namespace A227707

/-- `((n+1)*Δ[A033484(n)]+1)*Δ[A033484(n)]` -/
def P3640953609885776533.Spec : Prop :=
  ∀ n, P3640953609885776533.a n = A227707 n

end A227707

/-! ## A227707.P11335300553368652558

`(A048474(n+1)-A048477(n))*A048474(n+1)`
-/

namespace A227707.P11335300553368652558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048474 (n + 1) - A048477 n) * A048474 (n + 1)

end

end A227707.P11335300553368652558

namespace A227707

/-- `(A048474(n+1)-A048477(n))*A048474(n+1)` -/
def P11335300553368652558.Spec : Prop :=
  ∀ n, P11335300553368652558.a n = A227707 n

end A227707

/-! ## A227707.P4727718978644964604

`(A000225(n+2)-A000225(n))*A048474(n+1)`
-/

namespace A227707.P4727718978644964604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 2) - A000225 n) * A048474 (n + 1)

end

end A227707.P4727718978644964604

namespace A227707

/-- `(A000225(n+2)-A000225(n))*A048474(n+1)` -/
def P4727718978644964604.Spec : Prop :=
  ∀ n, P4727718978644964604.a n = A227707 n

end A227707

/-! ## A227707.P10084483077088006379

`(A011782(n+1)+A011782(n+2))*A048474(n+1)`
-/

namespace A227707.P10084483077088006379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) + A011782 (n + 2)) * A048474 (n + 1)

end

end A227707.P10084483077088006379

namespace A227707

/-- `(A011782(n+1)+A011782(n+2))*A048474(n+1)` -/
def P10084483077088006379.Spec : Prop :=
  ∀ n, P10084483077088006379.a n = A227707 n

end A227707

/-!
# A227708: The Wiener index of the dendrimer D_n defined pictorially in Fig. 1 of the Heydari et al. reference.

The programs for A227708, the canonical program `A227708.P8350727680304580562` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227708 has offset 0).

The definition of A227708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227708.P8350727680304580562

`18+2^n*(66+30*n)+36*4^n*n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227708

/-- `18+2^n*(66+30*n)+36*4^n*n` -/
def P8350727680304580562.Spec : Prop :=
  ∀ n, (P8350727680304580562.a n : ℤ) = A227708 n

theorem P8350727680304580562.correct : P8350727680304580562.Spec := by
  intro n
  simp only [A227708]

end A227708

/-!
# A227709: The hyper-Wiener index of the dendrimer D_n defined pictorially in Fig. 1 of the Heydari et al. reference.

The programs for A227709, the canonical program `A227709.P2031752192982063038` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227709 has offset 0).

The definition of A227709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227709.P2031752192982063038

`12+2^n*(15+45*n+15*n²)+4^n*(132+18*n+36*n²)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227709

/-- `12+2^n*(15+45*n+15*n²)+4^n*(132+18*n+36*n²)` -/
def P2031752192982063038.Spec : Prop :=
  ∀ n, (P2031752192982063038.a n : ℤ) = A227709 n

theorem P2031752192982063038.correct : P2031752192982063038.Spec := by
  intro n
  simp only [A227709]

end A227709

/-!
# A227712: a(n) = 9*2^n - 3*n - 5.

The programs for A227712, the canonical program `A227712.P14342544986382020901` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227712 has offset 0).

The definition of A227712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*2^n-3*n-5` (program `A227712.P14342544986382020901`, by `A227712.P14342544986382020901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227712.P14342544986382020901

`9*2^n-3*n-5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227712

/-- `9*2^n-3*n-5` -/
def P14342544986382020901.Spec : Prop :=
  ∀ n, P14342544986382020901.a n = A227712 n

theorem P14342544986382020901.correct : P14342544986382020901.Spec := by
  intro n
  simp only [A227712]

end A227712

/-! ## A227712.P786651969305149262

`∑[ogf((4-6x+5x^2)/(1-3x+2x^2))]`
-/

namespace A227712.P786651969305149262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, 5] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227712.P786651969305149262

namespace A227712

/-- `∑[ogf((4-6x+5x^2)/(1-3x+2x^2))]` -/
def P786651969305149262.Spec : Prop :=
  ∀ n, P786651969305149262.a n = A227712 n

end A227712

/-! ## A227712.P4249319250366213131

`ogf((4-6x+5x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A227712.P4249319250366213131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, 5] [1, -4, 5, -2] n

end

end A227712.P4249319250366213131

namespace A227712

/-- `ogf((4-6x+5x^2)/(1-4x+5x^2-2x^3))` -/
def P4249319250366213131.Spec : Prop :=
  ∀ n, P4249319250366213131.a n = A227712 n

end A227712

/-! ## A227712.P7191161768785570788

`∑[2*a(n-1)+3]` with `a(0)=4, a(1)=6`
-/

namespace A227712.P7191161768785570788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227712.P7191161768785570788

namespace A227712

/-- `∑[2*a(n-1)+3]` -/
def P7191161768785570788.Spec : Prop :=
  ∀ n, (P7191161768785570788.a n : ℤ) = A227712 n

end A227712

/-! ## A227712.P11111393249137540839

`∑[∑[2*a(n-1)]]` with `a(0)=4, a(1)=2, a(2)=9`
-/

namespace A227712.P11111393249137540839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 9] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227712.P11111393249137540839

namespace A227712

/-- `∑[∑[2*a(n-1)]]` -/
def P11111393249137540839.Spec : Prop :=
  ∀ n, (P11111393249137540839.a n : ℤ) = A227712 n

end A227712

/-! ## A227712.P2306141437133436351

`abs(2*a(n-1)-(1-3*n))` with `a(0)=4`
-/

namespace A227712.P2306141437133436351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |2 * a (n - 1) - (1 - (3 * n : ℤ))|

end

end A227712.P2306141437133436351

namespace A227712

/-- `abs(2*a(n-1)-(1-3*n))` -/
def P2306141437133436351.Spec : Prop :=
  ∀ n, P2306141437133436351.a n = A227712 n

end A227712

/-! ## A227712.P7414972094946096111

`∑[a(n-1)+a(n-1)+3]` with `a(0)=4, a(1)=6`
-/

namespace A227712.P7414972094946096111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227712.P7414972094946096111

namespace A227712

/-- `∑[a(n-1)+a(n-1)+3]` -/
def P7414972094946096111.Spec : Prop :=
  ∀ n, (P7414972094946096111.a n : ℤ) = A227712 n

end A227712

/-! ## A227712.P15982114982038940709

`Δ[A335927(n+2)-n²]`
-/

namespace A227712.P15982114982038940709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335927 (n + 2) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227712.P15982114982038940709

namespace A227712

/-- `Δ[A335927(n+2)-n²]` -/
def P15982114982038940709.Spec : Prop :=
  ∀ n, P15982114982038940709.a n = A227712 n

end A227712

/-!
# A227715: Triangle read by rows: Number of 2n-step self-avoiding walks on diamond lattice ending at point with x = 2k.

The programs for A227715, there is no canonical definition to state claims against.
-/

/-! ## A227715.P468242694027850868

`A056239(A171000(n+1)+A110098(n))`
-/

namespace A227715.P468242694027850868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A171000 (n + 1) + A110098 n).toNat

end

end A227715.P468242694027850868

/-!
# A227719: Floor(1/s(n)), where s(n) = n*log(1+1/n) - (2n-1)/(2n).

The programs for A227719, the canonical program `A227719.P14048865372092972622` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227719 has offset 1).

The definition of A227719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227719.P14048865372092972622

`∑[a(n-1)+6]+floor(n/4)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227719

/-- `∑[a(n-1)+6]+floor(n/4)` -/
def P14048865372092972622.Spec : Prop :=
  ∀ n, P14048865372092972622.a n = A227719 (n + 1)

theorem P14048865372092972622.correct : P14048865372092972622.Spec := by
  intro n
  simp only [A227719, Nat.add_sub_cancel]

end A227719

/-! ## A227719.P7834702351166850308

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=5, a(1)=16, a(2)=33, a(3)=56, a(4)=86, a(5)=121`
-/

namespace A227719.P7834702351166850308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 16, 33, 56, 86, 121] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - 2 * a (n - 5) + a (n - 6)

end

end A227719.P7834702351166850308

namespace A227719

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P7834702351166850308.Spec : Prop :=
  ∀ n, P7834702351166850308.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P121868339472591561

`∑[A016969(n)]+floor(n/4)`
-/

namespace A227719.P121868339472591561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n : ℚ) / 4⌋

end

end A227719.P121868339472591561

namespace A227719

/-- `∑[A016969(n)]+floor(n/4)` -/
def P121868339472591561.Spec : Prop :=
  ∀ n, P121868339472591561.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P5356003619545569498

`A002265(n)+∑[6*n+5]`
-/

namespace A227719.P5356003619545569498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227719.P5356003619545569498

namespace A227719

/-- `A002265(n)+∑[6*n+5]` -/
def P5356003619545569498.Spec : Prop :=
  ∀ n, P5356003619545569498.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P18113667147617297225

`∑[A016957(n)+1]+floor(n/4)`
-/

namespace A227719.P18113667147617297225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n : ℚ) / 4⌋

end

end A227719.P18113667147617297225

namespace A227719

/-- `∑[A016957(n)+1]+floor(n/4)` -/
def P18113667147617297225.Spec : Prop :=
  ∀ n, P18113667147617297225.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P4641375980438382397

`A193766(n+1)+3*(n+1)²`
-/

namespace A227719.P4641375980438382397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1) + (3 * (n + 1) ^ 2 : ℤ)

end

end A227719.P4641375980438382397

namespace A227719

/-- `A193766(n+1)+3*(n+1)²` -/
def P4641375980438382397.Spec : Prop :=
  ∀ n, P4641375980438382397.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P5145161039388040735

`A047201(n+1)+Δ[n*(n+1)²]`
-/

namespace A227719.P5145161039388040735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A227719.P5145161039388040735

namespace A227719

/-- `A047201(n+1)+Δ[n*(n+1)²]` -/
def P5145161039388040735.Spec : Prop :=
  ∀ n, P5145161039388040735.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P15052807294263945881

`A268581(n)+A173562(n)`
-/

namespace A227719.P15052807294263945881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n + A173562 n

end

end A227719.P15052807294263945881

namespace A227719

/-- `A268581(n)+A173562(n)` -/
def P15052807294263945881.Spec : Prop :=
  ∀ n, P15052807294263945881.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P13656651578506607341

`A227720(n+1)-A021913(n)`
-/

namespace A227719.P13656651578506607341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227720 (n + 1) - A021913 n

end

end A227719.P13656651578506607341

namespace A227719

/-- `A227720(n+1)-A021913(n)` -/
def P13656651578506607341.Spec : Prop :=
  ∀ n, P13656651578506607341.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P2497370486033329757

`A004526(A004526(n))+∑[A016969(n)]`
-/

namespace A227719.P2497370486033329757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227719.P2497370486033329757

namespace A227719

/-- `A004526(A004526(n))+∑[A016969(n)]` -/
def P2497370486033329757.Spec : Prop :=
  ∀ n, P2497370486033329757.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P17875924885352157412

`A007742(n+1)+A002265(n)-A002378(n)`
-/

namespace A227719.P17875924885352157412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 (n + 1) + (A002265 n - A002378 n)

end

end A227719.P17875924885352157412

namespace A227719

/-- `A007742(n+1)+A002265(n)-A002378(n)` -/
def P17875924885352157412.Spec : Prop :=
  ∀ n, P17875924885352157412.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P3256208723739658954

`A047280(n+1)+A047298(n+1)+A003215(n)`
-/

namespace A227719.P3256208723739658954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (n + 1) + (A047298 (n + 1) + A003215 n)

end

end A227719.P3256208723739658954

namespace A227719

/-- `A047280(n+1)+A047298(n+1)+A003215(n)` -/
def P3256208723739658954.Spec : Prop :=
  ∀ n, P3256208723739658954.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P3263413899923993175

`A270710(n+1)+A002265(n)+1`
-/

namespace A227719.P3263413899923993175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 (n + 1) + (A002265 n + 1)

end

end A227719.P3263413899923993175

namespace A227719

/-- `A270710(n+1)+A002265(n)+1` -/
def P3263413899923993175.Spec : Prop :=
  ∀ n, P3263413899923993175.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P11016593359243139171

`A003215(n+1)-(A037915(n+1)+1)`
-/

namespace A227719.P11016593359243139171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (n + 1) - (A037915 (n + 1) + 1)

end

end A227719.P11016593359243139171

namespace A227719

/-- `A003215(n+1)-(A037915(n+1)+1)` -/
def P11016593359243139171.Spec : Prop :=
  ∀ n, P11016593359243139171.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P9844345786839760673

`∑[A047487(n+1)+A008574(n+1)]-1`
-/

namespace A227719.P9844345786839760673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1) + A008574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A227719.P9844345786839760673

namespace A227719

/-- `∑[A047487(n+1)+A008574(n+1)]-1` -/
def P9844345786839760673.Spec : Prop :=
  ∀ n, P9844345786839760673.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P9401811274373452400

`A045944(n+1)+A004526(A004526(n))`
-/

namespace A227719.P9401811274373452400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 (n + 1) + A004526 (A004526 n).toNat

end

end A227719.P9401811274373452400

namespace A227719

/-- `A045944(n+1)+A004526(A004526(n))` -/
def P9401811274373452400.Spec : Prop :=
  ∀ n, P9401811274373452400.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P17682366284509009238

`A056109(n+1)+A004526(A004526(n))-1`
-/

namespace A227719.P17682366284509009238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 (n + 1) + (A004526 (A004526 n).toNat - 1)

end

end A227719.P17682366284509009238

namespace A227719

/-- `A056109(n+1)+A004526(A004526(n))-1` -/
def P17682366284509009238.Spec : Prop :=
  ∀ n, P17682366284509009238.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P2129038716935395426

`∑[A166466(2*n+1)-A166486(n)+3]-1`
-/

namespace A227719.P2129038716935395426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166466 (2 * n + 1) - A166486 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A227719.P2129038716935395426

namespace A227719

/-- `∑[A166466(2*n+1)-A166486(n)+3]-1` -/
def P2129038716935395426.Spec : Prop :=
  ∀ n, P2129038716935395426.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P15375362838056937084

`4*n+3+∑[A047487(3*n+1)]`
-/

namespace A227719.P15375362838056937084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227719.P15375362838056937084

namespace A227719

/-- `4*n+3+∑[A047487(3*n+1)]` -/
def P15375362838056937084.Spec : Prop :=
  ∀ n, P15375362838056937084.a n = A227719 (n + 1)

end A227719

/-! ## A227719.P6282376473441764618

`A057353(3*n)+A033428(n+1)+2`
-/

namespace A227719.P6282376473441764618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (3 * n) + (A033428 (n + 1) + 2)

end

end A227719.P6282376473441764618

namespace A227719

/-- `A057353(3*n)+A033428(n+1)+2` -/
def P6282376473441764618.Spec : Prop :=
  ∀ n, P6282376473441764618.a n = A227719 (n + 1)

end A227719

/-!
# A227720: Round(1/s(n)), where s(n) = n*log(1+1/n) - (2n-1)/(2n).

The programs for A227720, the canonical program `A227720.P16173368726681121942` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227720 has offset 1).

The definition of A227720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227720.P16173368726681121942

`floor(3*(3/8+n+1)²)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227720

/-- `floor(3*(3/8+n+1)²)` -/
def P16173368726681121942.Spec : Prop :=
  ∀ n, P16173368726681121942.a n = A227720 (n + 1)

theorem P16173368726681121942.correct : P16173368726681121942.Spec := by
  intro n
  simp only [A227720, Nat.add_sub_cancel]

end A227720

/-! ## A227720.P229093500798952269

`∑[∑[floor(a(n-4))]]` with `a(0)=5, a(1)=6, a(2)=7, a(3)=5, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A227720.P229093500798952269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 6, 7, 5, 6] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227720.P229093500798952269

namespace A227720

/-- `∑[∑[floor(a(n-4))]]` -/
def P229093500798952269.Spec : Prop :=
  ∀ n, (P229093500798952269.a n : ℤ) = A227720 (n + 1)

end A227720

/-! ## A227720.P11683609197047864697

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=5, a(1)=16, a(2)=34, a(3)=57, a(4)=86, a(5)=121`
-/

namespace A227720.P11683609197047864697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 16, 34, 57, 86, 121] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - 2 * a (n - 5) + a (n - 6)

end

end A227720.P11683609197047864697

namespace A227720

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P11683609197047864697.Spec : Prop :=
  ∀ n, P11683609197047864697.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P8219646854444935721

`∑[6*(n+1)-char[A042965(n+1)]]`
-/

namespace A227720.P8219646854444935721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227720.P8219646854444935721

namespace A227720

/-- `∑[6*(n+1)-char[A042965(n+1)]]` -/
def P8219646854444935721.Spec : Prop :=
  ∀ n, P8219646854444935721.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P1352662891167050328

`∑[A047558(n+1)+3*(n+1)+n+1]`
-/

namespace A227720.P1352662891167050328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047558 (n + 1) + (3 * (n + 1) : ℤ) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227720.P1352662891167050328

namespace A227720

/-- `∑[A047558(n+1)+3*(n+1)+n+1]` -/
def P1352662891167050328.Spec : Prop :=
  ∀ n, P1352662891167050328.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P11075080714773747355

`A227719(n+1)+A021913(n)`
-/

namespace A227720.P11075080714773747355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227719 (n + 1) + A021913 n

end

end A227720.P11075080714773747355

namespace A227720

/-- `A227719(n+1)+A021913(n)` -/
def P11075080714773747355.Spec : Prop :=
  ∀ n, P11075080714773747355.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P14422813943861604933

`∑[A319452(n+2)+n+1]+(n+1)²`
-/

namespace A227720.P14422813943861604933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319452 (n + 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A227720.P14422813943861604933

namespace A227720

/-- `∑[A319452(n+2)+n+1]+(n+1)²` -/
def P14422813943861604933.Spec : Prop :=
  ∀ n, P14422813943861604933.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P1794466581512905238

`∑[A177704(n+1)+A016957(n)]`
-/

namespace A227720.P1794466581512905238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (n + 1) + A016957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227720.P1794466581512905238

namespace A227720

/-- `∑[A177704(n+1)+A016957(n)]` -/
def P1794466581512905238.Spec : Prop :=
  ∀ n, P1794466581512905238.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P14945914342639200025

`∑[A177704(n+1)+A016969(n)-1]`
-/

namespace A227720.P14945914342639200025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (n + 1) + (A016969 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227720.P14945914342639200025

namespace A227720

/-- `∑[A177704(n+1)+A016969(n)-1]` -/
def P14945914342639200025.Spec : Prop :=
  ∀ n, P14945914342639200025.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P13043185516768073682

`∑[A008588(n+1)-Δ[A008624(n)]²]`
-/

namespace A227720.P13043185516768073682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (n + 1) - (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227720.P13043185516768073682

namespace A227720

/-- `∑[A008588(n+1)-Δ[A008624(n)]²]` -/
def P13043185516768073682.Spec : Prop :=
  ∀ n, P13043185516768073682.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P15429642199152801496

`A045944(n+1)+A004526(A008619(n))`
-/

namespace A227720.P15429642199152801496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 (n + 1) + A004526 (A008619 n).toNat

end

end A227720.P15429642199152801496

namespace A227720

/-- `A045944(n+1)+A004526(A008619(n))` -/
def P15429642199152801496.Spec : Prop :=
  ∀ n, P15429642199152801496.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P9674418262383487544

`A110654(A004526(n))+A045944(n+1)`
-/

namespace A227720.P9674418262383487544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004526 n).toNat + A045944 (n + 1)

end

end A227720.P9674418262383487544

namespace A227720

/-- `A110654(A004526(n))+A045944(n+1)` -/
def P9674418262383487544.Spec : Prop :=
  ∀ n, P9674418262383487544.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P4545928296322229808

`A045944(n+1)+A004526(A004526(n)+1)`
-/

namespace A227720.P4545928296322229808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 (n + 1) + A004526 (A004526 n + 1).toNat

end

end A227720.P4545928296322229808

namespace A227720

/-- `A045944(n+1)+A004526(A004526(n)+1)` -/
def P4545928296322229808.Spec : Prop :=
  ∀ n, P4545928296322229808.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P5262993705819606961

`∑[comp[A047612(n+1)]+4*(n+1)]`
-/

namespace A227720.P5262993705819606961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227720.P5262993705819606961

namespace A227720

/-- `∑[comp[A047612(n+1)]+4*(n+1)]` -/
def P5262993705819606961.Spec : Prop :=
  ∀ n, (P5262993705819606961.a n : ℤ) = A227720 (n + 1)

end A227720

/-! ## A227720.P16128066010016089023

`A002265(n+2)+∑[A016969(n)]`
-/

namespace A227720.P16128066010016089023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227720.P16128066010016089023

namespace A227720

/-- `A002265(n+2)+∑[A016969(n)]` -/
def P16128066010016089023.Spec : Prop :=
  ∀ n, P16128066010016089023.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P15506344065685979574

`A002265(n+2)+Δ[A160378(n+1)]`
-/

namespace A227720.P15506344065685979574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 2) + (f1 (n + 1) - f1 n)

end

end A227720.P15506344065685979574

namespace A227720

/-- `A002265(n+2)+Δ[A160378(n+1)]` -/
def P15506344065685979574.Spec : Prop :=
  ∀ n, P15506344065685979574.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P2646188194197504585

`A002265(n+2)+A001859(2*(n+1))`
-/

namespace A227720.P2646188194197504585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 2) + A001859 (2 * (n + 1))

end

end A227720.P2646188194197504585

namespace A227720

/-- `A002265(n+2)+A001859(2*(n+1))` -/
def P2646188194197504585.Spec : Prop :=
  ∀ n, P2646188194197504585.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P8895762967777798100

`A038709(2*n+3)+A000217(2*(n+1))`
-/

namespace A227720.P8895762967777798100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038709 (2 * n + 3) + A000217 (2 * (n + 1))

end

end A227720.P8895762967777798100

namespace A227720

/-- `A038709(2*n+3)+A000217(2*(n+1))` -/
def P8895762967777798100.Spec : Prop :=
  ∀ n, P8895762967777798100.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P6321478178224348944

`∑[A047487(3*(n+1))]`
-/

namespace A227720.P6321478178224348944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227720.P6321478178224348944

namespace A227720

/-- `∑[A047487(3*(n+1))]` -/
def P6321478178224348944.Spec : Prop :=
  ∀ n, P6321478178224348944.a n = A227720 (n + 1)

end A227720

/-! ## A227720.P8871938849108308371

`∑[6*(n+1)-A000045(n+2)²%3]`
-/

namespace A227720.P8871938849108308371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - Int.tmod (A000045 (n + 2) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227720.P8871938849108308371

namespace A227720

/-- `∑[6*(n+1)-A000045(n+2)²%3]` -/
def P8871938849108308371.Spec : Prop :=
  ∀ n, P8871938849108308371.a n = A227720 (n + 1)

end A227720

/-!
# A227721: Floor(1/s(n)), where s(n) = (2n+1)/(2n+2) - n*log((n+1)/n).

The programs for A227721, the canonical program `A227721.P13057633869825337079` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227721 has offset 1).

The definition of A227721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227721.P13057633869825337079

`∑[12*n+15]+2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227721

/-- `∑[12*n+15]+2` -/
def P13057633869825337079.Spec : Prop :=
  ∀ n, (P13057633869825337079.a n : ℤ) = A227721 (n + 1)

theorem P13057633869825337079.correct : P13057633869825337079.Spec := by
  intro n
  simp only [A227721, Nat.add_sub_cancel]

end A227721

/-! ## A227721.P7509533280691087674

`∑[a(n-1)+12]` with `a(0)=17, a(1)=27`
-/

namespace A227721.P7509533280691087674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17, 27] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227721.P7509533280691087674

namespace A227721

/-- `∑[a(n-1)+12]` -/
def P7509533280691087674.Spec : Prop :=
  ∀ n, (P7509533280691087674.a n : ℤ) = A227721 (n + 1)

end A227721

/-! ## A227721.P7041015603516410633

`∑[A157910(n+1)]/(n+1)`
-/

namespace A227721.P7041015603516410633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157910 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A227721.P7041015603516410633

namespace A227721

/-- `∑[A157910(n+1)]/(n+1)` -/
def P7041015603516410633.Spec : Prop :=
  ∀ n, P7041015603516410633.a n = (A227721 (n + 1) : ℚ)

end A227721

/-! ## A227721.P4185455763653367561

`abs(1-(A016957(n)+5)*(n+2))`
-/

namespace A227721.P4185455763653367561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A016957 n + 5) * (n + 2 : ℤ)|

end

end A227721.P4185455763653367561

namespace A227721

/-- `abs(1-(A016957(n)+5)*(n+2))` -/
def P4185455763653367561.Spec : Prop :=
  ∀ n, P4185455763653367561.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P9345480994848879530

`abs(Δ[(A000217(2*n+1)+1)*(n+2)+n-1]+n-1)`
-/

namespace A227721.P9345480994848879530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n + 1) + 1) * (n + 2 : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n : ℤ) - 1|

end

end A227721.P9345480994848879530

namespace A227721

/-- `abs(Δ[(A000217(2*n+1)+1)*(n+2)+n-1]+n-1)` -/
def P9345480994848879530.Spec : Prop :=
  ∀ n, P9345480994848879530.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P17742468425134168942

`(A154105(n+1)-3)/2`
-/

namespace A227721.P17742468425134168942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154105 (n + 1) - 3 : ℚ) / 2

end

end A227721.P17742468425134168942

namespace A227721

/-- `(A154105(n+1)-3)/2` -/
def P17742468425134168942.Spec : Prop :=
  ∀ n, P17742468425134168942.a n = (A227721 (n + 1) : ℚ)

end A227721

/-! ## A227721.P11485922627516043074

`A213826(n+2)/(n+2)`
-/

namespace A227721.P11485922627516043074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213826 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A227721.P11485922627516043074

namespace A227721

/-- `A213826(n+2)/(n+2)` -/
def P11485922627516043074.Spec : Prop :=
  ∀ n, P11485922627516043074.a n = (A227721 (n + 1) : ℚ)

end A227721

/-! ## A227721.P15502779360440144246

`Δ[A126335(n+1)-(n+1)²]`
-/

namespace A227721.P15502779360440144246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126335 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227721.P15502779360440144246

namespace A227721

/-- `Δ[A126335(n+1)-(n+1)²]` -/
def P15502779360440144246.Spec : Prop :=
  ∀ n, P15502779360440144246.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P9549534887747769537

`abs((n+2)*A016945(n+1)-1)`
-/

namespace A227721.P9549534887747769537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * A016945 (n + 1) - 1|

end

end A227721.P9549534887747769537

namespace A227721

/-- `abs((n+2)*A016945(n+1)-1)` -/
def P9549534887747769537.Spec : Prop :=
  ∀ n, P9549534887747769537.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P3665868634644406404

`Δ[A000217(n+1)*A004767(n)-n]`
-/

namespace A227721.P3665868634644406404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A004767 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227721.P3665868634644406404

namespace A227721

/-- `Δ[A000217(n+1)*A004767(n)-n]` -/
def P3665868634644406404.Spec : Prop :=
  ∀ n, P3665868634644406404.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P1119102912126309718

`Δ[A172073(n+1)+(n+1)²]`
-/

namespace A227721.P1119102912126309718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172073 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227721.P1119102912126309718

namespace A227721

/-- `Δ[A172073(n+1)+(n+1)²]` -/
def P1119102912126309718.Spec : Prop :=
  ∀ n, P1119102912126309718.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P14845099113472644035

`abs(3*C(A109613(2*(n+1))+1, 2)-1)`
-/

namespace A227721.P14845099113472644035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * Nat.choose (A109613 (2 * (n + 1)) + 1).toNat 2 : ℤ) - 1|

end

end A227721.P14845099113472644035

namespace A227721

/-- `abs(3*C(A109613(2*(n+1))+1, 2)-1)` -/
def P14845099113472644035.Spec : Prop :=
  ∀ n, P14845099113472644035.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P2890214176097181731

`abs(1-A045943(2*n+3))`
-/

namespace A227721.P2890214176097181731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A045943 (2 * n + 3)|

end

end A227721.P2890214176097181731

namespace A227721

/-- `abs(1-A045943(2*n+3))` -/
def P2890214176097181731.Spec : Prop :=
  ∀ n, P2890214176097181731.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P5795081159245165208

`record[Δ[A026178(n+2)*A026214(n+2)]]`
-/

namespace A227721.P5795081159245165208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (n + 2) * A026214 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227721.P5795081159245165208

namespace A227721

/-- `record[Δ[A026178(n+2)*A026214(n+2)]]` -/
def P5795081159245165208.Spec : Prop :=
  ∀ n, P5795081159245165208.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P14109906980184194921

`A143208(2*n+5)`
-/

namespace A227721.P14109906980184194921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143208 (2 * n + 5)

end

end A227721.P14109906980184194921

namespace A227721

/-- `A143208(2*n+5)` -/
def P14109906980184194921.Spec : Prop :=
  ∀ n, P14109906980184194921.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P2258949353181335726

`abs(1-A000969(3*n+4))`
-/

namespace A227721.P2258949353181335726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000969 (3 * n + 4)|

end

end A227721.P2258949353181335726

namespace A227721

/-- `abs(1-A000969(3*n+4))` -/
def P2258949353181335726.Spec : Prop :=
  ∀ n, P2258949353181335726.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P8392148367868380804

`Δ[A005898(n)+A000124(3*n+1)]`
-/

namespace A227721.P8392148367868380804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n + A000124 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227721.P8392148367868380804

namespace A227721

/-- `Δ[A005898(n)+A000124(3*n+1)]` -/
def P8392148367868380804.Spec : Prop :=
  ∀ n, P8392148367868380804.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P10173348027687958335

`A138987(6*n+8)`
-/

namespace A227721.P10173348027687958335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (6 * n + 8)

end

end A227721.P10173348027687958335

namespace A227721

/-- `A138987(6*n+8)` -/
def P10173348027687958335.Spec : Prop :=
  ∀ n, P10173348027687958335.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P5505249976825708979

`A188623(3*(2*n+3))`
-/

namespace A227721.P5505249976825708979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188623 (3 * (2 * n + 3))

end

end A227721.P5505249976825708979

namespace A227721

/-- `A188623(3*(2*n+3))` -/
def P5505249976825708979.Spec : Prop :=
  ∀ n, P5505249976825708979.a n = A227721 (n + 1)

end A227721

/-! ## A227721.P6752224378374937103

`A186498(A016921(n+1))`
-/

namespace A227721.P6752224378374937103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186498 (A016921 (n + 1)).toNat

end

end A227721.P6752224378374937103

namespace A227721

/-- `A186498(A016921(n+1))` -/
def P6752224378374937103.Spec : Prop :=
  ∀ n, P6752224378374937103.a n = A227721 (n + 1)

end A227721

/-!
# A227722: Smallest Boolean functions from small equivalence classes (counted by A000231).

The programs for A227722, there is no canonical definition to state claims against.
-/

/-! ## A227722.P11236760259464930839

`lt[A048967(n), A093178(A048794(n))]`
-/

namespace A227722.P11236760259464930839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A048794 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227722.P11236760259464930839

/-! ## A227722.P4118935801652989706

`record[A028242(n)-A272867(A272881(n+1))]`
-/

namespace A227722.P4118935801652989706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n - A272867 (A272881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227722.P4118935801652989706

/-! ## A227722.P16271286904210248189

`lt[A070061(A070093(n+1)), A070038(n+1)]`
-/

namespace A227722.P16271286904210248189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070061 (A070093 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227722.P16271286904210248189

/-! ## A227722.P18245929975622653957

`lt[A061884(A182246(n+1)), A300300(n+4)]`
-/

namespace A227722.P18245929975622653957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061884 (A182246 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300300 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227722.P18245929975622653957

/-! ## A227722.P11308655323899601727

`lt[A364016(A070939(n)), A344618(2*n+2)]`
-/

namespace A227722.P11308655323899601727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364016 (A070939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (2 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227722.P11308655323899601727

/-!
# A227724: T(n,k) = number of small equivalence classes of half full n-ary Boolean functions that contain 2^k functions.

The programs for A227724, there is no canonical definition to state claims against.
-/

/-! ## A227724.P12233413141888471359

`A228846(A194586(n))-1`
-/

namespace A227724.P12233413141888471359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228846 (A194586 n).toNat - 1

end

end A227724.P12233413141888471359

/-! ## A227724.P5692387783649118113

`A227725(n)%A228846(A194586(n))`
-/

namespace A227724.P5692387783649118113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227725 n) (A228846 (A194586 n).toNat)

end

end A227724.P5692387783649118113

/-! ## A227724.P17015243491960981133

`A140106(A305392(n+1)^A055129(n+1))`
-/

namespace A227724.P17015243491960981133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (SequenceMachineLib.roundAway ((A305392 (n + 1) : ℚ) ^ (A055129 (n + 1) : ℤ))).toNat

end

end A227724.P17015243491960981133

/-! ## A227724.P8582504796855967043

`A189289(2*n+5)*A251865(A011782(n))`
-/

namespace A227724.P8582504796855967043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189289 (2 * n + 5) * A251865 (A011782 n).toNat

end

end A227724.P8582504796855967043

/-! ## A227724.P18377292880827650625

`val(A002033(A008970(n+2)+1)!, 2)`
-/

namespace A227724.P18377292880827650625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A002033 (A008970 (n + 2) + 1).toNat).toNat) 2

end

end A227724.P18377292880827650625

/-!
# A227726: a(n) = [x^n] (1 + x)/(1 - x)^(2*n+1).

The programs for A227726, the canonical program `A227726.P7304249674244244616` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227726 has offset 0).

The definition of A227726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227726.P3220074499109443881

`A182584(2*n)`
-/

namespace A227726.P3220074499109443881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182584 (2 * n)

end

end A227726.P3220074499109443881

namespace A227726

/-- `A182584(2*n)` -/
def P3220074499109443881.Spec : Prop :=
  ∀ n, P3220074499109443881.a n = A227726 n

end A227726

/-! ## A227726.P7304249674244244616

`A025174(n)+A005809(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227726

/-- `A025174(n)+A005809(n)` -/
def P7304249674244244616.Spec : Prop :=
  ∀ n, P7304249674244244616.a n = A227726 n

theorem P7304249674244244616.correct : P7304249674244244616.Spec := by
  intro n
  simp only [A227726]

end A227726

/-! ## A227726.P1086410636385134074

`A264772(∑[n])+A025174(n)`
-/

namespace A227726.P1086410636385134074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f1 j) + A025174 n

end

end A227726.P1086410636385134074

namespace A227726

/-- `A264772(∑[n])+A025174(n)` -/
def P1086410636385134074.Spec : Prop :=
  ∀ n, P1086410636385134074.a n = A227726 n

end A227726

/-! ## A227726.P14989332340919332184

`A065942(2*n)+A025174(n)`
-/

namespace A227726.P14989332340919332184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n) + A025174 n

end

end A227726.P14989332340919332184

namespace A227726

/-- `A065942(2*n)+A025174(n)` -/
def P14989332340919332184.Spec : Prop :=
  ∀ n, P14989332340919332184.a n = A227726 n

end A227726

/-! ## A227726.P5710729819055802903

`A081204(2*n)+A025174(n)`
-/

namespace A227726.P5710729819055802903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n) + A025174 n

end

end A227726.P5710729819055802903

namespace A227726

/-- `A081204(2*n)+A025174(n)` -/
def P5710729819055802903.Spec : Prop :=
  ∀ n, P5710729819055802903.a n = A227726 n

end A227726

/-! ## A227726.P15581474893977225503

`A165817(n)+2*A025174(n)`
-/

namespace A227726.P15581474893977225503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n + 2 * A025174 n

end

end A227726.P15581474893977225503

namespace A227726

/-- `A165817(n)+2*A025174(n)` -/
def P15581474893977225503.Spec : Prop :=
  ∀ n, P15581474893977225503.a n = A227726 n

end A227726

/-! ## A227726.P16037676113283647690

`gcd(2, A134062(n))*A165817(n)`
-/

namespace A227726.P16037676113283647690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A134062 n) : ℤ) * A165817 n

end

end A227726.P16037676113283647690

namespace A227726

/-- `gcd(2, A134062(n))*A165817(n)` -/
def P16037676113283647690.Spec : Prop :=
  ∀ n, P16037676113283647690.a n = A227726 n

end A227726

/-! ## A227726.P15119020621373680621

`record[A182584(A000265(n+1)-1)]`
-/

namespace A227726.P15119020621373680621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182584 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227726.P15119020621373680621

namespace A227726

/-- `record[A182584(A000265(n+1)-1)]` -/
def P15119020621373680621.Spec : Prop :=
  ∀ n, P15119020621373680621.a n = A227726 n

end A227726

/-! ## A227726.P3031360352087804328

`floor(A005809(n)+A165817(n)/2)`
-/

namespace A227726.P3031360352087804328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005809 n : ℚ) + (A165817 n : ℚ) / 2⌋

end

end A227726.P3031360352087804328

namespace A227726

/-- `floor(A005809(n)+A165817(n)/2)` -/
def P3031360352087804328.Spec : Prop :=
  ∀ n, P3031360352087804328.a n = A227726 n

end A227726

/-! ## A227726.P7037015738027306053

`record[gcd(A035363(n+1), A182584(n))]`
-/

namespace A227726.P7037015738027306053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 (n + 1)) (A182584 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227726.P7037015738027306053

namespace A227726

/-- `record[gcd(A035363(n+1), A182584(n))]` -/
def P7037015738027306053.Spec : Prop :=
  ∀ n, (P7037015738027306053.a n : ℤ) = A227726 n

end A227726

/-! ## A227726.P11452185893974598577

`A303259(2*n+1)+A025174(n)`
-/

namespace A227726.P11452185893974598577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 (2 * n + 1) + A025174 n

end

end A227726.P11452185893974598577

namespace A227726

/-- `A303259(2*n+1)+A025174(n)` -/
def P11452185893974598577.Spec : Prop :=
  ∀ n, P11452185893974598577.a n = A227726 n

end A227726

/-! ## A227726.P791397018042440903

`A303259(Δ[n²])+floor(A165817(n)/2)`
-/

namespace A227726.P791397018042440903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ⌊(A165817 n : ℚ) / 2⌋

end

end A227726.P791397018042440903

namespace A227726

/-- `A303259(Δ[n²])+floor(A165817(n)/2)` -/
def P791397018042440903.Spec : Prop :=
  ∀ n, P791397018042440903.a n = A227726 n

end A227726

/-! ## A227726.P1792608705544514789

`floor(A165817(n)/2)+(2*n+1)*A001764(n)`
-/

namespace A227726.P1792608705544514789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165817 n : ℚ) / 2⌋ + (2 * n + 1 : ℤ) * A001764 n

end

end A227726.P1792608705544514789

namespace A227726

/-- `floor(A165817(n)/2)+(2*n+1)*A001764(n)` -/
def P1792608705544514789.Spec : Prop :=
  ∀ n, P1792608705544514789.a n = A227726 n

end A227726

/-! ## A227726.P16190291483301409890

`A020639(A278234(n))*A165817(n)`
-/

namespace A227726.P16190291483301409890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A278234 n).toNat * A165817 n

end

end A227726.P16190291483301409890

namespace A227726

/-- `A020639(A278234(n))*A165817(n)` -/
def P16190291483301409890.Spec : Prop :=
  ∀ n, P16190291483301409890.a n = A227726 n

end A227726

/-! ## A227726.P12316840043273425111

`A014963(A061142(n+1))*A165817(n)`
-/

namespace A227726.P12316840043273425111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A061142 (n + 1)).toNat * A165817 n

end

end A227726.P12316840043273425111

namespace A227726

/-- `A014963(A061142(n+1))*A165817(n)` -/
def P12316840043273425111.Spec : Prop :=
  ∀ n, P12316840043273425111.a n = A227726 n

end A227726

/-! ## A227726.P335227012225981442

`A165817(n)*A204018(A000217(n+1))`
-/

namespace A227726.P335227012225981442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n * A204018 (A000217 (n + 1)).toNat

end

end A227726.P335227012225981442

namespace A227726

/-- `A165817(n)*A204018(A000217(n+1))` -/
def P335227012225981442.Spec : Prop :=
  ∀ n, P335227012225981442.a n = A227726 n

end A227726

/-! ## A227726.P15619655658904839085

`2*A005809(n)-A165817(n)`
-/

namespace A227726.P15619655658904839085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005809 n - A165817 n

end

end A227726.P15619655658904839085

namespace A227726

/-- `2*A005809(n)-A165817(n)` -/
def P15619655658904839085.Spec : Prop :=
  ∀ n, P15619655658904839085.a n = A227726 n

end A227726

/-!
# A227728: a(1) = greatest k such that H(k) - H(2) < 1/1 + 1/2; a(2) = greatest k such that H(k) - H(a(1)) < H(a(1)) - H(2); and for n>2, a(n) = greatest k such that H(k) - H(a(n-1)) < H(a(n-1)) - H(a(n-2)), where H = harmonic number.

The programs for A227728, there is no canonical definition to state claims against.
-/

/-! ## A227728.P6103938296836121728

`A183217(A003516(n+3))+A073846(n+1)`
-/

namespace A227728.P6103938296836121728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183217 (A003516 (n + 3)).toNat + A073846 (n + 1)

end

end A227728.P6103938296836121728

/-!
# A227730: Doubly 2-densely divisible numbers.

The programs for A227730, there is no canonical definition to state claims against.
-/

/-! ## A227730.P11250913584259560156

`A246692(n+1)-A008794(A351241(n+1))`
-/

namespace A227730.P11250913584259560156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246692 (n + 1) - A008794 (A351241 (n + 1)).toNat

end

end A227730.P11250913584259560156

/-! ## A227730.P7284854466239814931

`record[A009213(A007434(n+1))]`
-/

namespace A227730.P7284854466239814931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009213 (A007434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227730.P7284854466239814931

/-! ## A227730.P17667458207591201226

`record[A246692(n+1)-A184955(n+2)]`
-/

namespace A227730.P17667458207591201226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246692 (n + 1) - A184955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227730.P17667458207591201226

/-! ## A227730.P2412945378748481087

`record[A000005(A216218(n)+A055999(n))]`
-/

namespace A227730.P2412945378748481087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A216218 n + A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227730.P2412945378748481087

/-!
# A227731: Doubly 3-densely divisible numbers.

The programs for A227731, there is no canonical definition to state claims against.
-/

/-! ## A227731.P16075496643841509436

`lt[A232989(n), A269865(A127515(n+1))]`
-/

namespace A227731.P16075496643841509436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269865 (A127515 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227731.P16075496643841509436

/-! ## A227731.P14687125999866811134

`lt[A245819(A232989(n)), A245819(n+1)]`
-/

namespace A227731.P14687125999866811134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245819 (A232989 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227731.P14687125999866811134

/-! ## A227731.P2812945709553944520

`lt[A301333(n), A301375(n+1)]`
-/

namespace A227731.P2812945709553944520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227731.P2812945709553944520

/-! ## A227731.P13385232331938565541

`lt[A274010(n)*A301333(n), n]`
-/

namespace A227731.P13385232331938565541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 n * A301333 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227731.P13385232331938565541

/-! ## A227731.P3182347967715262652

`lt[A301333(n)², A301853(n+1)]`
-/

namespace A227731.P3182347967715262652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227731.P3182347967715262652

/-!
# A227732: O.g.f.: exp( Sum_{n>=1} (sigma(2*n)^2 - sigma(n)^2) * x^n/n ).

The programs for A227732, there is no canonical definition to state claims against.
-/

/-! ## A227732.P1897762595786098232

`A337696(A168243(n))+A193427(n)`
-/

namespace A227732.P1897762595786098232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337696 (A168243 n).toNat + A193427 n

end

end A227732.P1897762595786098232

/-!
# A227733: a(n) = sigma(2*n)^2 - sigma(n)^2.

The programs for A227733, the canonical program `A227733.P5960596068960565775` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227733 has offset 1).

The definition of A227733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227733.P5960596068960565775

`A062731(n+1)²-A000203(n+1)²`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A227733

/-- `A062731(n+1)²-A000203(n+1)²` -/
def P5960596068960565775.Spec : Prop :=
  ∀ n, P5960596068960565775.a n = A227733 (n + 1)

theorem P5960596068960565775.correct : P5960596068960565775.Spec := by
  intro n
  simp only [A227733, Nat.add_sub_cancel]

end A227733

/-! ## A227733.P1668990888893130340

`A000203(2*(n+1))²-A072861(n+1)`
-/

namespace A227733.P1668990888893130340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) ^ 2 - A072861 (n + 1)

end

end A227733.P1668990888893130340

namespace A227733

/-- `A000203(2*(n+1))²-A072861(n+1)` -/
def P1668990888893130340.Spec : Prop :=
  ∀ n, P1668990888893130340.a n = A227733 (n + 1)

end A227733

/-! ## A227733.P2630928802734911673

`A000203(2*(n+1))²-A000203(n+1)²`
-/

namespace A227733.P2630928802734911673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) ^ 2 - A000203 (n + 1) ^ 2

end

end A227733.P2630928802734911673

namespace A227733

/-- `A000203(2*(n+1))²-A000203(n+1)²` -/
def P2630928802734911673.Spec : Prop :=
  ∀ n, P2630928802734911673.a n = A227733 (n + 1)

end A227733

/-! ## A227733.P8966124375680267440

`(A062731(n+1)+A000203(n+1))*A054785(n+1)`
-/

namespace A227733.P8966124375680267440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062731 (n + 1) + A000203 (n + 1)) * A054785 (n + 1)

end

end A227733.P8966124375680267440

namespace A227733

/-- `(A062731(n+1)+A000203(n+1))*A054785(n+1)` -/
def P8966124375680267440.Spec : Prop :=
  ∀ n, P8966124375680267440.a n = A227733 (n + 1)

end A227733

/-! ## A227733.P12154409904421171110

`(A074400(n+1)+A054785(n+1))*A054785(n+1)`
-/

namespace A227733.P12154409904421171110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) + A054785 (n + 1)) * A054785 (n + 1)

end

end A227733.P12154409904421171110

namespace A227733

/-- `(A074400(n+1)+A054785(n+1))*A054785(n+1)` -/
def P12154409904421171110.Spec : Prop :=
  ∀ n, P12154409904421171110.a n = A227733 (n + 1)

end A227733

/-! ## A227733.P13857564235612167336

`(A326136(2*(n+1))+A326066(2*(n+1)))*A326066(2*(n+1))`
-/

namespace A227733.P13857564235612167336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A326136 (2 * (n + 1)) + A326066 (2 * (n + 1))) * A326066 (2 * (n + 1))

end

end A227733.P13857564235612167336

namespace A227733

/-- `(A326136(2*(n+1))+A326066(2*(n+1)))*A326066(2*(n+1))` -/
def P13857564235612167336.Spec : Prop :=
  ∀ n, P13857564235612167336.a n = A227733 (n + 1)

end A227733

/-! ## A227733.P4417583116883491939

`A072861(2*(n+1))-A072861(n+1)`
-/

namespace A227733.P4417583116883491939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (2 * (n + 1)) - A072861 (n + 1)

end

end A227733.P4417583116883491939

namespace A227733

/-- `A072861(2*(n+1))-A072861(n+1)` -/
def P4417583116883491939.Spec : Prop :=
  ∀ n, P4417583116883491939.a n = A227733 (n + 1)

end A227733

/-! ## A227733.P5752510245574376526

`A258974(2*(n+1))-A258974(n+1)`
-/

namespace A227733.P5752510245574376526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258974 (2 * (n + 1)) - A258974 (n + 1)

end

end A227733.P5752510245574376526

namespace A227733

/-- `A258974(2*(n+1))-A258974(n+1)` -/
def P5752510245574376526.Spec : Prop :=
  ∀ n, P5752510245574376526.a n = A227733 (n + 1)

end A227733

/-! ## A227733.P3997225593559706689

`(A146076(2*(n+1))+A002131(2*(n+1)))*A002131(2*(n+1))`
-/

namespace A227733.P3997225593559706689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146076 (2 * (n + 1)) + A002131 (2 * (n + 1))) * A002131 (2 * (n + 1))

end

end A227733.P3997225593559706689

namespace A227733

/-- `(A146076(2*(n+1))+A002131(2*(n+1)))*A002131(2*(n+1))` -/
def P3997225593559706689.Spec : Prop :=
  ∀ n, P3997225593559706689.a n = A227733 (n + 1)

end A227733

/-! ## A227733.P946700810684977168

`(A074400(2*(n+1))-A002131(2*(n+1)))*A002131(2*(n+1))`
-/

namespace A227733.P946700810684977168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074400 (2 * (n + 1)) - A002131 (2 * (n + 1))) * A002131 (2 * (n + 1))

end

end A227733.P946700810684977168

namespace A227733

/-- `(A074400(2*(n+1))-A002131(2*(n+1)))*A002131(2*(n+1))` -/
def P946700810684977168.Spec : Prop :=
  ∀ n, P946700810684977168.a n = A227733 (n + 1)

end A227733

/-!
# A227734: Negative fundamental discriminants with noncyclic class groups (negated).

The programs for A227734, there is no canonical definition to state claims against.
-/

/-! ## A227734.P15825590532614896666

`∩[A003657(n+1), A357874(n+1)]`
-/

namespace A227734.P15825590532614896666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227734.P15825590532614896666

/-! ## A227734.P13864608620228658429

`∩[A003657(n+1), A350353(n+1)]`
-/

namespace A227734.P13864608620228658429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227734.P13864608620228658429

/-!
# A227736: Irregular table read by rows: the first entry of n-th row is length of run of rightmost identical bits (either 0 or 1, equal to n mod 2), followed by length of the next run of bits, etc., in the binary representation of n, when scanned from the least significant to the most significant end.

The programs for A227736, there is no canonical definition to state claims against.
-/

/-! ## A227736.P1123432321885417902

`A101211(A227741(n+1))`
-/

namespace A227736.P1123432321885417902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (A227741 (n + 1)).toNat

end

end A227736.P1123432321885417902

/-! ## A227736.P16100976815410680469

`Δ[eq[1, A165191(A028310(n))]]`
-/

namespace A227736.P16100976815410680469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165191 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A227736.P16100976815410680469

/-! ## A227736.P4406936844453006708

`Δ[eq[A057427(n), A165191(n)]]`
-/

namespace A227736.P4406936844453006708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165191 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A227736.P4406936844453006708

/-! ## A227736.P3138627552135807385

`Δ[eq[A165191(n), A178334(n)]]`
-/

namespace A227736.P3138627552135807385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165191 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A227736.P3138627552135807385

/-! ## A227736.P13408461511700323765

`Δ[eq[1, A165191(A000007(n)+n)]]`
-/

namespace A227736.P13408461511700323765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165191 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A227736.P13408461511700323765

/-!
# A227737: n occurs as many times as there are runs in binary representation of n.

The programs for A227737, the canonical program `A227737.P16611216507253860611` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227737 has offset 1).

The definition of A227737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227737.P12899035717101627904

`∑[char[A173318(n)]]`
-/

namespace A227737.P12899035717101627904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227737.P12899035717101627904

namespace A227737

/-- `∑[char[A173318(n)]]` -/
def P12899035717101627904.Spec : Prop :=
  ∀ n, (P12899035717101627904.a n : ℤ) = A227737 (n + 1)

end A227737

/-! ## A227737.P3526807751315986223

`∑[char[∑[A005811(n)]]]`
-/

namespace A227737.P3526807751315986223
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227737.P3526807751315986223

namespace A227737

/-- `∑[char[∑[A005811(n)]]]` -/
def P3526807751315986223.Spec : Prop :=
  ∀ n, (P3526807751315986223.a n : ℤ) = A227737 (n + 1)

end A227737

/-! ## A227737.P4682118373450848590

`∑[char[∑[A088748(n)-1]]]`
-/

namespace A227737.P4682118373450848590
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227737.P4682118373450848590

namespace A227737

/-- `∑[char[∑[A088748(n)-1]]]` -/
def P4682118373450848590.Spec : Prop :=
  ∀ n, (P4682118373450848590.a n : ℤ) = A227737 (n + 1)

end A227737

/-! ## A227737.P17591358031206611464

`∑[char[∑[A136004(n)-4]]]`
-/

namespace A227737.P17591358031206611464
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227737.P17591358031206611464

namespace A227737

/-- `∑[char[∑[A136004(n)-4]]]` -/
def P17591358031206611464.Spec : Prop :=
  ∀ n, (P17591358031206611464.a n : ℤ) = A227737 (n + 1)

end A227737

/-! ## A227737.P8478603567010470079

`∑[char[∑[n-A236840(n)]]]`
-/

namespace A227737.P8478603567010470079
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A236840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227737.P8478603567010470079

namespace A227737

/-- `∑[char[∑[n-A236840(n)]]]` -/
def P8478603567010470079.Spec : Prop :=
  ∀ n, (P8478603567010470079.a n : ℤ) = A227737 (n + 1)

end A227737

/-! ## A227737.P12917014076702799258

`∑[char[∑[n-2*A255070(n)]]]`
-/

namespace A227737.P12917014076702799258
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A255070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227737.P12917014076702799258

namespace A227737

/-- `∑[char[∑[n-2*A255070(n)]]]` -/
def P12917014076702799258.Spec : Prop :=
  ∀ n, (P12917014076702799258.a n : ℤ) = A227737 (n + 1)

end A227737

/-! ## A227737.P16611216507253860611

`a(n-A005811(a(n-1)))+1` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227737

/-- `a(n-A005811(a(n-1)))+1` -/
def P16611216507253860611.Spec : Prop :=
  ∀ n, (P16611216507253860611.a n : ℤ) = A227737 (n + 1)

theorem P16611216507253860611.correct : P16611216507253860611.Spec := by
  intro n
  simp only [A227737, Nat.add_sub_cancel]

end A227737

/-! ## A227737.P385383819739555205

`∑[char[∑[A037834(n+1)+1]]]+1`
-/

namespace A227737.P385383819739555205
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A227737.P385383819739555205

namespace A227737

/-- `∑[char[∑[A037834(n+1)+1]]]+1` -/
def P385383819739555205.Spec : Prop :=
  ∀ n, (P385383819739555205.a n : ℤ) = A227737 (n + 1)

end A227737

/-! ## A227737.P13035585813798938485

`char[∑[∑[A034947(n+1)]]]+a(n-1)` with `a(0)=1`
-/

namespace A227737.P13035585813798938485
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A227737.P13035585813798938485

namespace A227737

/-- `char[∑[∑[A034947(n+1)]]]+a(n-1)` -/
def P13035585813798938485.Spec : Prop :=
  ∀ n, (P13035585813798938485.a n : ℤ) = A227737 (n + 1)

end A227737

/-! ## A227737.P1114721373637013906

`∑[char[A303548(n+1)+A000788(n)]]`
-/

namespace A227737.P1114721373637013906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303548 (n + 1) + A000788 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227737.P1114721373637013906

namespace A227737

/-- `∑[char[A303548(n+1)+A000788(n)]]` -/
def P1114721373637013906.Spec : Prop :=
  ∀ n, (P1114721373637013906.a n : ℤ) = A227737 (n + 1)

end A227737

/-! ## A227737.P13001421146139625708

`∑[C(A227739(n+1), A227738(n+1))]`
-/

namespace A227737.P13001421146139625708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A227739 (n + 1)).toNat (A227738 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227737.P13001421146139625708

namespace A227737

/-- `∑[C(A227739(n+1), A227738(n+1))]` -/
def P13001421146139625708.Spec : Prop :=
  ∀ n, (P13001421146139625708.a n : ℤ) = A227737 (n + 1)

end A227737

/-!
# A227738: Irregular table read by rows: each row n (n>=1) lists the positions where the runs of bits change between 0's and 1's in the binary expansion of n, when scanning it from the least significant to the most significant end.

The programs for A227738, there is no canonical definition to state claims against.
-/

/-! ## A227738.P3414447623537382765

`A227739(n+1)+n-A173318(A227737(n+1)-1)`
-/

namespace A227738.P3414447623537382765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (n + 1) + ((n : ℤ) - A173318 (A227737 (n + 1) - 1).toNat)

end

end A227738.P3414447623537382765

/-! ## A227738.P1553481304640902210

`A227739(n+1)+A173318(A227737(n+1))%A227741(n+1)`
-/

namespace A227738.P1553481304640902210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (n + 1) + Int.tmod (A173318 (A227737 (n + 1)).toNat) (A227741 (n + 1))

end

end A227738.P1553481304640902210

/-! ## A227738.P12293029766860593378

`A227740(n+1)+A227739(n+1)`
-/

namespace A227738.P12293029766860593378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227740 (n + 1) + A227739 (n + 1)

end

end A227738.P12293029766860593378

/-! ## A227738.P2612000946831608364

`A001221(xor(9, A241334(3*n+4)))`
-/

namespace A227738.P2612000946831608364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor 9 (A241334 (3 * n + 4))).toNat

end

end A227738.P2612000946831608364

/-! ## A227738.P7951592705505220282

`A296977(A054353(3*n+4)%(2^(n+1)-(n²+n+2)/2)+n+1)`
-/

namespace A227738.P7951592705505220282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296977 (Int.tmod (A054353 (3 * n + 4)) (SequenceMachineLib.roundAway ((2 ^ (n + 1) : ℚ) - (n ^ 2 + (n + 2) : ℚ) / 2)) + (n + 1 : ℤ)).toNat

end

end A227738.P7951592705505220282

/-!
# A227739: Irregular table where row n lists in nondecreasing order the parts of unordered partition encoded in the runlengths of binary expansion of n; nonzero terms of A227189.

The programs for A227739, there is no canonical definition to state claims against.
-/

/-! ## A227739.P17508174461607399739

`A227738(n+1)-(n-A173318(A227737(n+1)-1))`
-/

namespace A227739.P17508174461607399739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227738 (n + 1) - ((n : ℤ) - A173318 (A227737 (n + 1) - 1).toNat)

end

end A227739.P17508174461607399739

/-! ## A227739.P9964829333192199901

`A227738(n+1)-A227740(n+1)`
-/

namespace A227739.P9964829333192199901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227738 (n + 1) - A227740 (n + 1)

end

end A227739.P9964829333192199901

/-!
# A227740: Integers from 0 to A037834(n) followed by integers from 0 to A037834(n+1) and so on.

The programs for A227740, the canonical program `A227740.P15268518559073972483` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227740 has offset 1).

The definition of A227740 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, A227737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227740.P15268518559073972483

`n+1-(1+A173318(A227737(n+1)-1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A227740

/-- `n+1-(1+A173318(A227737(n+1)-1))` -/
def P15268518559073972483.Spec : Prop :=
  ∀ n, P15268518559073972483.a n = A227740 (n + 1)

theorem P15268518559073972483.correct : P15268518559073972483.Spec := by
  intro n
  simp only [A227740, Nat.add_sub_cancel]

end A227740

/-! ## A227740.P9393204072255199872

`A227738(n+1)-A227739(n+1)`
-/

namespace A227740.P9393204072255199872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227738 (n + 1) - A227739 (n + 1)

end

end A227740.P9393204072255199872

namespace A227740

/-- `A227738(n+1)-A227739(n+1)` -/
def P9393204072255199872.Spec : Prop :=
  ∀ n, P9393204072255199872.a n = A227740 (n + 1)

end A227740

/-! ## A227740.P16175359941041821370

`n-A173318(A227737(n+1)-1)`
-/

namespace A227740.P16175359941041821370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A173318 (A227737 (n + 1) - 1).toNat

end

end A227740.P16175359941041821370

namespace A227740

/-- `n-A173318(A227737(n+1)-1)` -/
def P16175359941041821370.Spec : Prop :=
  ∀ n, P16175359941041821370.a n = A227740 (n + 1)

theorem P16175359941041821370.correct : P16175359941041821370.Spec := by
  intro n
  simp only [A227740, Nat.add_sub_cancel, A227740.P16175359941041821370.a, A227740.P15268518559073972483.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A227740

/-! ## A227740.P6395112324547051966

`n-A173318(∑[char[A173318(n+1)]])`
-/

namespace A227740.P6395112324547051966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A173318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227740.P6395112324547051966

namespace A227740

/-- `n-A173318(∑[char[A173318(n+1)]])` -/
def P6395112324547051966.Spec : Prop :=
  ∀ n, P6395112324547051966.a n = A227740 (n + 1)

end A227740

/-! ## A227740.P10043550210678630241

`abs(A173318(A227737(n-log2(1/2))-1)-n)`
-/

namespace A227740.P10043550210678630241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A173318 (A227737 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - 1).toNat - (n : ℤ)|

end

end A227740.P10043550210678630241

namespace A227740

/-- `abs(A173318(A227737(n-log2(1/2))-1)-n)` -/
def P10043550210678630241.Spec : Prop :=
  ∀ n, P10043550210678630241.a n = A227740 (n + 1)

end A227740

/-! ## A227740.P17561024033052801332

`A173318(A227737(n+1))%A227741(n+1)`
-/

namespace A227740.P17561024033052801332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173318 (A227737 (n + 1)).toNat) (A227741 (n + 1))

end

end A227740.P17561024033052801332

namespace A227740

/-- `A173318(A227737(n+1))%A227741(n+1)` -/
def P17561024033052801332.Spec : Prop :=
  ∀ n, P17561024033052801332.a n = A227740 (n + 1)

end A227740

/-!
# A227741: Simple self-inverse permutation of natural numbers: List each block of A005811(n) numbers from A173318(n-1)+1 to A173318(n) in reverse order.

The programs for A227741, the canonical program `A227741.P7881585298706157334` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227741 has offset 1).

The definition of A227741 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, A227737, A227740, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227741.P7881585298706157334

`A173318(A227737(n+1))-A227740(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A227741

/-- `A173318(A227737(n+1))-A227740(n+1)` -/
def P7881585298706157334.Spec : Prop :=
  ∀ n, P7881585298706157334.a n = A227741 (n + 1)

theorem P7881585298706157334.correct : P7881585298706157334.Spec := by
  intro n
  simp only [A227741, Nat.add_sub_cancel]

end A227741

/-! ## A227741.P7405998964754397899

`A173318(A227737(n+1))-(n-A173318(A227737(n+1)-1))`
-/

namespace A227741.P7405998964754397899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 (A227737 (n + 1)).toNat - ((n : ℤ) - A173318 (A227737 (n + 1) - 1).toNat)

end

end A227741.P7405998964754397899

namespace A227741

/-- `A173318(A227737(n+1))-(n-A173318(A227737(n+1)-1))` -/
def P7405998964754397899.Spec : Prop :=
  ∀ n, P7405998964754397899.a n = A227741 (n + 1)

end A227741

/-!
# A227742: Fixed points of permutation A227741.

The programs for A227742, the canonical program `A227742.P14170089042966495226` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227742 has offset 1).

The definition of A227742 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227742.P14170089042966495226

`A173318(2*n)+1/2*(1+A005811(2*(n+1)-1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227742

/-- `A173318(2*n)+1/2*(1+A005811(2*(n+1)-1))` -/
def P14170089042966495226.Spec : Prop :=
  ∀ n, P14170089042966495226.a n = (A227742 (n + 1) : ℚ)

end A227742

/-! ## A227742.P16732970729892409518

`A173318(2*n+1)-A033264(n)`
-/

namespace A227742.P16732970729892409518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 (2 * n + 1) - A033264 n

end

end A227742.P16732970729892409518

namespace A227742

/-- `A173318(2*n+1)-A033264(n)` -/
def P16732970729892409518.Spec : Prop :=
  ∀ n, P16732970729892409518.a n = A227742 (n + 1)

end A227742

/-! ## A227742.P2373106735592600186

`A173318(2*n)+A069010(2*n+1)`
-/

namespace A227742.P2373106735592600186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 (2 * n) + A069010 (2 * n + 1)

end

end A227742.P2373106735592600186

namespace A227742

/-- `A173318(2*n)+A069010(2*n+1)` -/
def P2373106735592600186.Spec : Prop :=
  ∀ n, P2373106735592600186.a n = A227742 (n + 1)

end A227742

/-! ## A227742.P10454109888421278262

`A033264(2*n+1)+A173318(2*n)+1`
-/

namespace A227742.P10454109888421278262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (2 * n + 1) + (A173318 (2 * n) + 1)

end

end A227742.P10454109888421278262

namespace A227742

/-- `A033264(2*n+1)+A173318(2*n)+1` -/
def P10454109888421278262.Spec : Prop :=
  ∀ n, P10454109888421278262.a n = A227742 (n + 1)

end A227742

/-! ## A227742.P7408278176824068720

`A087116(2*n+1)+A173318(2*n)+1`
-/

namespace A227742.P7408278176824068720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (2 * n + 1) + (A173318 (2 * n) + 1)

end

end A227742.P7408278176824068720

namespace A227742

/-- `A087116(2*n+1)+A173318(2*n)+1` -/
def P7408278176824068720.Spec : Prop :=
  ∀ n, P7408278176824068720.a n = A227742 (n + 1)

end A227742

/-! ## A227742.P8653654397448868441

`A173318(2*n+1)-A037800(2*n+1)`
-/

namespace A227742.P8653654397448868441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 (2 * n + 1) - A037800 (2 * n + 1)

end

end A227742.P8653654397448868441

namespace A227742

/-- `A173318(2*n+1)-A037800(2*n+1)` -/
def P8653654397448868441.Spec : Prop :=
  ∀ n, P8653654397448868441.a n = A227742 (n + 1)

end A227742

/-! ## A227742.P2324177868913515374

`A173318(2*n+1)-A037834(2*n+1)/2`
-/

namespace A227742.P2324177868913515374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173318 (2 * n + 1) : ℚ) - (A037834 (2 * n + 1) : ℚ) / 2

end

end A227742.P2324177868913515374

namespace A227742

/-- `A173318(2*n+1)-A037834(2*n+1)/2` -/
def P2324177868913515374.Spec : Prop :=
  ∀ n, P2324177868913515374.a n = (A227742 (n + 1) : ℚ)

end A227742

/-! ## A227742.P17930116593334643044

`A016813(∑[A069010(n)])-A069010(n)`
-/

namespace A227742.P17930116593334643044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A069010 n

end

end A227742.P17930116593334643044

namespace A227742

/-- `A016813(∑[A069010(n)])-A069010(n)` -/
def P17930116593334643044.Spec : Prop :=
  ∀ n, P17930116593334643044.a n = A227742 (n + 1)

end A227742

/-! ## A227742.P13966206254279030069

`∑[A005811(A317333(n+1))+A005811(n)]`
-/

namespace A227742.P13966206254279030069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A317333 (n + 1)).toNat + A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227742.P13966206254279030069

namespace A227742

/-- `∑[A005811(A317333(n+1))+A005811(n)]` -/
def P13966206254279030069.Spec : Prop :=
  ∀ n, P13966206254279030069.a n = A227742 (n + 1)

end A227742

/-! ## A227742.P15583646845887181968

`A227741(eq[n+1, A227741(n+1)]+1)`
-/

namespace A227742.P15583646845887181968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A227742.P15583646845887181968

namespace A227742

/-- `A227741(eq[n+1, A227741(n+1)]+1)` -/
def P15583646845887181968.Spec : Prop :=
  ∀ n, P15583646845887181968.a n = A227742 (n + 1)

end A227742

/-! ## A227742.P16113147175895824333

`record[A025480(A227741(n+1)+n+1)]`
-/

namespace A227742.P16113147175895824333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A227741 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227742.P16113147175895824333

namespace A227742

/-- `record[A025480(A227741(n+1)+n+1)]` -/
def P16113147175895824333.Spec : Prop :=
  ∀ n, P16113147175895824333.a n = A227742 (n + 1)

end A227742

/-! ## A227742.P8322340647009976957

`eq[1, abs(A256696(n))]`
-/

namespace A227742.P8322340647009976957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256696 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227742.P8322340647009976957

namespace A227742

/-- `eq[1, abs(A256696(n))]` -/
def P8322340647009976957.Spec : Prop :=
  ∀ n, (P8322340647009976957.a n : ℤ) = A227742 (n + 1)

end A227742

/-! ## A227742.P10305648859722792505

`record[(n+1)/A256696(n+1)²]`
-/

namespace A227742.P10305648859722792505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A256696 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227742.P10305648859722792505

namespace A227742

/-- `record[(n+1)/A256696(n+1)²]` -/
def P10305648859722792505.Spec : Prop :=
  ∀ n, P10305648859722792505.a n = (A227742 (n + 1) : ℚ)

end A227742

/-!
# A227743: Integers n for which A173318(n) is a square.

The programs for A227743, there is no canonical definition to state claims against.
-/

/-! ## A227743.P4770159575209814203

`lt[1, A000122(A173318(n))+1]`
-/

namespace A227743.P4770159575209814203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A173318 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227743.P4770159575209814203

/-! ## A227743.P2530820798389415714

`lt[0, A000122(A164910(n+1)-(n+1))]`
-/

namespace A227743.P2530820798389415714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A164910 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227743.P2530820798389415714

/-! ## A227743.P15732754209276712824

`lt[A000122(n), 2*A000122(A173318(n))]`
-/

namespace A227743.P15732754209276712824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000122 (A173318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227743.P15732754209276712824

/-! ## A227743.P13721553121807860665

`eq[A000122(A173318(n)), A018173(n²%(n+1))]`
-/

namespace A227743.P13721553121807860665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A173318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018173 (n ^ 2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227743.P13721553121807860665

/-!
# A227744: Squares that occur in A173318.

The programs for A227744, there is no canonical definition to state claims against.
-/

/-! ## A227744.P14328697406119661393

`A173318(A227743(n+1))`
-/

namespace A227744.P14328697406119661393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 (A227743 (n + 1)).toNat

end

end A227744.P14328697406119661393

/-! ## A227744.P10900449719956219392

`A227745(n+1)²`
-/

namespace A227744.P10900449719956219392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227745 (n + 1) ^ 2

end

end A227744.P10900449719956219392

/-! ## A227744.P4623719506183977385

`A227745(2*(n+1)-(n+1))*A227745(n+1)`
-/

namespace A227744.P4623719506183977385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227745 (2 * (n + 1) - (n + 1)) * A227745 (n + 1)

end

end A227744.P4623719506183977385

/-! ## A227744.P15332670748969030891

`A227745(n+1)^A005811(2^A005811(n))`
-/

namespace A227744.P15332670748969030891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227745 (n + 1) : ℚ) ^ (A005811 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A005811 n : ℤ))).toNat : ℤ)

end

end A227744.P15332670748969030891

/-! ## A227744.P2427627366357272045

`∑{d}[A227745(n+1), A000010(#)*A227745(n+1)]`
-/

namespace A227744.P2427627366357272045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d * A227745 (n + 1)

end

end A227744.P2427627366357272045

/-! ## A227744.P7263686789709413851

`A227745(n+1)^A053669(2*n+5)`
-/

namespace A227744.P7263686789709413851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227745 (n + 1) : ℚ) ^ (A053669 (2 * n + 5) : ℤ)

end

end A227744.P7263686789709413851

/-! ## A227744.P13590732836935876440

`A004652(2*A227745(n+1))`
-/

namespace A227744.P13590732836935876440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A227745 (n + 1)).toNat

end

end A227744.P13590732836935876440

/-! ## A227744.P12139748770508397507

`A004652(A227745(n+1)+A227745(n+1))`
-/

namespace A227744.P12139748770508397507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A227745 (n + 1) + A227745 (n + 1)).toNat

end

end A227744.P12139748770508397507

/-! ## A227744.P17992550663756682784

`∩[n², A173318(n)]`
-/

namespace A227744.P17992550663756682784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227744.P17992550663756682784

/-!
# A227745: Nonnegative integers whose squares occur in A173318.

The programs for A227745, there is no canonical definition to state claims against.
-/

/-! ## A227745.P10383518602730835688

`sqrt(A227744(n+1))`
-/

namespace A227745.P10383518602730835688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A227744 (n + 1) : ℝ)

end

end A227745.P10383518602730835688

/-! ## A227745.P2854625462180444183

`A227744(2*n+1-n)^(1/2)`
-/

namespace A227745.P2854625462180444183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A227744 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A227745.P2854625462180444183

/-! ## A227745.P6673312600599008981

`record[A056926(A173318(n))]`
-/

namespace A227745.P6673312600599008981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A173318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227745.P6673312600599008981

/-! ## A227745.P15128678653069817022

`A056926(A227744(n+1))^A056926(A003817(2*(n+1)))`
-/

namespace A227745.P15128678653069817022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056926 (A227744 (n + 1)).toNat : ℚ) ^ (A056926 (A003817 (2 * (n + 1))).toNat : ℤ)

end

end A227745.P15128678653069817022

/-! ## A227745.P17650259641267917819

`A056926(A227744(n+1))^A001222(A088748(2*(n+1)))`
-/

namespace A227745.P17650259641267917819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056926 (A227744 (n + 1)).toNat : ℚ) ^ (A001222 (A088748 (2 * (n + 1))).toNat : ℤ)

end

end A227745.P17650259641267917819

/-!
# A227746: Number of n X n 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X (n+1) binary array having determinant equal to one.

The programs for A227746, there is no canonical definition to state claims against.
-/

/-! ## A227746.P14483155902685882341

`A227751(∑[4*n]+1)`
-/

namespace A227746.P14483155902685882341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227746.P14483155902685882341

/-! ## A227746.P14622926415984845721

`record[A003982(n)*A227751(n+1)]`
-/

namespace A227746.P14622926415984845721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A227751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227746.P14622926415984845721

/-! ## A227746.P11802989177326132560

`A227751(A001844(n))+A056965(n)`
-/

namespace A227746.P11802989177326132560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A001844 n).toNat + A056965 n

end

end A227746.P11802989177326132560

/-! ## A227746.P17064395159675113498

`A227751(A001844(n))+A084904(n)`
-/

namespace A227746.P17064395159675113498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A001844 n).toNat + A084904 n

end

end A227746.P17064395159675113498

/-! ## A227746.P3489288854248875191

`A047996(n)*A227751(A001844(n))`
-/

namespace A227746.P3489288854248875191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A227751 (A001844 n).toNat

end

end A227746.P3489288854248875191

/-!
# A227747: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having determinant equal to one.

The programs for A227747, there is no canonical definition to state claims against.
-/

/-! ## A227747.P2350726384073143895

`A227751(∑[n+1]+2)`
-/

namespace A227747.P2350726384073143895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A227747.P2350726384073143895

/-! ## A227747.P15252407840617752101

`record[A227751(Δ[A003453(n+5)])]`
-/

namespace A227747.P15252407840617752101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227747.P15252407840617752101

/-! ## A227747.P9477755369507623914

`record[A227751(n+2)/A064297(n+1)]`
-/

namespace A227747.P9477755369507623914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227751 (n + 2) : ℚ) / (A064297 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227747.P9477755369507623914

/-! ## A227747.P11961085386360358375

`record[A227751(n+2)/A142465(n+2)]`
-/

namespace A227747.P11961085386360358375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227751 (n + 2) : ℚ) / (A142465 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227747.P11961085386360358375

/-! ## A227747.P13566536932603408067

`record[A227751(A000096(val(n+1, 2)+1))]`
-/

namespace A227747.P13566536932603408067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227747.P13566536932603408067

/-!
# A227748: Number of n X 3 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 4 binary array having determinant equal to one.

The programs for A227748, there is no canonical definition to state claims against.
-/

/-! ## A227748.P12582026192848489903

`A227751(∑[n+2]+4)`
-/

namespace A227748.P12582026192848489903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227748.P12582026192848489903

/-! ## A227748.P13562378823843283496

`A326682(n)+A227751(A167614(n+1))`
-/

namespace A227748.P13562378823843283496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 n + A227751 (A167614 (n + 1)).toNat

end

end A227748.P13562378823843283496

/-! ## A227748.P920792750291623767

`A063435(n)*A227751(A167614(n+1))`
-/

namespace A227748.P920792750291623767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A227751 (A167614 (n + 1)).toNat

end

end A227748.P920792750291623767

/-! ## A227748.P13297791140643997019

`lcm(A087960(n), A227751(A167614(n+1)))`
-/

namespace A227748.P13297791140643997019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A227751 (A167614 (n + 1)).toNat)

end

end A227748.P13297791140643997019

/-! ## A227748.P5225969396156882806

`or(A000007(n), A227751(A167614(n+1)))`
-/

namespace A227748.P5225969396156882806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A227751 (A167614 (n + 1)).toNat)

end

end A227748.P5225969396156882806

/-!
# A227749: Number of n X 4 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 5 binary array having determinant equal to one.

The programs for A227749, there is no canonical definition to state claims against.
-/

/-! ## A227749.P10875941529162357193

`A227751(A374004(n+1))`
-/

namespace A227749.P10875941529162357193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A374004 (n + 1)).toNat

end

end A227749.P10875941529162357193

/-! ## A227749.P6868216392310642066

`A227751(A052905(n)+9)`
-/

namespace A227749.P6868216392310642066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A052905 n + 9).toNat

end

end A227749.P6868216392310642066

/-! ## A227749.P9532095681774978264

`A227751(A055999(n)+10)`
-/

namespace A227749.P9532095681774978264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A055999 n + 10).toNat

end

end A227749.P9532095681774978264

/-! ## A227749.P3851316958156431662

`A227751(A167614(n+2)+1)`
-/

namespace A227749.P3851316958156431662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A167614 (n + 2) + 1).toNat

end

end A227749.P3851316958156431662

/-! ## A227749.P11559062848008922339

`A227751(A141214(n+1))`
-/

namespace A227749.P11559062848008922339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A141214 (n + 1)).toNat

end

end A227749.P11559062848008922339

/-!
# A227750: Number of n X 5 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 6 binary array having determinant equal to one.

The programs for A227750, there is no canonical definition to state claims against.
-/

/-! ## A227750.P17519528323514809975

`A227751(A374005(n+1))`
-/

namespace A227750.P17519528323514809975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A374005 (n + 1)).toNat

end

end A227750.P17519528323514809975

/-! ## A227750.P5431899169370063848

`A227751(A167499(n+3))`
-/

namespace A227750.P5431899169370063848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A167499 (n + 3)).toNat

end

end A227750.P5431899169370063848

/-! ## A227750.P7004058929421125582

`A227751(A077169(n+5))`
-/

namespace A227750.P7004058929421125582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A077169 (n + 5)).toNat

end

end A227750.P7004058929421125582

/-! ## A227750.P14751818118713522953

`A227751(A056000(n)+15)`
-/

namespace A227750.P14751818118713522953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A056000 n + 15).toNat

end

end A227750.P14751818118713522953

/-! ## A227750.P1949314594854896329

`A227751(A055998(n+2)+8)`
-/

namespace A227750.P1949314594854896329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (A055998 (n + 2) + 8).toNat

end

end A227750.P1949314594854896329

/-!
# A227751: T(n,k) = Number of n X k 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X (k+1) binary array having determinant equal to one.

The programs for A227751, there is no canonical definition to state claims against.
-/

/-! ## A227751.P13131059243060766977

`A181206(n+1)+Δ[A260794(n+3)]`
-/

namespace A227751.P13131059243060766977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260794 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (n + 1) + (f1 (n + 1) - f1 n)

end

end A227751.P13131059243060766977

/-! ## A227751.P11541441444110206425

`A181206(A032555(n+1))+A137688(n)`
-/

namespace A227751.P11541441444110206425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (A032555 (n + 1)).toNat + A137688 n

end

end A227751.P11541441444110206425

/-! ## A227751.P5092886022483043304

`A181206(A276142(n+1))+A137688(n)`
-/

namespace A227751.P5092886022483043304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (A276142 (n + 1)).toNat + A137688 n

end

end A227751.P5092886022483043304

/-! ## A227751.P6057558122761844096

`A282528(n+1)-A055640(A244309(n))`
-/

namespace A227751.P6057558122761844096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (n + 1) - A055640 (A244309 n).toNat

end

end A227751.P6057558122761844096

/-! ## A227751.P4432169689421220355

`A004214(A287377(n)*A295051(n+1))`
-/

namespace A227751.P4432169689421220355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (A287377 n * A295051 (n + 1)).toNat

end

end A227751.P4432169689421220355

/-!
# A227752: a(n) is the number of occurrences of n in A226062.

The programs for A227752, there is no canonical definition to state claims against.
-/

/-! ## A227752.P12876720459142772444

`A335036(2*n+1)%A277892(A247421(3*n+4))`
-/

namespace A227752.P12876720459142772444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335036 (2 * n + 1)) (A277892 (A247421 (3 * n + 4)).toNat)

end

end A227752.P12876720459142772444

/-! ## A227752.P17177112104036555215

`A234538(A297595(2*(n+1)))`
-/

namespace A227752.P17177112104036555215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 (A297595 (2 * (n + 1))).toNat

end

end A227752.P17177112104036555215

/-! ## A227752.P14887519365730593546

`A194285(A080147(n+5)*A357998(n+8))`
-/

namespace A227752.P14887519365730593546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A080147 (n + 5) * A357998 (n + 8)).toNat

end

end A227752.P14887519365730593546

/-! ## A227752.P13192099048399110708

`val(A185359(A001897(n)), 8)`
-/

namespace A227752.P13192099048399110708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A185359 (A001897 n).toNat).toNat 8

end

end A227752.P13192099048399110708

/-! ## A227752.P12244307815477637320

`A286627(∑[A051487(n+1)]+1)`
-/

namespace A227752.P12244307815477637320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A227752.P12244307815477637320

/-!
# A227753: Numbers which do not occur in A226062; numbers which encode Garden of Eden partitions in Bulgarian Solitaire in runlengths of their binary representation.

The programs for A227753, there is no canonical definition to state claims against.
-/

/-! ## A227753.P5430137436886515010

`eq[0, A227752(n)]`
-/

namespace A227753.P5430137436886515010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227753.P5430137436886515010

/-! ## A227753.P6784169025497713006

`lt[4^A227185(n), n]`
-/

namespace A227753.P6784169025497713006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A227185 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A227753.P6784169025497713006

/-! ## A227753.P6250766313223465223

`lt[A227752(n+1), 1]+1`
-/

namespace A227753.P6250766313223465223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A227753.P6250766313223465223

/-! ## A227753.P16497522285403815660

`lt[A227752(2*n-n), 1]`
-/

namespace A227753.P16497522285403815660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 (2 * n - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227753.P16497522285403815660

/-! ## A227753.P4546433292939591339

`lt[A320042(round(acot(n)+n)), -1]`
-/

namespace A227753.P4546433292939591339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227753.P4546433292939591339

/-! ## A227753.P4586200553470551940

`lt[1, -A320042(n+1)]+1`
-/

namespace A227753.P4586200553470551940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A320042 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A227753.P4586200553470551940

/-! ## A227753.P12492521181800916612

`lt[2, A145037(xor(n, floor(n/2)))]`
-/

namespace A227753.P12492521181800916612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227753.P12492521181800916612

/-! ## A227753.P12363998107279527471

`abs(2-lt[A227752(abs(2-n)), 1])`
-/

namespace A227753.P12363998107279527471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 |2 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)|

end

end A227753.P12363998107279527471

/-! ## A227753.P13153468114158317527

`lt[4*n, A343049(xor(n, floor(n/2)))]`
-/

namespace A227753.P13153468114158317527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343049 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227753.P13153468114158317527

/-! ## A227753.P7502919923953602250

`lt[n, A000045(A005811(n))^3]`
-/

namespace A227753.P7502919923953602250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A005811 n).toNat ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227753.P7502919923953602250

/-!
# A227756: Primes p such that antisigma(p) = antisigma(p+1) + 12, where antisigma = A024816.

The programs for A227756, the canonical program `A227756.P7600126737696958243` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227756 has offset 1).

The definition of A227756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227756.P12790937439959370551

`p?[A227757(n+1)]`
-/

namespace A227756.P12790937439959370551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227756.P12790937439959370551

namespace A227756

/-- `p?[A227757(n+1)]` -/
def P12790937439959370551.Spec : Prop :=
  ∀ n, P12790937439959370551.a n = A227756 (n + 1)

end A227756

/-! ## A227756.P2497218314360089024

`p?[record[A227757(A242112(n))]]`
-/

namespace A227756.P2497218314360089024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227756.P2497218314360089024

namespace A227756

/-- `p?[record[A227757(A242112(n))]]` -/
def P2497218314360089024.Spec : Prop :=
  ∀ n, P2497218314360089024.a n = A227756 (n + 1)

end A227756

/-! ## A227756.P1012300636263165775

`p?[record[A227757(A286626(n))]]`
-/

namespace A227756.P1012300636263165775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (A286626 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227756.P1012300636263165775

namespace A227756

/-- `p?[record[A227757(A286626(n))]]` -/
def P1012300636263165775.Spec : Prop :=
  ∀ n, P1012300636263165775.a n = A227756 (n + 1)

end A227756

/-! ## A227756.P7600126737696958243

`p?[A141545(n+1)-1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A227756

/-- `p?[A141545(n+1)-1]` -/
def P7600126737696958243.Spec : Prop :=
  ∀ n, P7600126737696958243.a n = A227756 (n + 1)

theorem P7600126737696958243.correct : P7600126737696958243.Spec := by
  intro n
  simp only [A227756, Nat.add_sub_cancel]

end A227756

/-! ## A227756.P5186900225399121189

`∩[A165319(n+1), A227757(n+1)]`
-/

namespace A227756.P5186900225399121189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P5186900225399121189

namespace A227756

/-- `∩[A165319(n+1), A227757(n+1)]` -/
def P5186900225399121189.Spec : Prop :=
  ∀ n, (P5186900225399121189.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P16314639910431932190

`∩[A079152(n+1), A227757(n+1)]`
-/

namespace A227756.P16314639910431932190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P16314639910431932190

namespace A227756

/-- `∩[A079152(n+1), A227757(n+1)]` -/
def P16314639910431932190.Spec : Prop :=
  ∀ n, (P16314639910431932190.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P15051681130650936978

`∩[A003627(n+1), A227757(n+1)]`
-/

namespace A227756.P15051681130650936978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P15051681130650936978

namespace A227756

/-- `∩[A003627(n+1), A227757(n+1)]` -/
def P15051681130650936978.Spec : Prop :=
  ∀ n, (P15051681130650936978.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P16913367347333101030

`∩[A007528(n+1), A227757(n+1)]`
-/

namespace A227756.P16913367347333101030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P16913367347333101030

namespace A227756

/-- `∩[A007528(n+1), A227757(n+1)]` -/
def P16913367347333101030.Spec : Prop :=
  ∀ n, (P16913367347333101030.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P5189377890907264915

`∩[A045309(n+1), A227757(n+1)]`
-/

namespace A227756.P5189377890907264915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P5189377890907264915

namespace A227756

/-- `∩[A045309(n+1), A227757(n+1)]` -/
def P5189377890907264915.Spec : Prop :=
  ∀ n, (P5189377890907264915.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P15014414689777128863

`∩[A045410(n+1), A227757(n+1)]`
-/

namespace A227756.P15014414689777128863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P15014414689777128863

namespace A227756

/-- `∩[A045410(n+1), A227757(n+1)]` -/
def P15014414689777128863.Spec : Prop :=
  ∀ n, (P15014414689777128863.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P3021192107774389890

`∩[A056955(n+1), A227757(n+1)]`
-/

namespace A227756.P3021192107774389890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P3021192107774389890

namespace A227756

/-- `∩[A056955(n+1), A227757(n+1)]` -/
def P3021192107774389890.Spec : Prop :=
  ∀ n, (P3021192107774389890.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P17298878029362689494

`∩[A015919(n+1), A227757(n+1)]`
-/

namespace A227756.P17298878029362689494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P17298878029362689494

namespace A227756

/-- `∩[A015919(n+1), A227757(n+1)]` -/
def P17298878029362689494.Spec : Prop :=
  ∀ n, (P17298878029362689494.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P639967507940753874

`∩[A066720(n+1), A227757(n+1)]`
-/

namespace A227756.P639967507940753874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P639967507940753874

namespace A227756

/-- `∩[A066720(n+1), A227757(n+1)]` -/
def P639967507940753874.Spec : Prop :=
  ∀ n, (P639967507940753874.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P18279244396394562106

`∩[A227757(n+1), A320518(n+1)]`
-/

namespace A227756.P18279244396394562106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P18279244396394562106

namespace A227756

/-- `∩[A227757(n+1), A320518(n+1)]` -/
def P18279244396394562106.Spec : Prop :=
  ∀ n, (P18279244396394562106.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P3819174248328215932

`∩[A049596(n+1), A227757(n+1)]`
-/

namespace A227756.P3819174248328215932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P3819174248328215932

namespace A227756

/-- `∩[A049596(n+1), A227757(n+1)]` -/
def P3819174248328215932.Spec : Prop :=
  ∀ n, (P3819174248328215932.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P12291206404876313441

`∩[A164319(n+1), A227757(n+1)]`
-/

namespace A227756.P12291206404876313441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P12291206404876313441

namespace A227756

/-- `∩[A164319(n+1), A227757(n+1)]` -/
def P12291206404876313441.Spec : Prop :=
  ∀ n, (P12291206404876313441.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P472725897965278197

`∩[A227757(n+1), A380468(n+1)]`
-/

namespace A227756.P472725897965278197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P472725897965278197

namespace A227756

/-- `∩[A227757(n+1), A380468(n+1)]` -/
def P472725897965278197.Spec : Prop :=
  ∀ n, (P472725897965278197.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P16519988292066230000

`∩[A040044(n+1), A227757(n+1)]`
-/

namespace A227756.P16519988292066230000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P16519988292066230000

namespace A227756

/-- `∩[A040044(n+1), A227757(n+1)]` -/
def P16519988292066230000.Spec : Prop :=
  ∀ n, (P16519988292066230000.a n : ℤ) = A227756 (n + 1)

end A227756

/-! ## A227756.P8178317483115020079

`∩[A040046(n+1), A227757(n+1)]`
-/

namespace A227756.P8178317483115020079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227756.P8178317483115020079

namespace A227756

/-- `∩[A040046(n+1), A227757(n+1)]` -/
def P8178317483115020079.Spec : Prop :=
  ∀ n, (P8178317483115020079.a n : ℤ) = A227756 (n + 1)

end A227756

/-!
# A227757: Numbers k such that antisigma(k) = antisigma(k+1) + 12; where antisigma(k) = A024816(k).

The programs for A227757, there is no canonical definition to state claims against.
-/

/-! ## A227757.P10428794798130690442

`eq[A033662(n+1), A340793(n+1)]`
-/

namespace A227757.P10428794798130690442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227757.P10428794798130690442

/-! ## A227757.P5826880838916368201

`eq[A047700(n+1), A340793(n+1)]`
-/

namespace A227757.P5826880838916368201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227757.P5826880838916368201

/-! ## A227757.P14108853235865890523

`eq[A078137(n+1), A340793(n+1)]`
-/

namespace A227757.P14108853235865890523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227757.P14108853235865890523

/-! ## A227757.P1288393394373862505

`eq[A174724(n+1), A340793(n+1)]`
-/

namespace A227757.P1288393394373862505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227757.P1288393394373862505

/-! ## A227757.P16293837224152902691

`eq[A340793(n+1), A344805(n+1)]`
-/

namespace A227757.P16293837224152902691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227757.P16293837224152902691

/-!
# A227758: a(n) = sigma(sigma(n)) - sigma(n) - n, where sigma(n) = A000203(n) = sum of the divisors of n.

The programs for A227758, the canonical program `A227758.P8934593272528539020` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227758 has offset 1).

The definition of A227758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227758.P8934593272528539020

`A051027(n+1)-A000203(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227758

/-- `A051027(n+1)-A000203(n+1)-(n+1)` -/
def P8934593272528539020.Spec : Prop :=
  ∀ n, P8934593272528539020.a n = A227758 (n + 1)

theorem P8934593272528539020.correct : P8934593272528539020.Spec := by
  intro n
  simp only [A227758, Nat.add_sub_cancel]

end A227758

/-! ## A227758.P16747762443330362950

`A051027(n+1)-A155085(n+1)`
-/

namespace A227758.P16747762443330362950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A155085 (n + 1)

end

end A227758.P16747762443330362950

namespace A227758

/-- `A051027(n+1)-A155085(n+1)` -/
def P16747762443330362950.Spec : Prop :=
  ∀ n, P16747762443330362950.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P6896457747057499861

`∑[A111408(n)-1]-A000203(n+1)`
-/

namespace A227758.P6896457747057499861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000203 (n + 1)

end

end A227758.P6896457747057499861

namespace A227758

/-- `∑[A111408(n)-1]-A000203(n+1)` -/
def P6896457747057499861.Spec : Prop :=
  ∀ n, P6896457747057499861.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P15738991993713744509

`A051027(n+1)-(A088580(n+1)+n)`
-/

namespace A227758.P15738991993713744509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - (A088580 (n + 1) + (n : ℤ))

end

end A227758.P15738991993713744509

namespace A227758

/-- `A051027(n+1)-(A088580(n+1)+n)` -/
def P15738991993713744509.Spec : Prop :=
  ∀ n, P15738991993713744509.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P14394505323242389118

`A000203(A000203(n+1))-A155085(n+1)`
-/

namespace A227758.P14394505323242389118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat - A155085 (n + 1)

end

end A227758.P14394505323242389118

namespace A227758

/-- `A000203(A000203(n+1))-A155085(n+1)` -/
def P14394505323242389118.Spec : Prop :=
  ∀ n, P14394505323242389118.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P18010535608709131022

`A000203(A000203(n+1))-(A088580(n+1)+n)`
-/

namespace A227758.P18010535608709131022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat - (A088580 (n + 1) + (n : ℤ))

end

end A227758.P18010535608709131022

namespace A227758

/-- `A000203(A000203(n+1))-(A088580(n+1)+n)` -/
def P18010535608709131022.Spec : Prop :=
  ∀ n, P18010535608709131022.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P5005179374505678212

`A001065(n+1)-A033879(A245092(2*n+1))`
-/

namespace A227758.P5005179374505678212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A033879 (A245092 (2 * n + 1)).toNat

end

end A227758.P5005179374505678212

namespace A227758

/-- `A001065(n+1)-A033879(A245092(2*n+1))` -/
def P5005179374505678212.Spec : Prop :=
  ∀ n, P5005179374505678212.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P13957699484717976588

`A001065(∑{d}[n+1, #])-(n+1)`
-/

namespace A227758.P13957699484717976588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (∑ d ∈ Nat.divisors (f1 n), d) - (n + 1 : ℤ)

end

end A227758.P13957699484717976588

namespace A227758

/-- `A001065(∑{d}[n+1, #])-(n+1)` -/
def P13957699484717976588.Spec : Prop :=
  ∀ n, P13957699484717976588.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P7317653221868159678

`A001065(A000203(n+1))-(n+1)`
-/

namespace A227758.P7317653221868159678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000203 (n + 1)).toNat - (n + 1 : ℤ)

end

end A227758.P7317653221868159678

namespace A227758

/-- `A001065(A000203(n+1))-(n+1)` -/
def P7317653221868159678.Spec : Prop :=
  ∀ n, P7317653221868159678.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P5007213074868112866

`A001065(A088580(n+1)-1)-(n+1)`
-/

namespace A227758.P5007213074868112866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A088580 (n + 1) - 1).toNat - (n + 1 : ℤ)

end

end A227758.P5007213074868112866

namespace A227758

/-- `A001065(A088580(n+1)-1)-(n+1)` -/
def P5007213074868112866.Spec : Prop :=
  ∀ n, P5007213074868112866.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P16461291674774906314

`A001065(A245092(2*n+1))-(n+1)`
-/

namespace A227758.P16461291674774906314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A245092 (2 * n + 1)).toNat - (n + 1 : ℤ)

end

end A227758.P16461291674774906314

namespace A227758

/-- `A001065(A245092(2*n+1))-(n+1)` -/
def P16461291674774906314.Spec : Prop :=
  ∀ n, P16461291674774906314.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P16797219483518944191

`A001065(A001065(n+1)+n+1)-(n+1)`
-/

namespace A227758.P16797219483518944191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A001065 (n + 1) + (n + 1 : ℤ)).toNat - (n + 1 : ℤ)

end

end A227758.P16797219483518944191

namespace A227758

/-- `A001065(A001065(n+1)+n+1)-(n+1)` -/
def P16797219483518944191.Spec : Prop :=
  ∀ n, P16797219483518944191.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P7364979588806476926

`A048050(A000203(n+1))-A028310(n)`
-/

namespace A227758.P7364979588806476926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A000203 (n + 1)).toNat - A028310 n

end

end A227758.P7364979588806476926

namespace A227758

/-- `A048050(A000203(n+1))-A028310(n)` -/
def P7364979588806476926.Spec : Prop :=
  ∀ n, P7364979588806476926.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P1998340198025091419

`A033880(A000203(n+1))+A001065(n+1)`
-/

namespace A227758.P1998340198025091419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A000203 (n + 1)).toNat + A001065 (n + 1)

end

end A227758.P1998340198025091419

namespace A227758

/-- `A033880(A000203(n+1))+A001065(n+1)` -/
def P1998340198025091419.Spec : Prop :=
  ∀ n, P1998340198025091419.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P11076913327619228427

`A245092(A074400(n+1)-1)-A155085(n+1)`
-/

namespace A227758.P11076913327619228427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A074400 (n + 1) - 1).toNat - A155085 (n + 1)

end

end A227758.P11076913327619228427

namespace A227758

/-- `A245092(A074400(n+1)-1)-A155085(n+1)` -/
def P11076913327619228427.Spec : Prop :=
  ∀ n, P11076913327619228427.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P18036424735093792540

`A001065(A285703(A048673(n+1)))-(n+1)`
-/

namespace A227758.P18036424735093792540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A285703 (A048673 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A227758.P18036424735093792540

namespace A227758

/-- `A001065(A285703(A048673(n+1)))-(n+1)` -/
def P18036424735093792540.Spec : Prop :=
  ∀ n, P18036424735093792540.a n = A227758 (n + 1)

end A227758

/-! ## A227758.P14957813444090568224

`A001065(A245093(∑[n+1]))-(n+1)`
-/

namespace A227758.P14957813444090568224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A245093 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (n + 1 : ℤ)

end

end A227758.P14957813444090568224

namespace A227758

/-- `A001065(A245093(∑[n+1]))-(n+1)` -/
def P14957813444090568224.Spec : Prop :=
  ∀ n, P14957813444090568224.a n = A227758 (n + 1)

end A227758

/-!
# A227759: Numbers n such that A227758(n) = sigma(sigma(n)) - sigma(n) - n < 0, where sigma(n) = A000203(n) = sum of the divisors of n.

The programs for A227759, there is no canonical definition to state claims against.
-/

/-! ## A227759.P17163488992290270736

`lt[A227758(n+1), 0]+1`
-/

namespace A227759.P17163488992290270736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227758 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A227759.P17163488992290270736

/-! ## A227759.P1924923219767055869

`lt[A001065(∑{d}[abs(1-n)+1, #]), n]`
-/

namespace A227759.P1924923219767055869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A227759.P1924923219767055869

/-! ## A227759.P11204433767146872777

`lt[A001065(∑{d}[n+1, #]), n+1]+1`
-/

namespace A227759.P11204433767146872777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A227759.P11204433767146872777

/-! ## A227759.P16916905620103721616

`lt[A001065(A039653(n)+1), n]`
-/

namespace A227759.P16916905620103721616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A039653 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227759.P16916905620103721616

/-! ## A227759.P237180156369721084

`lt[A001065(A000203(n+1)), n+1]+1`
-/

namespace A227759.P237180156369721084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A227759.P237180156369721084

/-! ## A227759.P13704656826286271406

`lt[A051027(n+1), A155085(n+1)]+1`
-/

namespace A227759.P13704656826286271406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227759.P13704656826286271406

/-! ## A227759.P13960099736311922022

`lt[A048050(A000203(n+1)), A028310(n)]+1`
-/

namespace A227759.P13960099736311922022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227759.P13960099736311922022

/-! ## A227759.P2590226125443578491

`lt[A000203(A000203(n+1)), A155085(n+1)]+1`
-/

namespace A227759.P2590226125443578491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227759.P2590226125443578491

/-! ## A227759.P1341758994745716616

`lt[A245092(A074400(n+1)-1), A155085(n+1)]+1`
-/

namespace A227759.P1341758994745716616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A074400 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227759.P1341758994745716616

/-! ## A227759.P11374235502077363840

`lt[A088580(A088580(n+1)-1)-1, A155085(n+1)]+1`
-/

namespace A227759.P11374235502077363840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A088580 (n + 1) - 1).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227759.P11374235502077363840

/-!
# A227760: Numbers n such that A227758(n) = sigma(sigma(n)) - sigma(n) - n > 0, where sigma(n) = A000203(n) = sum of the divisors of n.

The programs for A227760, there is no canonical definition to state claims against.
-/

/-! ## A227760.P13458870585161660322

`lt[0, A227758(n+1)]+1`
-/

namespace A227760.P13458870585161660322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227758 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A227760.P13458870585161660322

/-! ## A227760.P14194026893199076408

`lt[n+1, A001065(∑{d}[n+1, #])]+1`
-/

namespace A227760.P14194026893199076408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A227760.P14194026893199076408

/-! ## A227760.P9061511099709435235

`lt[0, A227758(A028310(n))]`
-/

namespace A227760.P9061511099709435235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227758 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227760.P9061511099709435235

/-! ## A227760.P16225339486766301131

`A065475(lt[0, A227758(n+1)])`
-/

namespace A227760.P16225339486766301131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A227760.P16225339486766301131

/-! ## A227760.P3575805946475946751

`lt[0, A227758(A233583(n+1))]`
-/

namespace A227760.P3575805946475946751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227758 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227760.P3575805946475946751

/-! ## A227760.P14932991453717209353

`lt[n, A001065(A039653(n)+1)]`
-/

namespace A227760.P14932991453717209353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227760.P14932991453717209353

/-! ## A227760.P6339065062505350269

`lt[n, A048050(A000203(n+1))]+1`
-/

namespace A227760.P6339065062505350269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A227760.P6339065062505350269

/-! ## A227760.P5441645844159756424

`lt[A155085(n+1), A051027(n+1)]+1`
-/

namespace A227760.P5441645844159756424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227760.P5441645844159756424

/-! ## A227760.P15096674718070939832

`lt[A155085(n+1), A000203(A000203(n+1))]+1`
-/

namespace A227760.P15096674718070939832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227760.P15096674718070939832

/-!
# A227761: a(n) is the maximal difference between successive parts in the minimally runlength-encoded unordered partition of n (A227368(n)).

The programs for A227761, there is no canonical definition to state claims against.
-/

/-! ## A227761.P8678549520507070680

`A267193(n+3)%A362716(A362931(2*n+1))`
-/

namespace A227761.P8678549520507070680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267193 (n + 3)) (A362716 (A362931 (2 * n + 1)).toNat)

end

end A227761.P8678549520507070680

/-! ## A227761.P4931154414523884199

`A235791(A085478(3*(n+1)))%A011973(n)`
-/

namespace A227761.P4931154414523884199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235791 (A085478 (3 * (n + 1))).toNat) (A011973 n)

end

end A227761.P4931154414523884199

/-! ## A227761.P4833510242017191804

`A086076(lcm(A211956(n+3), A270831(n+1)))`
-/

namespace A227761.P4833510242017191804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086076 (Int.lcm (A211956 (n + 3)) (A270831 (n + 1)))

end

end A227761.P4833510242017191804

/-! ## A227761.P1515714254429261889

`and(A014566(A071628(n+5)), A118914(n+2))`
-/

namespace A227761.P1515714254429261889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014566 (A071628 (n + 5)).toNat) (A118914 (n + 2))

end

end A227761.P1515714254429261889

/-! ## A227761.P11723785721881308845

`(2*n)%A195825(A278242(n))`
-/

namespace A227761.P11723785721881308845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A195825 (A278242 n).toNat)

end

end A227761.P11723785721881308845

/-!
# A227762: Numbers in whose minimally runlength-encoded unordered partition all parts are equal; positions of zeros in A227761.

The programs for A227762, there is no canonical definition to state claims against.
-/

/-! ## A227762.P14956947037033363658

`eq[0, A227761(n)]`
-/

namespace A227762.P14956947037033363658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227762.P14956947037033363658

/-! ## A227762.P9506104541036490435

`lt[A227761(round(sqrt(n²+1))), 1]`
-/

namespace A227762.P9506104541036490435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227761 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227762.P9506104541036490435

/-! ## A227762.P3714094470367705140

`lt[A227761(n)-1, A000122(n)]`
-/

namespace A227762.P3714094470367705140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227761 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227762.P3714094470367705140

/-! ## A227762.P15630537216475087528

`lt[A000096(n)*A227761(n), 1]`
-/

namespace A227762.P15630537216475087528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n * A227761 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227762.P15630537216475087528

/-! ## A227762.P13437211022379126538

`lt[A000217(n)*A227761(n), 1]`
-/

namespace A227762.P13437211022379126538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A227761 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227762.P13437211022379126538

/-!
# A227763: Winning positions in the misere version of the Subtract-a-Prime game.

The programs for A227763, there is no canonical definition to state claims against.
-/

/-! ## A227763.P4572983496286111511

`comp[A072545(n)]+1`
-/

namespace A227763.P4572983496286111511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A227763.P4572983496286111511

/-! ## A227763.P1130142843804597102

`comp[A025043(n+1)+1]+1`
-/

namespace A227763.P1130142843804597102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025043 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A227763.P1130142843804597102

/-! ## A227763.P12410147134778969129

`comp[A227764(n+1)-1]+1`
-/

namespace A227763.P12410147134778969129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227764 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A227763.P12410147134778969129

/-! ## A227763.P1429027532562634152

`comp[eq[0, A014589(n)]+1]+1`
-/

namespace A227763.P1429027532562634152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A227763.P1429027532562634152

/-! ## A227763.P12200587934903745457

`comp[A175880(A227764(n+1))]`
-/

namespace A227763.P12200587934903745457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (A227764 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A227763.P12200587934903745457

/-! ## A227763.P6588318344768748081

`A328399(2*comp[A072545(n)])`
-/

namespace A227763.P6588318344768748081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072545 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A227763.P6588318344768748081

/-! ## A227763.P14696919642222051834

`comp[eq[A014589(n), A057427(n)]]`
-/

namespace A227763.P14696919642222051834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A227763.P14696919642222051834

/-! ## A227763.P11960488912685731645

`comp[eq[A014589(n), A178334(n)]]`
-/

namespace A227763.P11960488912685731645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A227763.P11960488912685731645

/-! ## A227763.P16554607579028222354

`comp[A023443(eq[1, A014589(n)])]+1`
-/

namespace A227763.P16554607579028222354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A227763.P16554607579028222354

/-! ## A227763.P13784871564937154844

`lt[1, A000032(A014589(n+1))]+1`
-/

namespace A227763.P13784871564937154844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A014589 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A227763.P13784871564937154844

/-!
# A227764: Losing positions in the misere version of the Subtract-a-Prime game.

The programs for A227764, there is no canonical definition to state claims against.
-/

/-! ## A227764.P16815374981343587613

`A072545(n)+1`
-/

namespace A227764.P16815374981343587613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072545 n + 1

end

end A227764.P16815374981343587613

/-! ## A227764.P13679456906084143246

`eq[1, A014589(n)]`
-/

namespace A227764.P13679456906084143246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227764.P13679456906084143246

/-! ## A227764.P10388119906879010660

`A025043(n+1)+2`
-/

namespace A227764.P10388119906879010660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025043 (n + 1) + 2

end

end A227764.P10388119906879010660

/-! ## A227764.P4256553283877203332

`A332941(n)+a(n-1)` with `a(0)=2`
-/

namespace A227764.P4256553283877203332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A332941 n + a (n - 1)

end

end A227764.P4256553283877203332

/-! ## A227764.P4842675824101925780

`∑[A332941(round(sqrt(n²+1)))]+1`
-/

namespace A227764.P4842675824101925780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332941 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A227764.P4842675824101925780

/-! ## A227764.P13724478757193009540

`A020725(A072545(n))`
-/

namespace A227764.P13724478757193009540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A072545 n).toNat

end

end A227764.P13724478757193009540

/-! ## A227764.P16245722091480395432

`A008619(2*A072545(n))`
-/

namespace A227764.P16245722091480395432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A072545 n).toNat

end

end A227764.P16245722091480395432

/-! ## A227764.P11640508886419305087

`A328399(2*A072545(n))`
-/

namespace A227764.P11640508886419305087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A072545 n).toNat

end

end A227764.P11640508886419305087

/-! ## A227764.P5431840540424090015

`A008611(3*A072545(n))`
-/

namespace A227764.P5431840540424090015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A072545 n).toNat

end

end A227764.P5431840540424090015

/-! ## A227764.P8120846104115492256

`n-(A023443(n)-A072545(n))`
-/

namespace A227764.P8120846104115492256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A072545 n)

end

end A227764.P8120846104115492256

/-!
# A227765: First n-fold perfect number divided by 6, or 0 if the quotient is not an integer.

The programs for A227765, there is no canonical definition to state claims against.
-/

/-! ## A227765.P2291235309262852641

`floor(A007539(n+1)/6)`
-/

namespace A227765.P2291235309262852641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007539 (n + 1) : ℚ) / 6⌋

end

end A227765.P2291235309262852641

/-!
# A227766: First n-fold perfect number divided by 120, or 0 if the quotient is not an integer.

The programs for A227766, there is no canonical definition to state claims against.
-/

/-! ## A227766.P14138948587942467609

`floor(A227765(n+1)/20)`
-/

namespace A227766.P14138948587942467609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227765 (n + 1) : ℚ) / 20⌋

end

end A227766.P14138948587942467609

/-!
# A227767: First n-fold perfect number divided by 30240, or 0 if the quotient is not an integer.

The programs for A227767, there is no canonical definition to state claims against.
-/

/-! ## A227767.P8670091560609083059

`C(A222779(A165903(n)), 2)`
-/

namespace A227767.P8670091560609083059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A222779 (A165903 n).toNat).toNat 2

end

end A227767.P8670091560609083059

/-!
# A227770: Bertrand primes II: a(n) is the largest prime < 2*a(n-1)-2.

The programs for A227770, there is no canonical definition to state claims against.
-/

/-! ## A227770.P12788460921097403146

`A000040(A000720(2*(a(n-1)-1)))` with `a(0)=5`
-/

namespace A227770.P12788460921097403146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000040 (A000720 (2 * (a (n - 1) - 1)).toNat).toNat

end

end A227770.P12788460921097403146

/-! ## A227770.P15929061398737802470

`A231935(a(n-1))` with `a(0)=5`
-/

namespace A227770.P15929061398737802470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A231935 (a (n - 1)).toNat

end

end A227770.P15929061398737802470

/-!
# A227771: Antiharmonic numbers that are not squares.

The programs for A227771, there is no canonical definition to state claims against.
-/

/-! ## A227771.P7708326501416158942

`filter[A020487(n+1), A049240(#)]`
-/

namespace A227771.P7708326501416158942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A227771.P7708326501416158942

/-! ## A227771.P15468434793954132898

`∩[A020487(n+1), A180161(n+1)]`
-/

namespace A227771.P15468434793954132898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227771.P15468434793954132898

/-! ## A227771.P17357777124333650332

`∩[A000415(n+1), A020487(n+1)]`
-/

namespace A227771.P17357777124333650332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227771.P17357777124333650332

/-! ## A227771.P17060331077301970900

`∩[A020487(n+1), A072904(n+1)]`
-/

namespace A227771.P17060331077301970900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227771.P17060331077301970900

/-! ## A227771.P14018292391411588941

`∩[A020487(n+1), A072588(n+1)]`
-/

namespace A227771.P14018292391411588941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227771.P14018292391411588941

/-! ## A227771.P13067011850092057310

`∩[A020487(n+1), A051144(n+1)]`
-/

namespace A227771.P13067011850092057310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227771.P13067011850092057310

/-! ## A227771.P5533209432837295412

`∩[A020487(n+1), A303946(n+1)]`
-/

namespace A227771.P5533209432837295412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227771.P5533209432837295412

/-! ## A227771.P16550086061646984728

`∩[A007624(n+1), A020487(n+1)]`
-/

namespace A227771.P16550086061646984728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227771.P16550086061646984728

/-! ## A227771.P6536337659906264594

`∩[A020487(n+1), A106543(n+1)]`
-/

namespace A227771.P6536337659906264594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227771.P6536337659906264594

/-! ## A227771.P9493414345066977248

`∩[A020487(n+1), A089229(n+1)]`
-/

namespace A227771.P9493414345066977248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227771.P9493414345066977248

/-!
# A227772: Sequence based on factorial representation converging to 1 in 2-adic numbers, and 0 in p-adic numbers for any other p.

The programs for A227772, there is no canonical definition to state claims against.
-/

/-! ## A227772.P17836018903223406600

`A226236(n+1)%record[A094587(n)]`
-/

namespace A227772.P17836018903223406600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226236 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A227772.P17836018903223406600

/-! ## A227772.P11467207048607060244

`A226236(A342650(n+1))%A000142(n+1)`
-/

namespace A227772.P11467207048607060244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226236 (A342650 (n + 1)).toNat) (A000142 (n + 1))

end

end A227772.P11467207048607060244

/-! ## A227772.P15101944842070097941

`A338293(n)²%A319551(n+1)`
-/

namespace A227772.P15101944842070097941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338293 n ^ 2) (A319551 (n + 1))

end

end A227772.P15101944842070097941

/-! ## A227772.P11041848313652520011

`A265025(record[A131816(n)])²%(n+1)!`
-/

namespace A227772.P11041848313652520011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265025 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2) (Nat.factorial (n + 1) : ℤ)

end

end A227772.P11041848313652520011

/-!
# A227776: a(n) = 6*n^2 + 1.

The programs for A227776, the canonical program `A227776.P10684709739672148907` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227776 has offset 0).

The definition of A227776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²+1` (program `A227776.P10684709739672148907`, by `A227776.P10684709739672148907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227776.P10684709739672148907

`6*n²+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227776

/-- `6*n²+1` -/
def P10684709739672148907.Spec : Prop :=
  ∀ n, (P10684709739672148907.a n : ℤ) = A227776 n

theorem P10684709739672148907.correct : P10684709739672148907.Spec := by
  intro n
  simp only [A227776]

end A227776

/-! ## A227776.P2251607974593436392

`or(1, 6*n²)`
-/

namespace A227776.P2251607974593436392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * n ^ 2)

end

end A227776.P2251607974593436392

namespace A227776

/-- `or(1, 6*n²)` -/
def P2251607974593436392.Spec : Prop :=
  ∀ n, (P2251607974593436392.a n : ℤ) = A227776 n

end A227776

/-! ## A227776.P16341643156257291853

`xor(1, 6*n²)`
-/

namespace A227776.P16341643156257291853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * n ^ 2)

end

end A227776.P16341643156257291853

namespace A227776

/-- `xor(1, 6*n²)` -/
def P16341643156257291853.Spec : Prop :=
  ∀ n, (P16341643156257291853.a n : ℤ) = A227776 n

end A227776

/-! ## A227776.P10782782376456848328

`∑[a(n-1)+12]` with `a(0)=1, a(1)=6`
-/

namespace A227776.P10782782376456848328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227776.P10782782376456848328

namespace A227776

/-- `∑[a(n-1)+12]` -/
def P10782782376456848328.Spec : Prop :=
  ∀ n, (P10782782376456848328.a n : ℤ) = A227776 n

end A227776

/-! ## A227776.P11587025649249342596

`∑[ogf((1+4x+7x^2)/(1-2x+x^2))]`
-/

namespace A227776.P11587025649249342596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227776.P11587025649249342596

namespace A227776

/-- `∑[ogf((1+4x+7x^2)/(1-2x+x^2))]` -/
def P11587025649249342596.Spec : Prop :=
  ∀ n, P11587025649249342596.a n = A227776 n

end A227776

/-! ## A227776.P17317555800230426885

`ogf((1+4x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A227776.P17317555800230426885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 7] [1, -3, 3, -1] n

end

end A227776.P17317555800230426885

namespace A227776

/-- `ogf((1+4x+7x^2)/(1-3x+3x^2-x^3))` -/
def P17317555800230426885.Spec : Prop :=
  ∀ n, P17317555800230426885.a n = A227776 n

end A227776

/-! ## A227776.P10022042837865957724

`Δ[(C(2*n, 2)+1)*(n-1)]`
-/

namespace A227776.P10022042837865957724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 + 1 : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227776.P10022042837865957724

namespace A227776

/-- `Δ[(C(2*n, 2)+1)*(n-1)]` -/
def P10022042837865957724.Spec : Prop :=
  ∀ n, P10022042837865957724.a n = A227776 n

end A227776

/-! ## A227776.P18020906669975185067

`floor(a(n-1)+3*(4*n-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A227776.P18020906669975185067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * ((4 * n : ℤ) - 2)

end

end A227776.P18020906669975185067

namespace A227776

/-- `floor(a(n-1)+3*(4*n-2))` -/
def P18020906669975185067.Spec : Prop :=
  ∀ n, P18020906669975185067.a n = A227776 n

theorem P18020906669975185067.correct : P18020906669975185067.Spec := by
  intro n
  induction n with
  | zero => simp [A227776, A227776.P18020906669975185067.a, A227776.P10684709739672148907.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A227776, Nat.add_sub_cancel, A227776.P18020906669975185067.a, A227776.P10684709739672148907.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A227776

/-! ## A227776.P2700844203990560021

`Δ[2*n*lcm(n, n-1)-(n-1)²]`
-/

namespace A227776.P2700844203990560021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ) - ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227776.P2700844203990560021

namespace A227776

/-- `Δ[2*n*lcm(n, n-1)-(n-1)²]` -/
def P2700844203990560021.Spec : Prop :=
  ∀ n, P2700844203990560021.a n = A227776 n

end A227776

/-! ## A227776.P14501754440778478164

`Δ[A212133(n)]`
-/

namespace A227776.P14501754440778478164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227776.P14501754440778478164

namespace A227776

/-- `Δ[A212133(n)]` -/
def P14501754440778478164.Spec : Prop :=
  ∀ n, P14501754440778478164.a n = A227776 n

end A227776

/-! ## A227776.P4542579261962613058

`ceil(A005914(n)/2)`
-/

namespace A227776.P4542579261962613058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005914 n : ℚ) / 2⌉

end

end A227776.P4542579261962613058

namespace A227776

/-- `ceil(A005914(n)/2)` -/
def P4542579261962613058.Spec : Prop :=
  ∀ n, P4542579261962613058.a n = A227776 n

end A227776

/-! ## A227776.P3342660366807917184

`(A158480(n)+1)/2`
-/

namespace A227776.P3342660366807917184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158480 n + 1 : ℚ) / 2

end

end A227776.P3342660366807917184

namespace A227776

/-- `(A158480(n)+1)/2` -/
def P3342660366807917184.Spec : Prop :=
  ∀ n, P3342660366807917184.a n = (A227776 n : ℚ)

end A227776

/-! ## A227776.P10560575991058500612

`(A158463(n)+3)/2`
-/

namespace A227776.P10560575991058500612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158463 n + 3 : ℚ) / 2

end

end A227776.P10560575991058500612

namespace A227776

/-- `(A158463(n)+3)/2` -/
def P10560575991058500612.Spec : Prop :=
  ∀ n, P10560575991058500612.a n = (A227776 n : ℚ)

end A227776

/-! ## A227776.P16003151256731896420

`lcm(2, Δ[Δ[(1-n)²²]])/2`
-/

namespace A227776.P16003151256731896420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A227776.P16003151256731896420

namespace A227776

/-- `lcm(2, Δ[Δ[(1-n)²²]])/2` -/
def P16003151256731896420.Spec : Prop :=
  ∀ n, P16003151256731896420.a n = (A227776 n : ℚ)

end A227776

/-! ## A227776.P4128511619926726490

`Δ[Δ[(n-1)²²]]/gcd(2, 2*n)`
-/

namespace A227776.P4128511619926726490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (Nat.gcd 2 (2 * n) : ℚ)

end

end A227776.P4128511619926726490

namespace A227776

/-- `Δ[Δ[(n-1)²²]]/gcd(2, 2*n)` -/
def P4128511619926726490.Spec : Prop :=
  ∀ n, P4128511619926726490.a n = (A227776 n : ℚ)

theorem P4128511619926726490.correct : P4128511619926726490.Spec := by
  intro n
  simp only [A227776, Nat.add_sub_cancel, A227776.P4128511619926726490.f2, A227776.P4128511619926726490.f1, A227776.P4128511619926726490.a, A227776.P10684709739672148907.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A227776

/-! ## A227776.P12419069863801610493

`∑[record[A298026(n)]]`
-/

namespace A227776.P12419069863801610493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227776.P12419069863801610493

namespace A227776

/-- `∑[record[A298026(n)]]` -/
def P12419069863801610493.Spec : Prop :=
  ∀ n, P12419069863801610493.a n = A227776 n

end A227776

/-! ## A227776.P14681112675448536558

`A084672(3*n)`
-/

namespace A227776.P14681112675448536558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084672 (3 * n)

end

end A227776.P14681112675448536558

namespace A227776

/-- `A084672(3*n)` -/
def P14681112675448536558.Spec : Prop :=
  ∀ n, P14681112675448536558.a n = A227776 n

end A227776

/-! ## A227776.P4868198631163828528

`A194069(A008486(n))`
-/

namespace A227776.P4868198631163828528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194069 (A008486 n).toNat

end

end A227776.P4868198631163828528

namespace A227776

/-- `A194069(A008486(n))` -/
def P4868198631163828528.Spec : Prop :=
  ∀ n, P4868198631163828528.a n = A227776 n

end A227776

/-! ## A227776.P18078636686698360492

`∩[A084672(n), A194069(n+1)]`
-/

namespace A227776.P18078636686698360492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227776.P18078636686698360492

namespace A227776

/-- `∩[A084672(n), A194069(n+1)]` -/
def P18078636686698360492.Spec : Prop :=
  ∀ n, (P18078636686698360492.a n : ℤ) = A227776 n

end A227776

/-! ## A227776.P8596933403371940299

`filter[A084672(n), A373157(#)]`
-/

namespace A227776.P8596933403371940299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A227776.P8596933403371940299

namespace A227776

/-- `filter[A084672(n), A373157(#)]` -/
def P8596933403371940299.Spec : Prop :=
  ∀ n, P8596933403371940299.a n = A227776 n

end A227776

/-!
# A227777: Least splitter of n-th and (n+1)st partial sums of 1/0! + 1/1! + ... + 1/n! + ... = e.

The programs for A227777, there is no canonical definition to state claims against.
-/

/-! ## A227777.P9433679277577255329

`filter[A182219(n+1), A129573(#)]`
-/

namespace A227777.P9433679277577255329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A129573 (f1 j).toNat = 1) n)

end

end A227777.P9433679277577255329

/-! ## A227777.P11014112373289120191

`∩[A074402(n+1), A182219(n+1)]`
-/

namespace A227777.P11014112373289120191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227777.P11014112373289120191

/-! ## A227777.P1830278293399267953

`∩[A119345(n+1), A182219(n+1)]`
-/

namespace A227777.P1830278293399267953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227777.P1830278293399267953

/-! ## A227777.P16747416228102085487

`∩[A182219(n+1), A258264(n+1)]`
-/

namespace A227777.P16747416228102085487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227777.P16747416228102085487

/-!
# A227779: Least splitter of s(n) and s(n+1), where s(n) = sum{(k + 1/2)^(-1/2), k >= 1}.

The programs for A227779, there is no canonical definition to state claims against.
-/

/-! ## A227779.P5282136377211189353

`A001222(A327331(n+1)+A018606(n+1))`
-/

namespace A227779.P5282136377211189353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327331 (n + 1) + A018606 (n + 1)).toNat

end

end A227779.P5282136377211189353

/-! ## A227779.P2819549748259621048

`A098281(A264731(n+1))`
-/

namespace A227779.P2819549748259621048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098281 (A264731 (n + 1)).toNat

end

end A227779.P2819549748259621048

/-! ## A227779.P2277390535508967069

`A098281(A000040(A054582(n)))`
-/

namespace A227779.P2277390535508967069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098281 (A000040 (A054582 n).toNat).toNat

end

end A227779.P2277390535508967069

/-! ## A227779.P1423542569373170091

`A162642(A162599(n))+A162641(n+3)`
-/

namespace A227779.P1423542569373170091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A162599 n).toNat + A162641 (n + 3)

end

end A227779.P1423542569373170091

/-! ## A227779.P13671793077007965398

`A207709(A093925(n+1)-A046966(n+1))`
-/

namespace A227779.P13671793077007965398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207709 (A093925 (n + 1) - A046966 (n + 1)).toNat

end

end A227779.P13671793077007965398

/-!
# A227781: Least number of squares which add to -1 mod n.

The programs for A227781, there is no canonical definition to state claims against.
-/

/-! ## A227781.P12768704355685547711

`A257645(A029579(n))%A151925(n+1)`
-/

namespace A227781.P12768704355685547711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257645 (A029579 n).toNat) (A151925 (n + 1))

end

end A227781.P12768704355685547711

/-! ## A227781.P15471949159185402204

`A049472(A151925(n+1)+Δ[A002265(n)])`
-/

namespace A227781.P15471949159185402204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A151925 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A227781.P15471949159185402204

/-! ## A227781.P10523004741010272026

`A151925(A066043(n+1))-1`
-/

namespace A227781.P10523004741010272026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (A066043 (n + 1)).toNat - 1

end

end A227781.P10523004741010272026

/-! ## A227781.P8975119416003210763

`A001478(n+1)+A151925(A066043(n+1))+n`
-/

namespace A227781.P8975119416003210763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A151925 (A066043 (n + 1)).toNat + (n : ℤ))

end

end A227781.P8975119416003210763

/-! ## A227781.P17658861007613818841

`A328310(A006530(2*(n+1)))+A151925(A066043(n+1))`
-/

namespace A227781.P17658861007613818841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (A006530 (2 * (n + 1))).toNat + A151925 (A066043 (n + 1)).toNat

end

end A227781.P17658861007613818841

/-! ## A227781.P8968843932596893450

`A157658(A128907(n+1))+A151925(A066043(n+1))`
-/

namespace A227781.P8968843932596893450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A128907 (n + 1)).toNat + A151925 (A066043 (n + 1)).toNat

end

end A227781.P8968843932596893450

/-! ## A227781.P13913157623418279741

`A072828(A233583(n+1))%A151925(A066043(n+1))`
-/

namespace A227781.P13913157623418279741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (A233583 (n + 1)).toNat) (A151925 (A066043 (n + 1)).toNat)

end

end A227781.P13913157623418279741

/-! ## A227781.P16962057371381024955

`A072828(n+1)%A151925(A066043(n+1))`
-/

namespace A227781.P16962057371381024955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A151925 (A066043 (n + 1)).toNat)

end

end A227781.P16962057371381024955

/-!
# A227782: Stufe of Q(sqrt(-n)): least number of squares which add to -1 in the field Q(sqrt(-n)).

The programs for A227782, there is no canonical definition to state claims against.
-/

/-! ## A227782.P1115905889377400024

`gcd(4, A002828(n+1)!)`
-/

namespace A227782.P1115905889377400024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (Nat.factorial (A002828 (n + 1)).toNat)

end

end A227782.P1115905889377400024

/-! ## A227782.P8534476826998315388

`A060546(n-A255131(n+1))`
-/

namespace A227782.P8534476826998315388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 ((n : ℤ) - A255131 (n + 1)).toNat

end

end A227782.P8534476826998315388

/-! ## A227782.P9041438656586771662

`A260734(n+1-A255131(n+1))`
-/

namespace A227782.P9041438656586771662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 ((n + 1 : ℤ) - A255131 (n + 1)).toNat

end

end A227782.P9041438656586771662

/-! ## A227782.P10733708484543249904

`A321721(n+1-A255131(n+1))`
-/

namespace A227782.P10733708484543249904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321721 ((n + 1 : ℤ) - A255131 (n + 1)).toNat

end

end A227782.P10733708484543249904

/-! ## A227782.P4584326380401645127

`A000010(n+2-A255131(n+1))`
-/

namespace A227782.P4584326380401645127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 2 : ℤ) - A255131 (n + 1)).toNat

end

end A227782.P4584326380401645127

/-! ## A227782.P3902963248624798680

`A129296(n+2-A255131(n+1))`
-/

namespace A227782.P3902963248624798680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 ((n + 2 : ℤ) - A255131 (n + 1)).toNat

end

end A227782.P3902963248624798680

/-! ## A227782.P3971165913646428181

`A320008(n+2-A255131(n+1))`
-/

namespace A227782.P3971165913646428181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320008 ((n + 2 : ℤ) - A255131 (n + 1)).toNat

end

end A227782.P3971165913646428181

/-! ## A227782.P17244431546386392740

`A000005((A255131(n+1)-n)²+1)`
-/

namespace A227782.P17244431546386392740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A255131 (n + 1) - (n : ℤ)) ^ 2 + 1).toNat

end

end A227782.P17244431546386392740

/-! ## A227782.P7552751184661973329

`A000005(A000290(n-A255131(n+1))+1)`
-/

namespace A227782.P7552751184661973329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000290 ((n : ℤ) - A255131 (n + 1)).toNat + 1).toNat

end

end A227782.P7552751184661973329

/-! ## A227782.P17794654085293579767

`A278495(A000290(n+1-A255131(n+1)))`
-/

namespace A227782.P17794654085293579767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278495 (A000290 ((n + 1 : ℤ) - A255131 (n + 1)).toNat).toNat

end

end A227782.P17794654085293579767

/-! ## A227782.P10048822560157317806

`A260732(A261224(n+1-A255131(n+1)))`
-/

namespace A227782.P10048822560157317806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (A261224 ((n + 1 : ℤ) - A255131 (n + 1)).toNat).toNat

end

end A227782.P10048822560157317806

/-! ## A227782.P17868874911010375623

`A260732(A276571(n+1-A255131(n+1)))`
-/

namespace A227782.P17868874911010375623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (A276571 ((n + 1 : ℤ) - A255131 (n + 1)).toNat).toNat

end

end A227782.P17868874911010375623

/-! ## A227782.P17593415909538833678

`A278496(A278166(n+1-A255131(n+1)))`
-/

namespace A227782.P17593415909538833678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278496 (A278166 ((n + 1 : ℤ) - A255131 (n + 1)).toNat).toNat

end

end A227782.P17593415909538833678

/-! ## A227782.P1165472291174519222

`A278516(A278494(n+1-A255131(n+1)))`
-/

namespace A227782.P1165472291174519222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278516 (A278494 ((n + 1 : ℤ) - A255131 (n + 1)).toNat).toNat

end

end A227782.P1165472291174519222

/-! ## A227782.P4781620247484460832

`A260731(A260732(n+2-A255131(n+1)))`
-/

namespace A227782.P4781620247484460832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A260732 ((n + 2 : ℤ) - A255131 (n + 1)).toNat).toNat

end

end A227782.P4781620247484460832

/-! ## A227782.P10111524648915484130

`A260731(A276572(n+3-A255131(n+1)))`
-/

namespace A227782.P10111524648915484130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A276572 ((n + 3 : ℤ) - A255131 (n + 1)).toNat).toNat

end

end A227782.P10111524648915484130

/-! ## A227782.P17305617219396800049

`A080100(A080100(4*n)-A002828(n+1))`
-/

namespace A227782.P17305617219396800049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A080100 (4 * n) - A002828 (n + 1)).toNat

end

end A227782.P17305617219396800049

/-!
# A227783: Stufe of Q(sqrt(-k)), where k is the n-th squarefree number.

The programs for A227783, there is no canonical definition to state claims against.
-/

/-! ## A227783.P11916211039606590726

`A227782(A005117(n+1))`
-/

namespace A227783.P11916211039606590726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227782 (A005117 (n + 1)).toNat

end

end A227783.P11916211039606590726

/-! ## A227783.P8652685236887131289

`A227782(record[A007947(n+1)])`
-/

namespace A227783.P8652685236887131289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227782 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227783.P8652685236887131289

/-! ## A227783.P15808308080814088252

`A227782(A133466(n+1))`
-/

namespace A227783.P15808308080814088252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227782 (A133466 (n + 1)).toNat

end

end A227783.P15808308080814088252

/-! ## A227783.P13888185417608904238

`A227782(A195085(n+1))`
-/

namespace A227783.P13888185417608904238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227782 (A195085 (n + 1)).toNat

end

end A227783.P13888185417608904238

/-! ## A227783.P6744583348401716797

`A227782(A227782(2*n+1)²*A076144(n+2))`
-/

namespace A227783.P6744583348401716797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227782 (A227782 (2 * n + 1) ^ 2 * A076144 (n + 2)).toNat

end

end A227783.P6744583348401716797

/-! ## A227783.P6558126036391954701

`A227782(A077377(n+1))/A227782(A077377(n+1)²)`
-/

namespace A227783.P6558126036391954701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227782 (A077377 (n + 1)).toNat : ℚ) / (A227782 (A077377 (n + 1) ^ 2).toNat : ℚ)

end

end A227783.P6558126036391954701

/-! ## A227783.P2321023829758114402

`A227782(A348506(n+1))/A227782(A348506(n+1)²)`
-/

namespace A227783.P2321023829758114402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227782 (A348506 (n + 1)).toNat : ℚ) / (A227782 (A348506 (n + 1) ^ 2).toNat : ℚ)

end

end A227783.P2321023829758114402

/-!
# A227786: Take squares larger than 1, subtract 3 from even squares and 2 from odd squares; a(n) = a(n-1) + A168276(n+1) (with a(1) = 1).

The programs for A227786, the canonical program `A227786.P3604459538263968663` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227786 has offset 1).

The definition of A227786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A168276(n+2)` (program `A227786.P3604459538263968663`, by `A227786.P3604459538263968663.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227786.P6906236784918363619

`1/2*(2*(n+1)²+4*(n+1)-3+(-1)^(n+1))`
-/

namespace A227786.P6906236784918363619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((2 * (n + 1) ^ 2 + 4 * (n + 1) : ℤ) - 3 + (-1) ^ (n + 1) : ℚ)

end

end A227786.P6906236784918363619

namespace A227786

/-- `1/2*(2*(n+1)²+4*(n+1)-3+(-1)^(n+1))` -/
def P6906236784918363619.Spec : Prop :=
  ∀ n, P6906236784918363619.a n = (A227786 (n + 1) : ℚ)

end A227786

/-! ## A227786.P7425886514842914617

`2*A116940(n)+1`
-/

namespace A227786.P7425886514842914617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116940 n + 1

end

end A227786.P7425886514842914617

namespace A227786

/-- `2*A116940(n)+1` -/
def P7425886514842914617.Spec : Prop :=
  ∀ n, P7425886514842914617.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P3604459538263968663

`a(n-1)+A168276(n+2)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A227786

/-- `a(n-1)+A168276(n+2)` -/
def P3604459538263968663.Spec : Prop :=
  ∀ n, P3604459538263968663.a n = A227786 (n + 1)

theorem P3604459538263968663.correct : P3604459538263968663.Spec := by
  intro n
  simp only [A227786, Nat.add_sub_cancel]

end A227786

/-! ## A227786.P8478210688387271837

`or(1, (n+2)²-3)`
-/

namespace A227786.P8478210688387271837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n + 2) ^ 2 : ℤ) - 3)

end

end A227786.P8478210688387271837

namespace A227786

/-- `or(1, (n+2)²-3)` -/
def P8478210688387271837.Spec : Prop :=
  ∀ n, P8478210688387271837.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P2945743809931665895

`record[or(1, (2-n)²-3)]`
-/

namespace A227786.P2945743809931665895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 - (n : ℤ)) ^ 2 - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227786.P2945743809931665895

namespace A227786

/-- `record[or(1, (2-n)²-3)]` -/
def P2945743809931665895.Spec : Prop :=
  ∀ n, P2945743809931665895.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P4294549362112034482

`∑[a(n-2)+4]` with `a(0)=1, a(1)=6, a(2)=6`
-/

namespace A227786.P4294549362112034482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 6] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227786.P4294549362112034482

namespace A227786

/-- `∑[a(n-2)+4]` -/
def P4294549362112034482.Spec : Prop :=
  ∀ n, (P4294549362112034482.a n : ℤ) = A227786 (n + 1)

end A227786

/-! ## A227786.P4434149232725383163

`∑[2*or(1, n+1)]-1`
-/

namespace A227786.P4434149232725383163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A227786.P4434149232725383163

namespace A227786

/-- `∑[2*or(1, n+1)]-1` -/
def P4434149232725383163.Spec : Prop :=
  ∀ n, P4434149232725383163.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P17495329678467131240

`∑[lcm(2, or(1, n+1))]-1`
-/

namespace A227786.P17495329678467131240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A227786.P17495329678467131240

namespace A227786

/-- `∑[lcm(2, or(1, n+1))]-1` -/
def P17495329678467131240.Spec : Prop :=
  ∀ n, P17495329678467131240.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P11780034987170814973

`(n+2)²-(gcd(2, n)+1)`
-/

namespace A227786.P11780034987170814973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (Nat.gcd 2 n + 1 : ℤ)

end

end A227786.P11780034987170814973

namespace A227786

/-- `(n+2)²-(gcd(2, n)+1)` -/
def P11780034987170814973.Spec : Prop :=
  ∀ n, P11780034987170814973.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P5172936644794200073

`(n+2)²+n%2-3`
-/

namespace A227786.P5172936644794200073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) + (((n % 2 : ℕ) : ℤ) - 3)

end

end A227786.P5172936644794200073

namespace A227786

/-- `(n+2)²+n%2-3` -/
def P5172936644794200073.Spec : Prop :=
  ∀ n, P5172936644794200073.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P9484544869045627887

`or(1, (n+1)²)+2*n`
-/

namespace A227786.P9484544869045627887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1) ^ 2) + 2 * n

end

end A227786.P9484544869045627887

namespace A227786

/-- `or(1, (n+1)²)+2*n` -/
def P9484544869045627887.Spec : Prop :=
  ∀ n, (P9484544869045627887.a n : ℤ) = A227786 (n + 1)

end A227786

/-! ## A227786.P3433334546511420052

`and(1, n)+(n+2)²-3`
-/

namespace A227786.P3433334546511420052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + (((n + 2) ^ 2 : ℤ) - 3)

end

end A227786.P3433334546511420052

namespace A227786

/-- `and(1, n)+(n+2)²-3` -/
def P3433334546511420052.Spec : Prop :=
  ∀ n, P3433334546511420052.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P871936732221513374

`abs(or(1, -(n+2)²)+2)`
-/

namespace A227786.P871936732221513374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-((n + 2) ^ 2 : ℤ)) + 2|

end

end A227786.P871936732221513374

namespace A227786

/-- `abs(or(1, -(n+2)²)+2)` -/
def P871936732221513374.Spec : Prop :=
  ∀ n, P871936732221513374.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P16470431408948553953

`-(or(1, -(n+2)²)+2)`
-/

namespace A227786.P16470431408948553953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor 1 (-((n + 2) ^ 2 : ℤ)) + 2)

end

end A227786.P16470431408948553953

namespace A227786

/-- `-(or(1, -(n+2)²)+2)` -/
def P16470431408948553953.Spec : Prop :=
  ∀ n, P16470431408948553953.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P3039781811841124802

`∑[or(2, n+2+n)]-1`
-/

namespace A227786.P3039781811841124802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A227786.P3039781811841124802

namespace A227786

/-- `∑[or(2, n+2+n)]-1` -/
def P3039781811841124802.Spec : Prop :=
  ∀ n, P3039781811841124802.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P2170212033675544704

`∑[xor(1, n+3)+n]-1`
-/

namespace A227786.P2170212033675544704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 3) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A227786.P2170212033675544704

namespace A227786

/-- `∑[xor(1, n+3)+n]-1` -/
def P2170212033675544704.Spec : Prop :=
  ∀ n, P2170212033675544704.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P7736745610649321199

`or(1, (n+1)²)+n+n`
-/

namespace A227786.P7736745610649321199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1) ^ 2) + n + n

end

end A227786.P7736745610649321199

namespace A227786

/-- `or(1, (n+1)²)+n+n` -/
def P7736745610649321199.Spec : Prop :=
  ∀ n, (P7736745610649321199.a n : ℤ) = A227786 (n + 1)

end A227786

/-! ## A227786.P6728934454305298282

`∑[∑[4-a(n-1)]]` with `a(0)=1, a(1)=5, a(2)=0`
-/

namespace A227786.P6728934454305298282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 0] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227786.P6728934454305298282

namespace A227786

/-- `∑[∑[4-a(n-1)]]` -/
def P6728934454305298282.Spec : Prop :=
  ∀ n, P6728934454305298282.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P13137652301045791684

`ogf((1+5x-x^2-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A227786.P13137652301045791684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -1, -1] [1, -2, 0, 2, -1] n

end

end A227786.P13137652301045791684

namespace A227786

/-- `ogf((1+5x-x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P13137652301045791684.Spec : Prop :=
  ∀ n, P13137652301045791684.a n = A227786 (n + 1)

end A227786

/-! ## A227786.P3762642359598214405

`a(n-2)+4*(n+1)` with `a(0)=1, a(1)=7`
-/

namespace A227786.P3762642359598214405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) + 4 * (n + 1)

end

end A227786.P3762642359598214405

namespace A227786

/-- `a(n-2)+4*(n+1)` -/
def P3762642359598214405.Spec : Prop :=
  ∀ n, (P3762642359598214405.a n : ℤ) = A227786 (n + 1)

end A227786

/-!
# A227787: The number of n X n tomographically balanced matrices.

The programs for A227787, there is no canonical definition to state claims against.
-/

/-! ## A227787.P5578437288944174113

`A272649(A201169(n))`
-/

namespace A227787.P5578437288944174113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272649 (A201169 n).toNat

end

end A227787.P5578437288944174113

/-! ## A227787.P4878443474574635733

`A375270(A261006(n))`
-/

namespace A227787.P4878443474574635733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375270 (A261006 n).toNat

end

end A227787.P4878443474574635733

/-!
# A227788: Sum of indices of Fibonacci numbers in Zeckendorf representation of n, assuming the units place is Fibonacci(2).

The programs for A227788, there is no canonical definition to state claims against.
-/

/-! ## A227788.P5510162581814307465

`A029931(record[and(2*n, -n)])`
-/

namespace A227788.P5510162581814307465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227788.P5510162581814307465

/-! ## A227788.P1947451330179887019

`A029931(record[or(n, 2*n)-n])`
-/

namespace A227788.P1947451330179887019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227788.P1947451330179887019

/-! ## A227788.P7215644697122376697

`A029931(record[xor(n, 2*n)-n])`
-/

namespace A227788.P7215644697122376697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227788.P7215644697122376697

/-! ## A227788.P7416596848439004650

`log2(A029930(record[and(2*n, -n)]))`
-/

namespace A227788.P7416596848439004650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℝ)

end

end A227788.P7416596848439004650

/-! ## A227788.P15034460265442676485

`A029931(record[xor(n, or(n, 2*n))])`
-/

namespace A227788.P15034460265442676485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A227788.P15034460265442676485

/-! ## A227788.P4298875885199831313

`A073642(2*record[and(2*n, -n)])`
-/

namespace A227788.P4298875885199831313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227788.P4298875885199831313

/-! ## A227788.P7508115469100730534

`A029931(2*record[xor(n, 2*n)/3])`
-/

namespace A227788.P7508115469100730534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.roundAway (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A227788.P7508115469100730534

/-! ## A227788.P9686384241483805473

`A029931(eq[1, and(n, 2*n-1)]-1)`
-/

namespace A227788.P9686384241483805473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((2 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A227788.P9686384241483805473

/-! ## A227788.P9267665935076136256

`A029931(A022340(n))`
-/

namespace A227788.P9267665935076136256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A022340 n).toNat

end

end A227788.P9267665935076136256

/-! ## A227788.P8937043172935344957

`A073642(A022341(n))`
-/

namespace A227788.P8937043172935344957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A022341 n).toNat

end

end A227788.P8937043172935344957

/-!
# A227789: Sum of indices of Fibonacci numbers in Zeckendorf representation of n, assuming that the units place is Fibonacci(1).

The programs for A227789, there is no canonical definition to state claims against.
-/

/-! ## A227789.P2727460883961269118

`A227788(n)-record[xor(n, 2*n)]%2`
-/

namespace A227789.P2727460883961269118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227788 n - ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) % 2 : ℕ) : ℤ)

end

end A227789.P2727460883961269118

/-! ## A227789.P8986874314337064208

`A227788(n)-A003849(n)`
-/

namespace A227789.P8986874314337064208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227788 n - A003849 n

end

end A227789.P8986874314337064208

/-! ## A227789.P9142090547336984870

`A029931(record[A256702(n+1)])`
-/

namespace A227789.P9142090547336984870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227789.P9142090547336984870

/-! ## A227789.P18435115963829771798

`A029931(record[A292601(2*n)])`
-/

namespace A227789.P18435115963829771798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227789.P18435115963829771798

/-! ## A227789.P11266760098846148550

`A029931(A118113(n)+1)-2`
-/

namespace A227789.P11266760098846148550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A118113 n + 1).toNat - 2

end

end A227789.P11266760098846148550

/-! ## A227789.P15599074036810351816

`A029931(A022340(n)+2)-2`
-/

namespace A227789.P15599074036810351816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A022340 n + 2).toNat - 2

end

end A227789.P15599074036810351816

/-! ## A227789.P5345650928265319384

`A029931(record[A341691(A042948(n))])`
-/

namespace A227789.P5345650928265319384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341691 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227789.P5345650928265319384

/-! ## A227789.P15632670485458444802

`A029931(A022340(n)-A003849(n))`
-/

namespace A227789.P15632670485458444802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A022340 n - A003849 n).toNat

end

end A227789.P15632670485458444802

/-! ## A227789.P7830451276905486689

`A073642(A022341(n))-A003849(n)`
-/

namespace A227789.P7830451276905486689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A022341 n).toNat - A003849 n

end

end A227789.P7830451276905486689

/-! ## A227789.P13246475891550260022

`A227788(n)-A000035(A003714(n))`
-/

namespace A227789.P13246475891550260022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227788 n - A000035 (A003714 n).toNat

end

end A227789.P13246475891550260022

/-!
# A227790: Difference between 3*n^2 and the nearest square number.

The programs for A227790, there is no canonical definition to state claims against.
-/

/-! ## A227790.P2853091857605781458

`A053188(3*(n+1)²)`
-/

namespace A227790.P2853091857605781458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (3 * (n + 1) ^ 2)

end

end A227790.P2853091857605781458

/-! ## A227790.P17816799191630107227

`A066635(3*(n+1)²)`
-/

namespace A227790.P17816799191630107227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (3 * (n + 1) ^ 2)

end

end A227790.P17816799191630107227

/-! ## A227790.P13899688616254138652

`A053615(A056847((n+1)*3*(n+1)))`
-/

namespace A227790.P13899688616254138652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A056847 ((n + 1) * (3 * (n + 1)))).toNat

end

end A227790.P13899688616254138652

/-! ## A227790.P467977501014503670

`A053188(A068626(3*n+2))%A065405(n+1)`
-/

namespace A227790.P467977501014503670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053188 (A068626 (3 * n + 2)).toNat) (A065405 (n + 1))

end

end A227790.P467977501014503670

/-! ## A227790.P9802857604651132487

`A088226(A005897(2*(n+1))/2)/2`
-/

namespace A227790.P9802857604651132487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088226 (SequenceMachineLib.roundAway ((A005897 (2 * (n + 1)) : ℚ) / 2)).toNat : ℚ) / 2

end

end A227790.P9802857604651132487

/-!
# A227791: Central terms of the triangle in A227550.

The programs for A227791, there is no canonical definition to state claims against.
-/

/-! ## A227791.P3874467810082952599

`record[A000122(2*n)*A227550(n)]`
-/

namespace A227791.P3874467810082952599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n) * A227550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227791.P3874467810082952599

/-! ## A227791.P17298829190665505371

`A227550(∑[4*n])`
-/

namespace A227791.P17298829190665505371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227791.P17298829190665505371

/-! ## A227791.P5403184086255314349

`record[A227550(A286145(n))]`
-/

namespace A227791.P5403184086255314349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 (A286145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227791.P5403184086255314349

/-! ## A227791.P8237708787767231882

`record[A003982(n)*A227550(n)]`
-/

namespace A227791.P8237708787767231882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A227550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227791.P8237708787767231882

/-! ## A227791.P2658927036096864635

`A227550(A046092(n))%A256438(n+1)`
-/

namespace A227791.P2658927036096864635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227550 (A046092 n).toNat) (A256438 (n + 1))

end

end A227791.P2658927036096864635

/-!
# A227792: Expansion of (1 + 6*x + 17*x^2 - x^3 - 3*x^4)/(1 - 6*x^2 + x^4).

The programs for A227792, the canonical program `A227792.P410742986478704325` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227792 has offset 0).

The definition of A227792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x+17x^2-x^3-3x^4)/(1-6x^2+x^4))` (program `A227792.P410742986478704325`, by `A227792.P410742986478704325.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227792.P410742986478704325

`ogf((1+6x+17x^2-x^3-3x^4)/(1-6x^2+x^4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227792

/-- `ogf((1+6x+17x^2-x^3-3x^4)/(1-6x^2+x^4))` -/
def P410742986478704325.Spec : Prop :=
  ∀ n, P410742986478704325.a n = A227792 n

theorem P410742986478704325.correct : P410742986478704325.Spec := by
  intro n
  simp only [A227792]

end A227792

/-! ## A227792.P3681790042855352777

`Δ[A204512(n+5)]/A054977(n)²`
-/

namespace A227792.P3681790042855352777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A054977 n ^ 2 : ℚ)

end

end A227792.P3681790042855352777

namespace A227792

/-- `Δ[A204512(n+5)]/A054977(n)²` -/
def P3681790042855352777.Spec : Prop :=
  ∀ n, P3681790042855352777.a n = (A227792 n : ℚ)

end A227792

/-! ## A227792.P11349590859861916359

`record[∑[A126354(n+1)]%A221172(n)]`
-/

namespace A227792.P11349590859861916359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A221172 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227792.P11349590859861916359

namespace A227792

/-- `record[∑[A126354(n+1)]%A221172(n)]` -/
def P11349590859861916359.Spec : Prop :=
  ∀ n, P11349590859861916359.a n = A227792 n

end A227792

/-! ## A227792.P4139460805281830174

`Δ[A204512(n+5)]^A048766(A048766(n))`
-/

namespace A227792.P4139460805281830174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A048766 (A048766 n).toNat : ℤ)

end

end A227792.P4139460805281830174

namespace A227792

/-- `Δ[A204512(n+5)]^A048766(A048766(n))` -/
def P4139460805281830174.Spec : Prop :=
  ∀ n, P4139460805281830174.a n = (A227792 n : ℚ)

end A227792

/-! ## A227792.P2850342606101131497

`Δ[A204512(n+5)]%A061171(n)`
-/

namespace A227792.P2850342606101131497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A061171 n)

end

end A227792.P2850342606101131497

namespace A227792

/-- `Δ[A204512(n+5)]%A061171(n)` -/
def P2850342606101131497.Spec : Prop :=
  ∀ n, P2850342606101131497.a n = A227792 n

end A227792

/-! ## A227792.P14196166001696515539

`Δ[A204512(n+5)]^A002828(n²)`
-/

namespace A227792.P14196166001696515539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A002828 (n ^ 2) : ℤ)

end

end A227792.P14196166001696515539

namespace A227792

/-- `Δ[A204512(n+5)]^A002828(n²)` -/
def P14196166001696515539.Spec : Prop :=
  ∀ n, P14196166001696515539.a n = (A227792 n : ℚ)

end A227792

/-!
# A227793: Numbers whose digital sum is a multiple of 5.

The programs for A227793, the canonical program `A227793.P7932303295659242702` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227793 has offset 1).

The definition of A227793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227793.P7932303295659242702

`eq[0, (a(floor(n/10))+n)%5]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A227793

/-- `eq[0, (a(floor(n/10))+n)%5]` -/
def P7932303295659242702.Spec : Prop :=
  ∀ n, (P7932303295659242702.a n : ℤ) = A227793 (n + 1)

theorem P7932303295659242702.correct : P7932303295659242702.Spec := by
  intro n
  simp only [A227793, Nat.add_sub_cancel]

end A227793

/-! ## A227793.P1893384865345934343

`lt[4, gcd(20, ∑{digits}[n, #])]`
-/

namespace A227793.P1893384865345934343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 20 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227793.P1893384865345934343

namespace A227793

/-- `lt[4, gcd(20, ∑{digits}[n, #])]` -/
def P1893384865345934343.Spec : Prop :=
  ∀ n, (P1893384865345934343.a n : ℤ) = A227793 (n + 1)

end A227793

/-! ## A227793.P7188495148568508000

`eq[0, A007953(n)%5]`
-/

namespace A227793.P7188495148568508000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227793.P7188495148568508000

namespace A227793

/-- `eq[0, A007953(n)%5]` -/
def P7188495148568508000.Spec : Prop :=
  ∀ n, (P7188495148568508000.a n : ℤ) = A227793 (n + 1)

end A227793

/-! ## A227793.P13614447804393520096

`eq[0, A055014(n)%5]`
-/

namespace A227793.P13614447804393520096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055014 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227793.P13614447804393520096

namespace A227793

/-- `eq[0, A055014(n)%5]` -/
def P13614447804393520096.Spec : Prop :=
  ∀ n, (P13614447804393520096.a n : ℤ) = A227793 (n + 1)

end A227793

/-! ## A227793.P6322066323062702135

`eq[0, A108773(n)%5]`
-/

namespace A227793.P6322066323062702135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108773 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227793.P6322066323062702135

namespace A227793

/-- `eq[0, A108773(n)%5]` -/
def P6322066323062702135.Spec : Prop :=
  ∀ n, (P6322066323062702135.a n : ℤ) = A227793 (n + 1)

end A227793

/-! ## A227793.P17461595737687911124

`eq[0, A118881(n)%5]`
-/

namespace A227793.P17461595737687911124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118881 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227793.P17461595737687911124

namespace A227793

/-- `eq[0, A118881(n)%5]` -/
def P17461595737687911124.Spec : Prop :=
  ∀ n, (P17461595737687911124.a n : ℤ) = A227793 (n + 1)

end A227793

/-! ## A227793.P16985746960185168601

`eq[0, A011558(A007953(n))]`
-/

namespace A227793.P16985746960185168601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227793.P16985746960185168601

namespace A227793

/-- `eq[0, A011558(A007953(n))]` -/
def P16985746960185168601.Spec : Prop :=
  ∀ n, (P16985746960185168601.a n : ℤ) = A227793 (n + 1)

end A227793

/-! ## A227793.P14440770562116917155

`lt[A007954(A169805(n)), 1]`
-/

namespace A227793.P14440770562116917155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A169805 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227793.P14440770562116917155

namespace A227793

/-- `lt[A007954(A169805(n)), 1]` -/
def P14440770562116917155.Spec : Prop :=
  ∀ n, (P14440770562116917155.a n : ℤ) = A227793 (n + 1)

end A227793

/-! ## A227793.P7464429180303863525

`eq[0, A010874(A065039(n))]`
-/

namespace A227793.P7464429180303863525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A065039 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227793.P7464429180303863525

namespace A227793

/-- `eq[0, A010874(A065039(n))]` -/
def P7464429180303863525.Spec : Prop :=
  ∀ n, (P7464429180303863525.a n : ℤ) = A227793 (n + 1)

end A227793

/-!
# A227794: Primes of the form floor(Pi*k^2).

The programs for A227794, there is no canonical definition to state claims against.
-/

/-! ## A227794.P211196002865343022

`A066643(A067559(n+1))`
-/

namespace A227794.P211196002865343022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (A067559 (n + 1)).toNat

end

end A227794.P211196002865343022

/-! ## A227794.P16115894651673815277

`char[A336285(n)]*A135039(A067559(n+1))-1`
-/

namespace A227794.P16115894651673815277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336285 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A135039 (A067559 (n + 1)).toNat - 1

end

end A227794.P16115894651673815277

/-! ## A227794.P10355107747094340796

`A135039(A067559(n+1))+A001478(n+1)+n`
-/

namespace A227794.P10355107747094340796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (A067559 (n + 1)).toNat + A001478 (n + 1) + (n : ℤ)

end

end A227794.P10355107747094340796

/-! ## A227794.P8537888468556580993

`A135039(A067559(n+1))-A299406(p?[A053743(n)+2])`
-/

namespace A227794.P8537888468556580993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (A067559 (n + 1)).toNat - A299406 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A227794.P8537888468556580993

/-! ## A227794.P16835313751765885151

`A135039(A067559(n+1))-A002260(C(n, 2)+1)`
-/

namespace A227794.P16835313751765885151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (A067559 (n + 1)).toNat - A002260 (Nat.choose n 2 + 1)

end

end A227794.P16835313751765885151

/-! ## A227794.P10089211767188730293

`A135039(A067559(n+1))-A002260(∑[n+1]+1)`
-/

namespace A227794.P10089211767188730293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (A067559 (n + 1)).toNat - A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227794.P10089211767188730293

/-! ## A227794.P14639059085441676167

`A135039(A067559(n+1))-A010054(∑[n+1])`
-/

namespace A227794.P14639059085441676167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (A067559 (n + 1)).toNat - A010054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227794.P14639059085441676167

/-! ## A227794.P5283660206681563998

`A135039(A067559(n+1))-A166046(n)%2`
-/

namespace A227794.P5283660206681563998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (A067559 (n + 1)).toNat - Int.tmod (A166046 n) 2

end

end A227794.P5283660206681563998

/-! ## A227794.P8943931873776108378

`A135039(A067559(n+1))-A071031(n²)`
-/

namespace A227794.P8943931873776108378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (A067559 (n + 1)).toNat - A071031 (n ^ 2)

end

end A227794.P8943931873776108378

/-! ## A227794.P15804028783791863559

`A135039(A067559(n+1))-A033999(∑[2*n])`
-/

namespace A227794.P15804028783791863559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (A067559 (n + 1)).toNat - A033999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227794.P15804028783791863559

/-! ## A227794.P10780038914248944487

`A135039(A067559(n+1))-A055491(A055491(n+1))`
-/

namespace A227794.P10780038914248944487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (A067559 (n + 1)).toNat - A055491 (A055491 (n + 1)).toNat

end

end A227794.P10780038914248944487

/-! ## A227794.P4030910444119105519

`A135039(A067559(n+1))-A062760(A066048(n+1))`
-/

namespace A227794.P4030910444119105519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (A067559 (n + 1)).toNat - A062760 (A066048 (n + 1)).toNat

end

end A227794.P4030910444119105519

/-!
# A227795: For each base, b, beginning with binary, the number of (b-1)-digit primes with one copy of each digit save one.

The programs for A227795, there is no canonical definition to state claims against.
-/

/-! ## A227795.P2111677093135846252

`xor(A048669(n+1), A087842(A007559(n)))`
-/

namespace A227795.P2111677093135846252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048669 (n + 1)) (A087842 (A007559 n).toNat)

end

end A227795.P2111677093135846252

/-! ## A227795.P3245524189705914496

`xor(A000254(n), A286380(A119723(n+1)))`
-/

namespace A227795.P3245524189705914496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000254 n) (A286380 (A119723 (n + 1)).toNat)

end

end A227795.P3245524189705914496

/-!
# A227796: T(n,k,r,s) is the number of partitions in the s-th run of strictly increasing numbers of 2 X 2 X 2 cubes in the list of partitions of an n X k X r rectangular cuboid into integer-sided cubes, considering only the list of parts; irregular triangle T(n,k,r,s), n >= k >= r >= 1, s >= 1. The sorting order for the list of partitions is ascending with larger squares taking higher precedence.

The programs for A227796, there is no canonical definition to state claims against.
-/

/-! ## A227796.P15626541744771220412

`gcd(A055980(n+1), A166050(A017994(n)))`
-/

namespace A227796.P15626541744771220412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055980 (n + 1)) (A166050 (A017994 n).toNat)

end

end A227796.P15626541744771220412

/-! ## A227796.P12158159854258654204

`gcd(A046087(n+1), A282622(A315471(n)))`
-/

namespace A227796.P12158159854258654204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046087 (n + 1)) (A282622 (A315471 n).toNat)

end

end A227796.P12158159854258654204

/-! ## A227796.P9467097722969837016

`A072909(A034444(n+1)+A015781(n+1))`
-/

namespace A227796.P9467097722969837016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (A034444 (n + 1) + A015781 (n + 1)).toNat

end

end A227796.P9467097722969837016

/-! ## A227796.P661423530199060963

`A028293(A100712(n+1)*A276213(n+1))`
-/

namespace A227796.P661423530199060963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028293 (A100712 (n + 1) * A276213 (n + 1)).toNat

end

end A227796.P661423530199060963

/-! ## A227796.P13040881261784907678

`A115575(eq[A005811(3*n+4), A115574(n+1)])`
-/

namespace A227796.P13040881261784907678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115575 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227796.P13040881261784907678

