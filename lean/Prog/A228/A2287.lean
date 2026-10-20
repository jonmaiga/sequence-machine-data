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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A228700: a(n) = 2^n*(4^n-3^(n+1)+3*2^n-1)/6.

The programs for A228700, the canonical program `A228700.P12928545491596047240` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228700 has offset 0).

The definition of A228700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228700.P12928545491596047240

`2^n*(4^n-3^(n+1)+3*2^n-1)/6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228700

/-- `2^n*(4^n-3^(n+1)+3*2^n-1)/6` -/
def P12928545491596047240.Spec : Prop :=
  ∀ n, P12928545491596047240.a n = (A228700 n : ℚ)

end A228700

/-! ## A228700.P16601291479079900004

`A026740(n)-A228701(n)`
-/

namespace A228700.P16601291479079900004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026740 n - A228701 n

end

end A228700.P16601291479079900004

namespace A228700

/-- `A026740(n)-A228701(n)` -/
def P16601291479079900004.Spec : Prop :=
  ∀ n, P16601291479079900004.a n = A228700 n

end A228700

/-! ## A228700.P9023625407525303436

`A092055(n)-A000079(n)*A007051(n)`
-/

namespace A228700.P9023625407525303436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092055 n - A000079 n * A007051 n

end

end A228700.P9023625407525303436

namespace A228700

/-- `A092055(n)-A000079(n)*A007051(n)` -/
def P9023625407525303436.Spec : Prop :=
  ∀ n, P9023625407525303436.a n = A228700 n

end A228700

/-! ## A228700.P8618346424330193045

`abs((A007581(n)-A007051(n))*A000079(n))`
-/

namespace A228700.P8618346424330193045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A007581 n - A007051 n) * A000079 n|

end

end A228700.P8618346424330193045

namespace A228700

/-- `abs((A007581(n)-A007051(n))*A000079(n))` -/
def P8618346424330193045.Spec : Prop :=
  ∀ n, P8618346424330193045.a n = A228700 n

end A228700

/-!
# A228701: a(n) = 2^(n-1)*(3^n-2^(n+1)+1).

The programs for A228701, the canonical program `A228701.P6787779585567507805` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228701 has offset 0).

The definition of A228701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228701.P6787779585567507805

`2^(n-1)*(3^n-2^(n+1)+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228701

/-- `2^(n-1)*(3^n-2^(n+1)+1)` -/
def P6787779585567507805.Spec : Prop :=
  ∀ n, P6787779585567507805.a n = (A228701 n : ℚ)

end A228701

/-! ## A228701.P11348418250326107325

`(A101052(n)-1)*2^n/2`
-/

namespace A228701.P11348418250326107325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A101052 n - 1) * (2 ^ n : ℤ) : ℚ) / 2

end

end A228701.P11348418250326107325

namespace A228701

/-- `(A101052(n)-1)*2^n/2` -/
def P11348418250326107325.Spec : Prop :=
  ∀ n, P11348418250326107325.a n = (A228701 n : ℚ)

end A228701

/-! ## A228701.P3777014916832374916

`(3^n-∑[A000079(n)])*2^n/2`
-/

namespace A228701.P3777014916832374916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((3 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) * (2 ^ n : ℤ) : ℤ) : ℚ) / 2

end

end A228701.P3777014916832374916

namespace A228701

/-- `(3^n-∑[A000079(n)])*2^n/2` -/
def P3777014916832374916.Spec : Prop :=
  ∀ n, P3777014916832374916.a n = (A228701 n : ℚ)

end A228701

/-! ## A228701.P15831510352545776316

`A081199(n)-A006516(n)`
-/

namespace A228701.P15831510352545776316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081199 n - A006516 n

end

end A228701.P15831510352545776316

namespace A228701

/-- `A081199(n)-A006516(n)` -/
def P15831510352545776316.Spec : Prop :=
  ∀ n, P15831510352545776316.a n = A228701 n

end A228701

/-! ## A228701.P10076400805972748408

`lcm(A000392(n+1), A056450(n))`
-/

namespace A228701.P10076400805972748408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000392 (n + 1)) (A056450 n)

end

end A228701.P10076400805972748408

namespace A228701

/-- `lcm(A000392(n+1), A056450(n))` -/
def P10076400805972748408.Spec : Prop :=
  ∀ n, (P10076400805972748408.a n : ℤ) = A228701 n

end A228701

/-! ## A228701.P18086043233972803567

`lcm(A141125(n), A260217(n+1))`
-/

namespace A228701.P18086043233972803567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141125 n) (A260217 (n + 1))

end

end A228701.P18086043233972803567

namespace A228701

/-- `lcm(A141125(n), A260217(n+1))` -/
def P18086043233972803567.Spec : Prop :=
  ∀ n, (P18086043233972803567.a n : ℤ) = A228701 n

end A228701

/-! ## A228701.P4886085820552591674

`A081335(n)-A011782(2*n+1)`
-/

namespace A228701.P4886085820552591674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081335 n - A011782 (2 * n + 1)

end

end A228701.P4886085820552591674

namespace A228701

/-- `A081335(n)-A011782(2*n+1)` -/
def P4886085820552591674.Spec : Prop :=
  ∀ n, P4886085820552591674.a n = A228701 n

end A228701

/-! ## A228701.P14413042375650271827

`A000079(n)*A134063(n)-A000079(n)`
-/

namespace A228701.P14413042375650271827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A134063 n - A000079 n

end

end A228701.P14413042375650271827

namespace A228701

/-- `A000079(n)*A134063(n)-A000079(n)` -/
def P14413042375650271827.Spec : Prop :=
  ∀ n, P14413042375650271827.a n = A228701 n

end A228701

/-! ## A228701.P3929333330640661138

`A000392(n+1)+A000225(n)*A000392(n+1)`
-/

namespace A228701.P3929333330640661138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + A000225 n * A000392 (n + 1)

end

end A228701.P3929333330640661138

namespace A228701

/-- `A000392(n+1)+A000225(n)*A000392(n+1)` -/
def P3929333330640661138.Spec : Prop :=
  ∀ n, P3929333330640661138.a n = A228701 n

end A228701

/-! ## A228701.P13930617432970131650

`A000392(n+1)*A094373(n+1)-A000392(n+1)`
-/

namespace A228701.P13930617432970131650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) * A094373 (n + 1) - A000392 (n + 1)

end

end A228701.P13930617432970131650

namespace A228701

/-- `A000392(n+1)*A094373(n+1)-A000392(n+1)` -/
def P13930617432970131650.Spec : Prop :=
  ∀ n, P13930617432970131650.a n = A228701 n

end A228701

/-!
# A228702: Wiener index of generalized Fibonacci cube graph Q_n(111).

The programs for A228702, there is no canonical definition to state claims against.
-/

/-! ## A228702.P13788755918911937304

`A110659(A377153(n))`
-/

namespace A228702.P13788755918911937304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A377153 n).toNat

end

end A228702.P13788755918911937304

/-! ## A228702.P17267147175724786119

`A110655(A255052(n)-A129246(n+2))`
-/

namespace A228702.P17267147175724786119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A255052 n - A129246 (n + 2)).toNat

end

end A228702.P17267147175724786119

/-!
# A228703: Arises in analysis of the halving procedure for detecting two defectives among n items.

The programs for A228703, there is no canonical definition to state claims against.
-/

/-! ## A228703.P7294198894782853681

`A144934(n+2)+1`
-/

namespace A228703.P7294198894782853681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144934 (n + 2) + 1

end

end A228703.P7294198894782853681

/-! ## A228703.P7820788410224161696

`A017911(A144933(n+2))`
-/

namespace A228703.P7820788410224161696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 (A144933 (n + 2)).toNat

end

end A228703.P7820788410224161696

/-! ## A228703.P14656195154695325231

`A103341(comp[A338914(n)-1])`
-/

namespace A228703.P14656195154695325231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338914 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103341 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A228703.P14656195154695325231

/-! ## A228703.P10589400758701174688

`A017912(or(1, A144933(n+2)))`
-/

namespace A228703.P10589400758701174688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (Int.lor 1 (A144933 (n + 2))).toNat

end

end A228703.P10589400758701174688

/-!
# A228704: Number of 4-irreducible maps made up of two hexagons and n squares.

The programs for A228704, there is no canonical definition to state claims against.
-/

/-! ## A228704.P14376270615947522690

`A269317(A058764(n))+A135507(n+1)`
-/

namespace A228704.P14376270615947522690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269317 (A058764 n).toNat + A135507 (n + 1)

end

end A228704.P14376270615947522690

/-!
# A228705: Expansion of (1-2*x+4*x^2-2*x^3+x^4)/((1-x)^4*(1+x^2)^2).

The programs for A228705, the canonical program `A228705.P4874441327394073455` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228705 has offset 0).

The definition of A228705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+4x^2-2x^3+x^4)/(1-4x+8x^2-12x^3+14x^4-12x^5+8x^6-4x^7+x^8))` (program `A228705.P4874441327394073455`, by `A228705.P4874441327394073455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228705.P4874441327394073455

`ogf((1-2x+4x^2-2x^3+x^4)/(1-4x+8x^2-12x^3+14x^4-12x^5+8x^6-4x^7+x^8))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228705

/-- `ogf((1-2x+4x^2-2x^3+x^4)/(1-4x+8x^2-12x^3+14x^4-12x^5+8x^6-4x^7+x^8))` -/
def P4874441327394073455.Spec : Prop :=
  ∀ n, P4874441327394073455.a n = A228705 n

theorem P4874441327394073455.correct : P4874441327394073455.Spec := by
  intro n
  simp only [A228705]

end A228705

/-! ## A228705.P10371879063444604454

`∑[or(1, ∑[n])-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A228705.P10371879063444604454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P10371879063444604454

namespace A228705

/-- `∑[or(1, ∑[n])-a(n-2)]` -/
def P10371879063444604454.Spec : Prop :=
  ∀ n, P10371879063444604454.a n = A228705 n

end A228705

/-! ## A228705.P7548410585246777050

`∑[round((n+1)*or(2, n+1)/4)]`
-/

namespace A228705.P7548410585246777050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((Nat.lor 2 (n + 1) : ℚ) / 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P7548410585246777050

namespace A228705

/-- `∑[round((n+1)*or(2, n+1)/4)]` -/
def P7548410585246777050.Spec : Prop :=
  ∀ n, P7548410585246777050.a n = A228705 n

end A228705

/-! ## A228705.P2971638005372442722

`∑[(n+1)*a(n-2)%n]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A228705.P2971638005372442722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 1) * (f1 (n - 2) % n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A228705.P2971638005372442722

namespace A228705

/-- `∑[(n+1)*a(n-2)%n]-a(n-1)` -/
def P2971638005372442722.Spec : Prop :=
  ∀ n, P2971638005372442722.a n = A228705 n

end A228705

/-! ## A228705.P9656889248226591893

`∑[A282079(n)]`
-/

namespace A228705.P9656889248226591893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P9656889248226591893

namespace A228705

/-- `∑[A282079(n)]` -/
def P9656889248226591893.Spec : Prop :=
  ∀ n, P9656889248226591893.a n = A228705 n

end A228705

/-! ## A228705.P15550109310774557100

`∑[A002620(A098180(n+1))]`
-/

namespace A228705.P15550109310774557100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A098180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P15550109310774557100

namespace A228705

/-- `∑[A002620(A098180(n+1))]` -/
def P15550109310774557100.Spec : Prop :=
  ∀ n, P15550109310774557100.a n = A228705 n

end A228705

/-! ## A228705.P3428358049318498942

`∑[A004525(n+1)*A004525(n+2)]`
-/

namespace A228705.P3428358049318498942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1) * A004525 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P3428358049318498942

namespace A228705

/-- `∑[A004525(n+1)*A004525(n+2)]` -/
def P3428358049318498942.Spec : Prop :=
  ∀ n, P3428358049318498942.a n = A228705 n

end A228705

/-! ## A228705.P3596545369840039348

`A228706(n)+A159914(n+3)`
-/

namespace A228705.P3596545369840039348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228706 n + A159914 (n + 3)

end

end A228705.P3596545369840039348

namespace A228705

/-- `A228706(n)+A159914(n+3)` -/
def P3596545369840039348.Spec : Prop :=
  ∀ n, P3596545369840039348.a n = A228705 n

end A228705

/-! ## A228705.P14289394653094571036

`∑[A008130(A293990(n+1))]`
-/

namespace A228705.P14289394653094571036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (A293990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P14289394653094571036

namespace A228705

/-- `∑[A008130(A293990(n+1))]` -/
def P14289394653094571036.Spec : Prop :=
  ∀ n, P14289394653094571036.a n = A228705 n

end A228705

/-! ## A228705.P14753403983559872355

`∑[A008133(A047247(n+2))]`
-/

namespace A228705.P14753403983559872355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (A047247 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P14753403983559872355

namespace A228705

/-- `∑[A008133(A047247(n+2))]` -/
def P14753403983559872355.Spec : Prop :=
  ∀ n, P14753403983559872355.a n = A228705 n

end A228705

/-! ## A228705.P17609635140728753153

`∑[A002620(A000034(A001651(n+1))+n)]`
-/

namespace A228705.P17609635140728753153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A000034 (A001651 (n + 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P17609635140728753153

namespace A228705

/-- `∑[A002620(A000034(A001651(n+1))+n)]` -/
def P17609635140728753153.Spec : Prop :=
  ∀ n, P17609635140728753153.a n = A228705 n

end A228705

/-! ## A228705.P5661700171515913226

`∑[A004273(A008621(n+1))*A008621(2*n)]`
-/

namespace A228705.P5661700171515913226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008621 (n + 1)).toNat * A008621 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P5661700171515913226

namespace A228705

/-- `∑[A004273(A008621(n+1))*A008621(2*n)]` -/
def P5661700171515913226.Spec : Prop :=
  ∀ n, P5661700171515913226.a n = A228705 n

end A228705

/-! ## A228705.P2545907085890074712

`∑[A008217(A047514(n+2))]`
-/

namespace A228705.P2545907085890074712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A047514 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P2545907085890074712

namespace A228705

/-- `∑[A008217(A047514(n+2))]` -/
def P2545907085890074712.Spec : Prop :=
  ∀ n, P2545907085890074712.a n = A228705 n

end A228705

/-! ## A228705.P5695446408252631906

`∑[A187243(A002081(n))]`
-/

namespace A228705.P5695446408252631906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187243 (A002081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P5695446408252631906

namespace A228705

/-- `∑[A187243(A002081(n))]` -/
def P5695446408252631906.Spec : Prop :=
  ∀ n, P5695446408252631906.a n = A228705 n

end A228705

/-! ## A228705.P7427667624304575778

`∑[A187243(A102039(n+2))]`
-/

namespace A228705.P7427667624304575778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187243 (A102039 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P7427667624304575778

namespace A228705

/-- `∑[A187243(A102039(n+2))]` -/
def P7427667624304575778.Spec : Prop :=
  ∀ n, P7427667624304575778.a n = A228705 n

end A228705

/-! ## A228705.P9406175000419383930

`∑[A282011(∑[n+3])]`
-/

namespace A228705.P9406175000419383930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228705.P9406175000419383930

namespace A228705

/-- `∑[A282011(∑[n+3])]` -/
def P9406175000419383930.Spec : Prop :=
  ∀ n, P9406175000419383930.a n = A228705 n

end A228705

/-! ## A228705.P9241871351367573559

`A165453(A302488(n+1))`
-/

namespace A228705.P9241871351367573559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165453 (A302488 (n + 1)).toNat

end

end A228705.P9241871351367573559

namespace A228705

/-- `A165453(A302488(n+1))` -/
def P9241871351367573559.Spec : Prop :=
  ∀ n, P9241871351367573559.a n = A228705 n

end A228705

/-! ## A228705.P8359084210156849692

`A282011(A046691(n+2))`
-/

namespace A228705.P8359084210156849692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A046691 (n + 2)).toNat

end

end A228705.P8359084210156849692

namespace A228705

/-- `A282011(A046691(n+2))` -/
def P8359084210156849692.Spec : Prop :=
  ∀ n, P8359084210156849692.a n = A228705 n

end A228705

/-! ## A228705.P9722536438298017278

`A282011(A052905(n+1)+1)`
-/

namespace A228705.P9722536438298017278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A052905 (n + 1) + 1).toNat

end

end A228705.P9722536438298017278

namespace A228705

/-- `A282011(A052905(n+1)+1)` -/
def P9722536438298017278.Spec : Prop :=
  ∀ n, P9722536438298017278.a n = A228705 n

end A228705

/-! ## A228705.P5765500992006604296

`A282011(A055999(n+1)+2)`
-/

namespace A228705.P5765500992006604296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A055999 (n + 1) + 2).toNat

end

end A228705.P5765500992006604296

namespace A228705

/-- `A282011(A055999(n+1)+2)` -/
def P5765500992006604296.Spec : Prop :=
  ∀ n, P5765500992006604296.a n = A228705 n

end A228705

/-!
# A228706: Expansion of (1 - 3*x + 5*x^2 - 3*x^3 + x^4)/((1-x)^4*(1+x^2)^2).

The programs for A228706, the canonical program `A228706.P6618475379785732229` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228706 has offset 0).

The definition of A228706 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+5x^2-3x^3+x^4)/(1-4x+8x^2-12x^3+14x^4-12x^5+8x^6-4x^7+x^8))` (program `A228706.P6618475379785732229`, by `A228706.P6618475379785732229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228706.P6618475379785732229

`ogf((1-3x+5x^2-3x^3+x^4)/(1-4x+8x^2-12x^3+14x^4-12x^5+8x^6-4x^7+x^8))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228706

/-- `ogf((1-3x+5x^2-3x^3+x^4)/(1-4x+8x^2-12x^3+14x^4-12x^5+8x^6-4x^7+x^8))` -/
def P6618475379785732229.Spec : Prop :=
  ∀ n, P6618475379785732229.a n = A228706 n

theorem P6618475379785732229.correct : P6618475379785732229.Spec := by
  intro n
  simp only [A228706]

end A228706

/-! ## A228706.P10265683823874069192

`∑[round(xor(2, n+1)/4)*A008619(n)]`
-/

namespace A228706.P10265683823874069192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n + 1) : ℚ) / 4) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228706.P10265683823874069192

namespace A228706

/-- `∑[round(xor(2, n+1)/4)*A008619(n)]` -/
def P10265683823874069192.Spec : Prop :=
  ∀ n, P10265683823874069192.a n = A228706 n

end A228706

/-! ## A228706.P9418791453395985999

`∑[A008619(n)*A110659(n)]`
-/

namespace A228706.P9418791453395985999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A110659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228706.P9418791453395985999

namespace A228706

/-- `∑[A008619(n)*A110659(n)]` -/
def P9418791453395985999.Spec : Prop :=
  ∀ n, P9418791453395985999.a n = A228706 n

end A228706

/-! ## A228706.P15049771829518458802

`∑[(A004526(n)+1)*A110659(n)]`
-/

namespace A228706.P15049771829518458802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) * A110659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228706.P15049771829518458802

namespace A228706

/-- `∑[(A004526(n)+1)*A110659(n)]` -/
def P15049771829518458802.Spec : Prop :=
  ∀ n, P15049771829518458802.a n = A228706 n

end A228706

/-! ## A228706.P3696288182585045524

`∑[A110654(n+1)*A110659(n)]`
-/

namespace A228706.P3696288182585045524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) * A110659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228706.P3696288182585045524

namespace A228706

/-- `∑[A110654(n+1)*A110659(n)]` -/
def P3696288182585045524.Spec : Prop :=
  ∀ n, P3696288182585045524.a n = A228706 n

end A228706

/-! ## A228706.P12330687499395658833

`∑[A110654(n+1)*A110657(xor(1, n))]`
-/

namespace A228706.P12330687499395658833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) * A110657 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228706.P12330687499395658833

namespace A228706

/-- `∑[A110654(n+1)*A110657(xor(1, n))]` -/
def P12330687499395658833.Spec : Prop :=
  ∀ n, P12330687499395658833.a n = A228706 n

end A228706

/-! ## A228706.P13929193781183488441

`∑[∑[A030045(a(n-1))]*A110659(n)]` with `a(0)=1`
-/

namespace A228706.P13929193781183488441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A030045 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A110659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228706.P13929193781183488441

namespace A228706

/-- `∑[∑[A030045(a(n-1))]*A110659(n)]` -/
def P13929193781183488441.Spec : Prop :=
  ∀ n, P13929193781183488441.a n = A228706 n

end A228706

/-! ## A228706.P15485691151668830094

`∑[∑[A110659(a(n-1))]*A110659(n)]` with `a(0)=1`
-/

namespace A228706.P15485691151668830094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A110659 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A110659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228706.P15485691151668830094

namespace A228706

/-- `∑[∑[A110659(a(n-1))]*A110659(n)]` -/
def P15485691151668830094.Spec : Prop :=
  ∀ n, P15485691151668830094.a n = A228706 n

end A228706

/-! ## A228706.P12444865003277148131

`∑[A028242(A110654(n))*A110654(n+1)]`
-/

namespace A228706.P12444865003277148131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A110654 n).toNat * A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228706.P12444865003277148131

namespace A228706

/-- `∑[A028242(A110654(n))*A110654(n+1)]` -/
def P12444865003277148131.Spec : Prop :=
  ∀ n, P12444865003277148131.a n = A228706 n

end A228706

/-! ## A228706.P17393971637236293764

`A228705(n)-A159914(n+3)`
-/

namespace A228706.P17393971637236293764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228705 n - A159914 (n + 3)

end

end A228706.P17393971637236293764

namespace A228706

/-- `A228705(n)-A159914(n+3)` -/
def P17393971637236293764.Spec : Prop :=
  ∀ n, P17393971637236293764.a n = A228706 n

end A228706

/-! ## A228706.P1934412455347539086

`A053307(n)-A027656(A027656(n)+n)`
-/

namespace A228706.P1934412455347539086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053307 n - A027656 (A027656 n + (n : ℤ)).toNat

end

end A228706.P1934412455347539086

namespace A228706

/-- `A053307(n)-A027656(A027656(n)+n)` -/
def P1934412455347539086.Spec : Prop :=
  ∀ n, P1934412455347539086.a n = A228706 n

end A228706

/-! ## A228706.P9717217602518764206

`∑[A008624(2*n)*A028242(A008624(2*n+1))]`
-/

namespace A228706.P9717217602518764206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * n) * A028242 (A008624 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228706.P9717217602518764206

namespace A228706

/-- `∑[A008624(2*n)*A028242(A008624(2*n+1))]` -/
def P9717217602518764206.Spec : Prop :=
  ∀ n, P9717217602518764206.a n = A228706 n

end A228706

/-!
# A228707: G.f.: (1-3*x+5*x^2-5*x^3+5*x^4-5*x^5+5*x^6-3*x^7+x^8)/((1-x)^4*(1+x^4)*(1+x^2)^2).

The programs for A228707, the canonical program `A228707.P14961629345554892652` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228707 has offset 0).

The definition of A228707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228707.P14961629345554892652

`ceil((A228706(n)+A002265(n))/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A228707

/-- `ceil((A228706(n)+A002265(n))/2)` -/
def P14961629345554892652.Spec : Prop :=
  ∀ n, P14961629345554892652.a n = A228707 n

theorem P14961629345554892652.correct : P14961629345554892652.Spec := by
  intro n
  simp only [A228707]

end A228707

/-! ## A228707.P7622866412927200189

`∑[A110654(A008619(n)*A110659(n))]`
-/

namespace A228707.P7622866412927200189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008619 n * A110659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228707.P7622866412927200189

namespace A228707

/-- `∑[A110654(A008619(n)*A110659(n))]` -/
def P7622866412927200189.Spec : Prop :=
  ∀ n, P7622866412927200189.a n = A228707 n

end A228707

/-! ## A228707.P1927320792615337504

`∑[A110654(A110654(n+1)*A110659(n))]`
-/

namespace A228707.P1927320792615337504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (n + 1) * A110659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228707.P1927320792615337504

namespace A228707

/-- `∑[A110654(A110654(n+1)*A110659(n))]` -/
def P1927320792615337504.Spec : Prop :=
  ∀ n, P1927320792615337504.a n = A228707 n

end A228707

/-! ## A228707.P9674170200708845394

`A065033(A228706(n)+A002265(n))`
-/

namespace A228707.P9674170200708845394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A228706 n + A002265 n).toNat

end

end A228707.P9674170200708845394

namespace A228707

/-- `A065033(A228706(n)+A002265(n))` -/
def P9674170200708845394.Spec : Prop :=
  ∀ n, P9674170200708845394.a n = A228707 n

end A228707

/-! ## A228707.P9576157758814368915

`A110654(A228706(n)+A002265(n))`
-/

namespace A228707.P9576157758814368915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A228706 n + A002265 n).toNat

end

end A228707.P9576157758814368915

namespace A228707

/-- `A110654(A228706(n)+A002265(n))` -/
def P9576157758814368915.Spec : Prop :=
  ∀ n, P9576157758814368915.a n = A228707 n

end A228707

/-! ## A228707.P13264427553281666511

`A004526(A002265(n)+A228706(n)+1)`
-/

namespace A228707.P13264427553281666511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002265 n + (A228706 n + 1)).toNat

end

end A228707.P13264427553281666511

namespace A228707

/-- `A004526(A002265(n)+A228706(n)+1)` -/
def P13264427553281666511.Spec : Prop :=
  ∀ n, P13264427553281666511.a n = A228707 n

end A228707

/-! ## A228707.P6422231370785681154

`A008619(A002265(n)+A228706(n)-1)`
-/

namespace A228707.P6422231370785681154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002265 n + (A228706 n - 1)).toNat

end

end A228707.P6422231370785681154

namespace A228707

/-- `A008619(A002265(n)+A228706(n)-1)` -/
def P6422231370785681154.Spec : Prop :=
  ∀ n, P6422231370785681154.a n = A228707 n

end A228707

/-! ## A228707.P3980268949051928002

`A080513(A228706(n)+A002265(n))-1`
-/

namespace A228707.P3980268949051928002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A228706 n + A002265 n).toNat - 1

end

end A228707.P3980268949051928002

namespace A228707

/-- `A080513(A228706(n)+A002265(n))-1` -/
def P3980268949051928002.Spec : Prop :=
  ∀ n, P3980268949051928002.a n = A228707 n

end A228707

/-! ## A228707.P1028173789008416830

`A008619(A002265(n)-(1-A228706(n)))`
-/

namespace A228707.P1028173789008416830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002265 n - (1 - A228706 n)).toNat

end

end A228707.P1028173789008416830

namespace A228707

/-- `A008619(A002265(n)-(1-A228706(n)))` -/
def P1028173789008416830.Spec : Prop :=
  ∀ n, P1028173789008416830.a n = A228707 n

end A228707

/-!
# A228708: Triangle T(n,k) read by rows: T(n,k) = number of permutations on 123...n with exactly one abc pattern and no aj pattern with j<=k, for n>=0, 0<=k<=n.

The programs for A228708, there is no canonical definition to state claims against.
-/

/-! ## A228708.P12023369999445256682

`A353024(A107876(n))`
-/

namespace A228708.P12023369999445256682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353024 (A107876 n).toNat

end

end A228708.P12023369999445256682

/-! ## A228708.P15328266564005723975

`A235613(A107876(n)²)`
-/

namespace A228708.P15328266564005723975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235613 (A107876 n ^ 2).toNat

end

end A228708.P15328266564005723975

/-!
# A228709: Numbers having in decimal representation at least one pair of consecutive digits with the same parity.

The programs for A228709, there is no canonical definition to state claims against.
-/

/-! ## A228709.P9878015979752250089

`comp[A030141(n+1)]`
-/

namespace A228709.P9878015979752250089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228709.P9878015979752250089

/-! ## A228709.P7777447766997568120

`comp[A098951(n+1)]`
-/

namespace A228709.P7777447766997568120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228709.P7777447766997568120

/-! ## A228709.P11374805523859061485

`lt[n*A228710(n), n]`
-/

namespace A228709.P11374805523859061485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228710 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228709.P11374805523859061485

/-! ## A228709.P10317520653070507109

`lt[1, n*(n-A228722(n))]`
-/

namespace A228709.P10317520653070507109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - A228722 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228709.P10317520653070507109

/-! ## A228709.P13718296110125776452

`eq[A228722(abs(1-n)), A228722(n)]`
-/

namespace A228709.P13718296110125776452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P13718296110125776452

/-! ## A228709.P1143999052134691452

`eq[1, A056753(A056753(n)*A228710(n))]`
-/

namespace A228709.P1143999052134691452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (A056753 n * A228710 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228709.P1143999052134691452

/-! ## A228709.P5875150976562875931

`eq[1, A114567(A114567(n)*A228710(n))]`
-/

namespace A228709.P5875150976562875931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 (A114567 n * A228710 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228709.P5875150976562875931

/-! ## A228709.P6063725541141811046

`eq[A228710(n)+A002487(n), A002487(n)]`
-/

namespace A228709.P6063725541141811046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P6063725541141811046

/-! ## A228709.P10182294769206786601

`eq[A228710(n)+A003415(n), A003415(n)]`
-/

namespace A228709.P10182294769206786601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P10182294769206786601

/-! ## A228709.P205013253299075915

`eq[A228710(n)+A004086(n), A004086(n)]`
-/

namespace A228709.P205013253299075915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P205013253299075915

/-! ## A228709.P11537241935026346805

`eq[A228710(n)+A018783(n), A018783(n)]`
-/

namespace A228709.P11537241935026346805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P11537241935026346805

/-! ## A228709.P3326639937038956259

`eq[A228710(n)+A019303(n), A019303(n)]`
-/

namespace A228709.P3326639937038956259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A019303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P3326639937038956259

/-! ## A228709.P13095888931668740668

`eq[A228710(n)+A032741(n), A032741(n)]`
-/

namespace A228709.P13095888931668740668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P13095888931668740668

/-! ## A228709.P17002068643191083941

`eq[A228710(n)+A046902(n), A046902(n)]`
-/

namespace A228709.P17002068643191083941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A046902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P17002068643191083941

/-! ## A228709.P13397705946937692614

`eq[A228710(n)+A053381(n), A053381(n)]`
-/

namespace A228709.P13397705946937692614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A053381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P13397705946937692614

/-! ## A228709.P5283800221759034795

`eq[A228710(n)+A057945(n), A057945(n)]`
-/

namespace A228709.P5283800221759034795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A057945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P5283800221759034795

/-! ## A228709.P4784504178179456535

`eq[A228710(n)+A059717(n), A059717(n)]`
-/

namespace A228709.P4784504178179456535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A059717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P4784504178179456535

/-! ## A228709.P4831552845522223352

`eq[A228710(n)+A061336(n), A061336(n)]`
-/

namespace A228709.P4831552845522223352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A061336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P4831552845522223352

/-! ## A228709.P17619253074157464469

`eq[A228710(n)+A067898(n), A067898(n)]`
-/

namespace A228709.P17619253074157464469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A067898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P17619253074157464469

/-! ## A228709.P18174027049410745793

`eq[A228710(n)+A073053(n), A073053(n)]`
-/

namespace A228709.P18174027049410745793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A073053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228709.P18174027049410745793

/-!
# A228710: Characteristic function of numbers with alternating parities of their digits in decimal representation.

The programs for A228710, there is no canonical definition to state claims against.
-/

/-! ## A228710.P8211810475230271770

`char[A228722(n)]`
-/

namespace A228710.P8211810475230271770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A228710.P8211810475230271770

/-!
# A228711: G.f. A(x) satisfies: A(x)^4 = A(x^2)^2 + 8*x.

The programs for A228711, there is no canonical definition to state claims against.
-/

/-! ## A228711.P14901656978525944597

`xor(-A336694(2*(n+1)), A101206(n+2))`
-/

namespace A228711.P14901656978525944597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A336694 (2 * (n + 1))) (A101206 (n + 2))

end

end A228711.P14901656978525944597

/-!
# A228713: G.f. satisfies: A(x) = -1 + x + A(x)^3 + 1/A(x)^3.

The programs for A228713, there is no canonical definition to state claims against.
-/

/-! ## A228713.P9567987227300972729

`A089001(A058338(n)²)`
-/

namespace A228713.P9567987227300972729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (A058338 n ^ 2).toNat

end

end A228713.P9567987227300972729

/-!
# A228714: G.f. satisfies: A(x) = -1 + x + A(x)^2 + 1/A(x)^2.

The programs for A228714, there is no canonical definition to state claims against.
-/

/-! ## A228714.P4635286753178076787

`A166993(n)-A330123(A000088(n))`
-/

namespace A228714.P4635286753178076787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166993 n - A330123 (A000088 n).toNat

end

end A228714.P4635286753178076787

/-! ## A228714.P14726213298426357908

`A019446(A001006(n)*A127632(n))`
-/

namespace A228714.P14726213298426357908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A001006 n * A127632 n).toNat

end

end A228714.P14726213298426357908

/-!
# A228715: Decimal expansion of 1 - Pi/6.

The programs for A228715, there is no canonical definition to state claims against.
-/

/-! ## A228715.P12290759198611967240

`9-A019673(n)`
-/

namespace A228715.P12290759198611967240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A019673 n

end

end A228715.P12290759198611967240

/-!
# A228716: Triangle read by rows in which row n lists the rows (including 0's) of the n-th section of the set of partitions (in colexicographic order) of any integer >= n.

The programs for A228716, there is no canonical definition to state claims against.
-/

/-! ## A228716.P15265420107811020422

`A347442(A114322(n+1))%A294859(n+2)`
-/

namespace A228716.P15265420107811020422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347442 (A114322 (n + 1)).toNat) (A294859 (n + 2))

end

end A228716.P15265420107811020422

/-! ## A228716.P8763397549034401153

`A115350(A005228(n+2))%A294859(n+2)`
-/

namespace A228716.P8763397549034401153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115350 (A005228 (n + 2)).toNat) (A294859 (n + 2))

end

end A228716.P8763397549034401153

/-! ## A228716.P10034614590203055000

`A003961(A176791(n+4))%A294859(n+2)`
-/

namespace A228716.P10034614590203055000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A176791 (n + 4)).toNat) (A294859 (n + 2))

end

end A228716.P10034614590203055000

/-! ## A228716.P17839723165848482051

`A053176(A006261(n))%A294859(n+2)`
-/

namespace A228716.P17839723165848482051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053176 (A006261 n).toNat) (A294859 (n + 2))

end

end A228716.P17839723165848482051

/-! ## A228716.P12318049375894840401

`A254990(or(A000285(n), A307782(n+1)))`
-/

namespace A228716.P12318049375894840401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 (Int.lor (A000285 n) (A307782 (n + 1))).toNat

end

end A228716.P12318049375894840401

/-!
# A228717: Triangle read by rows taken from Garvan's paper (see slides 28, 29).

The programs for A228717, there is no canonical definition to state claims against.
-/

/-! ## A228717.P15669334675383181427

`A004218(A135109(A218875(n+1)+1))`
-/

namespace A228717.P15669334675383181427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A135109 (A218875 (n + 1) + 1).toNat).toNat

end

end A228717.P15669334675383181427

/-! ## A228717.P5989651039461850201

`A103221(A206283(n+1))+A000007(A255919(n))`
-/

namespace A228717.P5989651039461850201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A206283 (n + 1)).toNat + A000007 (A255919 n).toNat

end

end A228717.P5989651039461850201

/-! ## A228717.P9038118405726238371

`A103221(A206283(n+1))+A000007(A029968(n+1))`
-/

namespace A228717.P9038118405726238371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A206283 (n + 1)).toNat + A000007 (A029968 (n + 1)).toNat

end

end A228717.P9038118405726238371

/-! ## A228717.P16719432157862653708

`A103221(A206283(n+1))+A036987(A022408(n))`
-/

namespace A228717.P16719432157862653708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A206283 (n + 1)).toNat + A036987 (A022408 n).toNat

end

end A228717.P16719432157862653708

/-! ## A228717.P7105910192948728285

`A235224(A324564(n)%A324636(n+9))`
-/

namespace A228717.P7105910192948728285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (Int.tmod (A324564 n) (A324636 (n + 9))).toNat

end

end A228717.P7105910192948728285

/-!
# A228718: Sequence taken from Garvan's paper (see slides 28, 29).

The programs for A228718, there is no canonical definition to state claims against.
-/

/-! ## A228718.P6356602673466672031

`ceil(A102315(n)/5)`
-/

namespace A228718.P6356602673466672031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102315 n : ℚ) / 5⌉

end

end A228718.P6356602673466672031

/-! ## A228718.P1280053715000303500

`A228717(∑[n]+1)`
-/

namespace A228718.P1280053715000303500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228717 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228718.P1280053715000303500

/-! ## A228718.P12715986226046320332

`A105224((1-2^n)*(1-n)+1)`
-/

namespace A228718.P12715986226046320332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 ((1 - (2 ^ n : ℤ)) * (1 - (n : ℤ)) + 1).toNat

end

end A228718.P12715986226046320332

/-! ## A228718.P9125228791777728747

`ceil((∑[A218970(2*n)-1]+1)/4)`
-/

namespace A228718.P9125228791777728747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 4⌉

end

end A228718.P9125228791777728747

/-! ## A228718.P1460182949182741888

`A072926(A080054(n))`
-/

namespace A228718.P1460182949182741888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072926 (A080054 n).toNat

end

end A228718.P1460182949182741888

/-!
# A228720: Number of partitions in the first n compositions of j, according with the ordering of A228525, if 1<=n<=2^(j-1).

The programs for A228720, there is no canonical definition to state claims against.
-/

/-! ## A228720.P3725838702988766980

`∑[char[A194602(n)]]`
-/

namespace A228720.P3725838702988766980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194602 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228720.P3725838702988766980

/-! ## A228720.P14918601750534577320

`∑[A326956(n+1)]`
-/

namespace A228720.P14918601750534577320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228720.P14918601750534577320

/-! ## A228720.P14327668338344997947

`∑[round(acot(A286552(n)))]`
-/

namespace A228720.P14327668338344997947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A286552 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228720.P14327668338344997947

/-! ## A228720.P5362594787237657516

`∑[round(acot(A337377(n)))]`
-/

namespace A228720.P5362594787237657516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A337377 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228720.P5362594787237657516

/-! ## A228720.P676408832215750027

`∑[char[comp[A161819(n+1)]]]`
-/

namespace A228720.P676408832215750027
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161819 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228720.P676408832215750027

/-! ## A228720.P12292794151566693757

`∑[char[record[A331856(2*n)]]]`
-/

namespace A228720.P12292794151566693757
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228720.P12292794151566693757

/-! ## A228720.P7202215390542346599

`∑[char[A161820(n+1)]]+1`
-/

namespace A228720.P7202215390542346599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161820 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A228720.P7202215390542346599

/-! ## A228720.P9798396186697116218

`∑[A008683(A286552(n)²)]`
-/

namespace A228720.P9798396186697116218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A286552 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228720.P9798396186697116218

/-! ## A228720.P10259806563925328821

`∑[char[A252754(A278222(n))]]`
-/

namespace A228720.P10259806563925328821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A278222 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228720.P10259806563925328821

/-! ## A228720.P15378702069960099579

`∑[C(A278222(n), A252753(n))]`
-/

namespace A228720.P15378702069960099579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A278222 n).toNat (A252753 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228720.P15378702069960099579

/-!
# A228722: Largest number <= n with alternating parities of digits in decimal representation.

The programs for A228722, there is no canonical definition to state claims against.
-/

/-! ## A228722.P5636060249609044274

`A030141(∑[A228710(n)])`
-/

namespace A228722.P5636060249609044274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228722.P5636060249609044274

/-! ## A228722.P5814354662297751426

`A030141(∑[char[A228723(n)]])`
-/

namespace A228722.P5814354662297751426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228722.P5814354662297751426

/-! ## A228722.P3703212800760239763

`A030141(∑[char[A030141(n+1)]])`
-/

namespace A228722.P3703212800760239763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228722.P3703212800760239763

/-! ## A228722.P8704330329912591093

`A030141(comp[A030141(n+1)+n]-n)`
-/

namespace A228722.P8704330329912591093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A228722.P8704330329912591093

/-!
# A228723: Smallest number not less than n with alternating parities of digits in decimal representation.

The programs for A228723, there is no canonical definition to state claims against.
-/

/-! ## A228723.P15552240958817286166

`A030141(∑[char[A030141(n+1)+1]]+1)`
-/

namespace A228723.P15552240958817286166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228723.P15552240958817286166

/-! ## A228723.P6613636717826342342

`A344318(A000009(n))+n-1`
-/

namespace A228723.P6613636717826342342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344318 (A000009 n).toNat + ((n : ℤ) - 1)

end

end A228723.P6613636717826342342

/-!
# A228724: Difference between pi(10^n) and A226945(n), where pi(x) is the number of primes <= x.

The programs for A228724, there is no canonical definition to state claims against.
-/

/-! ## A228724.P3845394813556564982

`A006880(n+1)-A226945(n+1)`
-/

namespace A228724.P3845394813556564982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A226945 (n + 1)

end

end A228724.P3845394813556564982

/-! ## A228724.P3759719185176952561

`∑[A006879(n+1)]-A226945(n+1)`
-/

namespace A228724.P3759719185176952561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A226945 (n + 1)

end

end A228724.P3759719185176952561

/-! ## A228724.P644369694627555322

`A057754(n+1)-(A226945(n+1)+A057752(n+1))`
-/

namespace A228724.P644369694627555322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) - (A226945 (n + 1) + A057752 (n + 1))

end

end A228724.P644369694627555322

/-! ## A228724.P11923855154614488488

`A057793(n+1)-(A226945(n+1)+A057794(n+1))`
-/

namespace A228724.P11923855154614488488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057793 (n + 1) - (A226945 (n + 1) + A057794 (n + 1))

end

end A228724.P11923855154614488488

/-! ## A228724.P17821878254452945082

`A122121(A005843(n+1))-A226945(n+1)`
-/

namespace A228724.P17821878254452945082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (A005843 (n + 1)).toNat - A226945 (n + 1)

end

end A228724.P17821878254452945082

/-!
# A228726: Number a(n) of columns in each row of the irregular triangles in A187800 and A228594.

The programs for A228726, there is no canonical definition to state claims against.
-/

/-! ## A228726.P13306662750251184306

`A209302(A209320(n+1)^A056558(n)²)`
-/

namespace A228726.P13306662750251184306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (SequenceMachineLib.roundAway ((A209320 (n + 1) : ℚ) ^ (A056558 n ^ 2 : ℤ))).toNat

end

end A228726.P13306662750251184306

/-! ## A228726.P12345555406979684537

`A115623(A220908(n+1))^A056558(n)`
-/

namespace A228726.P12345555406979684537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115623 (A220908 (n + 1)).toNat : ℚ) ^ (A056558 n : ℤ)

end

end A228726.P12345555406979684537

/-! ## A228726.P15267386063815142611

`A056556(n+1)^(A056558(n)*A059317(A059299(n)))`
-/

namespace A228726.P15267386063815142611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056556 (n + 1) : ℚ) ^ (A056558 n * A059317 (A059299 n).toNat : ℤ)

end

end A228726.P15267386063815142611

/-! ## A228726.P12916424211144307924

`A001221(A288206(n))^A056558(n)`
-/

namespace A228726.P12916424211144307924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A288206 n).toNat : ℚ) ^ (A056558 n : ℤ)

end

end A228726.P12916424211144307924

/-! ## A228726.P1881588680729804116

`A056811(A008062(n+1))^A056558(n)`
-/

namespace A228726.P1881588680729804116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056811 (A008062 (n + 1)).toNat : ℚ) ^ (A056558 n : ℤ)

end

end A228726.P1881588680729804116

/-!
# A228727: Smallest prime of the form k*prime(n) + prime(k*n).

The programs for A228727, there is no canonical definition to state claims against.
-/

/-! ## A228727.P13264565245025988387

`A076605(A292120(n)+A062157(n))`
-/

namespace A228727.P13264565245025988387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A292120 n + A062157 n).toNat

end

end A228727.P13264565245025988387

/-!
# A228729: Product of the positive squares less than or equal to n.

The programs for A228729, the canonical program `A228729.P15722202455368746618` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228729 has offset 1).

The definition of A228729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228729.P15722202455368746618

`A214080(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A228729

/-- `A214080(n+1)²` -/
def P15722202455368746618.Spec : Prop :=
  ∀ n, P15722202455368746618.a n = A228729 (n + 1)

theorem P15722202455368746618.correct : P15722202455368746618.Spec := by
  intro n
  simp only [A228729, Nat.add_sub_cancel]

end A228729

/-! ## A228729.P3228141136461685230

`floor(sqrt(n+1))!²`
-/

namespace A228729.P3228141136461685230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.sqrt (n + 1)) ^ 2

end

end A228729.P3228141136461685230

namespace A228729

/-- `floor(sqrt(n+1))!²` -/
def P3228141136461685230.Spec : Prop :=
  ∀ n, (P3228141136461685230.a n : ℤ) = A228729 (n + 1)

end A228729

/-! ## A228729.P12631781185485631743

`floor(sqrt(n+1))!^2`
-/

namespace A228729.P12631781185485631743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.sqrt (n + 1)) ^ 2

end

end A228729.P12631781185485631743

namespace A228729

/-- `floor(sqrt(n+1))!^2` -/
def P12631781185485631743.Spec : Prop :=
  ∀ n, (P12631781185485631743.a n : ℤ) = A228729 (n + 1)

end A228729

/-! ## A228729.P9626036834123269534

`Δ[-∑[floor(sqrt(n))!]]²`
-/

namespace A228729.P9626036834123269534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.sqrt n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A228729.P9626036834123269534

namespace A228729

/-- `Δ[-∑[floor(sqrt(n))!]]²` -/
def P9626036834123269534.Spec : Prop :=
  ∀ n, P9626036834123269534.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P9035655217909139586

`∏[n*Δ[floor(sqrt(n))]+1]`
-/

namespace A228729.P9035655217909139586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228729.P9035655217909139586

namespace A228729

/-- `∏[n*Δ[floor(sqrt(n))]+1]` -/
def P9035655217909139586.Spec : Prop :=
  ∀ n, P9035655217909139586.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P4549204524878090187

`root(floor(sqrt(n+1))!, 1/2)`
-/

namespace A228729.P4549204524878090187
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.sqrt (n + 1)) : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A228729.P4549204524878090187

namespace A228729

/-- `root(floor(sqrt(n+1))!, 1/2)` -/
def P4549204524878090187.Spec : Prop :=
  ∀ n, P4549204524878090187.a n = (A228729 (n + 1) : ℝ)

end A228729

/-! ## A228729.P7778356073406366748

`∏[A056926(n+1)]²`
-/

namespace A228729.P7778356073406366748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A228729.P7778356073406366748

namespace A228729

/-- `∏[A056926(n+1)]²` -/
def P7778356073406366748.Spec : Prop :=
  ∀ n, P7778356073406366748.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P11483738109751102716

`A154225(A001650(n+2))`
-/

namespace A228729.P11483738109751102716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154225 (A001650 (n + 2)).toNat

end

end A228729.P11483738109751102716

namespace A228729

/-- `A154225(A001650(n+2))` -/
def P11483738109751102716.Spec : Prop :=
  ∀ n, P11483738109751102716.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P6014650935788309777

`A000142(A000196(n+1))²`
-/

namespace A228729.P6014650935788309777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A000196 (n + 1)).toNat ^ 2

end

end A228729.P6014650935788309777

namespace A228729

/-- `A000142(A000196(n+1))²` -/
def P6014650935788309777.Spec : Prop :=
  ∀ n, P6014650935788309777.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P6848362201769242614

`A081123(A000267(n+1))²`
-/

namespace A228729.P6848362201769242614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A000267 (n + 1)).toNat ^ 2

end

end A228729.P6848362201769242614

namespace A228729

/-- `A081123(A000267(n+1))²` -/
def P6848362201769242614.Spec : Prop :=
  ∀ n, P6848362201769242614.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P2801828578395867828

`A214078(A083479(n+1))²`
-/

namespace A228729.P2801828578395867828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A083479 (n + 1)).toNat ^ 2

end

end A228729.P2801828578395867828

namespace A228729

/-- `A214078(A083479(n+1))²` -/
def P2801828578395867828.Spec : Prop :=
  ∀ n, P2801828578395867828.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P3336871330987627529

`A284994(A130819(n+2))²`
-/

namespace A228729.P3336871330987627529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284994 (A130819 (n + 2)).toNat ^ 2

end

end A228729.P3336871330987627529

namespace A228729

/-- `A284994(A130819(n+2))²` -/
def P3336871330987627529.Spec : Prop :=
  ∀ n, P3336871330987627529.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P3091553770762398956

`A001044(A003059(n+2)-1)`
-/

namespace A228729.P3091553770762398956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 (A003059 (n + 2) - 1).toNat

end

end A228729.P3091553770762398956

namespace A228729

/-- `A001044(A003059(n+2)-1)` -/
def P3091553770762398956.Spec : Prop :=
  ∀ n, P3091553770762398956.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P5403567681705977062

`A001044(A135034(n+2)-1)`
-/

namespace A228729.P5403567681705977062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 (A135034 (n + 2) - 1).toNat

end

end A228729.P5403567681705977062

namespace A228729

/-- `A001044(A135034(n+2)-1)` -/
def P5403567681705977062.Spec : Prop :=
  ∀ n, P5403567681705977062.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P7578412105980212010

`A214078(A000196(n+1)²)²`
-/

namespace A228729.P7578412105980212010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A000196 (n + 1) ^ 2).toNat ^ 2

end

end A228729.P7578412105980212010

namespace A228729

/-- `A214078(A000196(n+1)²)²` -/
def P7578412105980212010.Spec : Prop :=
  ∀ n, P7578412105980212010.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P5140066904153940920

`(A324225(n+2)/A004737(n+2))²`
-/

namespace A228729.P5140066904153940920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A324225 (n + 2) : ℚ) / (A004737 (n + 2) : ℚ)) ^ 2

end

end A228729.P5140066904153940920

namespace A228729

/-- `(A324225(n+2)/A004737(n+2))²` -/
def P5140066904153940920.Spec : Prop :=
  ∀ n, P5140066904153940920.a n = (A228729 (n + 1) : ℚ)

end A228729

/-! ## A228729.P568305360507494849

`A059065(A048760(n+1))`
-/

namespace A228729.P568305360507494849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059065 (A048760 (n + 1)).toNat

end

end A228729.P568305360507494849

namespace A228729

/-- `A059065(A048760(n+1))` -/
def P568305360507494849.Spec : Prop :=
  ∀ n, P568305360507494849.a n = A228729 (n + 1)

end A228729

/-! ## A228729.P6139937888362943090

`A134434(A038759(n+1))`
-/

namespace A228729.P6139937888362943090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134434 (A038759 (n + 1)).toNat

end

end A228729.P6139937888362943090

namespace A228729

/-- `A134434(A038759(n+1))` -/
def P6139937888362943090.Spec : Prop :=
  ∀ n, P6139937888362943090.a n = A228729 (n + 1)

end A228729

/-!
# A228730: Lexicographically earliest sequence of distinct nonnegative integers such that the sum of two consecutive terms is a palindrome in base 10.

The programs for A228730, there is no canonical definition to state claims against.
-/

/-! ## A228730.P6341739574611043266

`A062932(n)%A303574(A231933(4*n+1))`
-/

namespace A228730.P6341739574611043266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062932 n) (A303574 (A231933 (4 * n + 1)).toNat)

end

end A228730.P6341739574611043266

/-! ## A228730.P3594528813197421421

`A062932(n)%A370593(3*n+1)`
-/

namespace A228730.P3594528813197421421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062932 n) (A370593 (3 * n + 1))

end

end A228730.P3594528813197421421

/-! ## A228730.P12549473596045168243

`A062932(n)+A007814(A144860(n))`
-/

namespace A228730.P12549473596045168243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062932 n + A007814 (A144860 n).toNat

end

end A228730.P12549473596045168243

/-! ## A228730.P16097845959752881769

`A185163(A084938(n))+A062932(n)`
-/

namespace A228730.P16097845959752881769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185163 (A084938 n).toNat + A062932 n

end

end A228730.P16097845959752881769

/-! ## A228730.P739064724065439290

`A062932(n)+A010051(A290848(n))`
-/

namespace A228730.P739064724065439290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062932 n + A010051 (A290848 n).toNat

end

end A228730.P739064724065439290

/-!
# A228731: Number of independent subsets in the rooted tree with Matula-Goebel number n that contain the root.

The programs for A228731, there is no canonical definition to state claims against.
-/

/-! ## A228731.P17239284438123826423

`A228732(A003963(n+1))`
-/

namespace A228731.P17239284438123826423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (A003963 (n + 1)).toNat

end

end A228731.P17239284438123826423

/-! ## A228731.P12465086715190572654

`A184165(n+1)-A228732(n+1)`
-/

namespace A228731.P12465086715190572654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184165 (n + 1) - A228732 (n + 1)

end

end A228731.P12465086715190572654

/-! ## A228731.P12239354320565674945

`A228732(A000040(n+1))-A228732(n+1)`
-/

namespace A228731.P12239354320565674945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (A000040 (n + 1)).toNat - A228732 (n + 1)

end

end A228731.P12239354320565674945

/-! ## A228731.P695731768415313820

`A228732(A008578(n+2))-A228732(n+1)`
-/

namespace A228731.P695731768415313820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (A008578 (n + 2)).toNat - A228732 (n + 1)

end

end A228731.P695731768415313820

/-! ## A228731.P10579807486312643423

`2*A184165(n+1)-A184165(A000040(n+1))`
-/

namespace A228731.P10579807486312643423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184165 (n + 1) - A184165 (A000040 (n + 1)).toNat

end

end A228731.P10579807486312643423

/-!
# A228732: Number of independent subsets in the rooted tree with Matula-Goebel number n that do not contain the root.

The programs for A228732, there is no canonical definition to state claims against.
-/

/-! ## A228732.P7279399363353657541

`A184165(n+1)-A228731(n+1)`
-/

namespace A228732.P7279399363353657541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184165 (n + 1) - A228731 (n + 1)

end

end A228732.P7279399363353657541

/-! ## A228732.P10046250269053616068

`A184165(2*(n+1))-A184165(n+1)`
-/

namespace A228732.P10046250269053616068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184165 (2 * (n + 1)) - A184165 (n + 1)

end

end A228732.P10046250269053616068

/-! ## A228732.P1412186474307957762

`A184165(2*n+2)%A184165(n+1)`
-/

namespace A228732.P1412186474307957762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184165 (2 * n + 2)) (A184165 (n + 1))

end

end A228732.P1412186474307957762

/-! ## A228732.P10992632164751905636

`A228731(p?[comp[n²]])`
-/

namespace A228732.P10992632164751905636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A228732.P10992632164751905636

/-! ## A228732.P16844112845980527868

`A228731(record[A051698(n)])`
-/

namespace A228732.P16844112845980527868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228732.P16844112845980527868

/-! ## A228732.P3425439477180270428

`A228731(A000040(n+1))`
-/

namespace A228732.P3425439477180270428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A000040 (n + 1)).toNat

end

end A228732.P3425439477180270428

/-! ## A228732.P13515297300354590938

`A228731(A006005(n+1))`
-/

namespace A228732.P13515297300354590938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A006005 (n + 1)).toNat

end

end A228732.P13515297300354590938

/-! ## A228732.P12835908253418992779

`A228731(A318871(n+1))`
-/

namespace A228732.P12835908253418992779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A318871 (n + 1)).toNat

end

end A228732.P12835908253418992779

/-! ## A228732.P3257126867645805099

`A228731(A008578(n+2))`
-/

namespace A228732.P3257126867645805099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A008578 (n + 2)).toNat

end

end A228732.P3257126867645805099

/-! ## A228732.P13113403950292252850

`A228731(record[A006530(n+2)])`
-/

namespace A228732.P13113403950292252850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228732.P13113403950292252850

/-! ## A228732.P2383766572777445580

`A228731(record[A014963(n+2)])`
-/

namespace A228732.P2383766572777445580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228732.P2383766572777445580

/-! ## A228732.P14915356192656475319

`A228731(record[A020639(n+2)])`
-/

namespace A228732.P14915356192656475319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228732.P14915356192656475319

/-! ## A228732.P7032553515734084672

`A228731(A040976(n+1)+2)`
-/

namespace A228732.P7032553515734084672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A040976 (n + 1) + 2).toNat

end

end A228732.P7032553515734084672

/-! ## A228732.P15243614480567145986

`A228731(A100484(n+1)/2)`
-/

namespace A228732.P15243614480567145986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A228732.P15243614480567145986

/-! ## A228732.P15962381037301192004

`A228731(A001747(n+2)/2)`
-/

namespace A228732.P15962381037301192004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A228732.P15962381037301192004

/-! ## A228732.P9263712878601458175

`A228731(record[Δ[A350877(n+1)]])`
-/

namespace A228732.P9263712878601458175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228732.P9263712878601458175

/-! ## A228732.P7704166051156243209

`A228731(A006530(A001749(n+1)))`
-/

namespace A228732.P7704166051156243209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A006530 (A001749 (n + 1)).toNat).toNat

end

end A228732.P7704166051156243209

/-! ## A228732.P2797789692268523753

`A228731(A006530(A062876(n+1)))`
-/

namespace A228732.P2797789692268523753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A006530 (A062876 (n + 1)).toNat).toNat

end

end A228732.P2797789692268523753

/-! ## A228732.P2465337979232718403

`A228731(A006530(A001747(n+2)))`
-/

namespace A228732.P2465337979232718403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A006530 (A001747 (n + 2)).toNat).toNat

end

end A228732.P2465337979232718403

/-! ## A228732.P2778104519348100722

`A228731(A100484(n+1))`
-/

namespace A228732.P2778104519348100722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A100484 (n + 1)).toNat

end

end A228732.P2778104519348100722

/-!
# A228733: Number of arrays of the median of three adjacent elements of some length n+2 0..1 array.

The programs for A228733, the canonical program `A228733.P13201197215781638244` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228733 has offset 1).

The definition of A228733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 396 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228733.P13201197215781638244

`2*a(n-1)-a(n-3)+a(n-5)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=16, a(4)=28`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228733

/-- `2*a(n-1)-a(n-3)+a(n-5)` -/
def P13201197215781638244.Spec : Prop :=
  ∀ n, P13201197215781638244.a n = A228733 (n + 1)

theorem P13201197215781638244.correct : P13201197215781638244.Spec := by
  intro n
  simp only [A228733, Nat.add_sub_cancel]

end A228733

/-! ## A228733.P7897031422129152856

`A228740(∑[n+1])`
-/

namespace A228733.P7897031422129152856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228733.P7897031422129152856

namespace A228733

/-- `A228740(∑[n+1])` -/
def P7897031422129152856.Spec : Prop :=
  ∀ n, P7897031422129152856.a n = A228733 (n + 1)

end A228733

/-! ## A228733.P660847794451735831

`lcm(2, A228740(Δ[A000292(n)]))`
-/

namespace A228733.P660847794451735831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A228740 (f1 (n + 1) - f1 n).toNat)

end

end A228733.P660847794451735831

namespace A228733

/-- `lcm(2, A228740(Δ[A000292(n)]))` -/
def P660847794451735831.Spec : Prop :=
  ∀ n, (P660847794451735831.a n : ℤ) = A228733 (n + 1)

end A228733

/-! ## A228733.P7711700410090057507

`record[root(A228740(n+1), A099375(n))]`
-/

namespace A228733.P7711700410090057507
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A228740 (n + 1) : ℝ) ^ (1 / (A099375 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228733.P7711700410090057507

namespace A228733

/-- `record[root(A228740(n+1), A099375(n))]` -/
def P7711700410090057507.Spec : Prop :=
  ∀ n, P7711700410090057507.a n = (A228733 (n + 1) : ℝ)

end A228733

/-! ## A228733.P6598075163416551140

`record[root(A228740(n+1), A135278(n))]`
-/

namespace A228733.P6598075163416551140
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A228740 (n + 1) : ℝ) ^ (1 / (A135278 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228733.P6598075163416551140

namespace A228733

/-- `record[root(A228740(n+1), A135278(n))]` -/
def P6598075163416551140.Spec : Prop :=
  ∀ n, P6598075163416551140.a n = (A228733 (n + 1) : ℝ)

end A228733

/-!
# A228734: Number of arrays of the median of three adjacent elements of some length n+2 0..2 array.

The programs for A228734, there is no canonical definition to state claims against.
-/

/-! ## A228734.P3075650032200925793

`A228740(∑[n+2])`
-/

namespace A228734.P3075650032200925793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228734.P3075650032200925793

/-! ## A228734.P11348216419160263830

`record[A228740(A000096(A133310(n)))]`
-/

namespace A228734.P11348216419160263830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228734.P11348216419160263830

/-! ## A228734.P16992928472065022635

`record[A228740(A000096(A344180(n)))]`
-/

namespace A228734.P16992928472065022635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228734.P16992928472065022635

/-! ## A228734.P17656354188349914710

`record[A228740(A000096(A003602(n+1)))]`
-/

namespace A228734.P17656354188349914710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228734.P17656354188349914710

/-! ## A228734.P6662667186383891695

`record[A228740(A000096(A003963(n+1)))]`
-/

namespace A228734.P6662667186383891695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228734.P6662667186383891695

/-!
# A228735: Number of arrays of the median of three adjacent elements of some length -(n+2) 0..3 array.

The programs for A228735, there is no canonical definition to state claims against.
-/

/-! ## A228735.P17105366303172812492

`A228740(∑[n+3]+1)`
-/

namespace A228735.P17105366303172812492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228735.P17105366303172812492

/-!
# A228736: Number of arrays of the median of three adjacent elements of some length-(n+2) 0..4 array.

The programs for A228736, there is no canonical definition to state claims against.
-/

/-! ## A228736.P16588021608442859724

`A228740(∑[n+4]+3)`
-/

namespace A228736.P16588021608442859724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A228736.P16588021608442859724

/-! ## A228736.P5074188800438617280

`A228740(A055998(n+2))+A000038(n+1)`
-/

namespace A228736.P5074188800438617280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A055998 (n + 2)).toNat + A000038 (n + 1)

end

end A228736.P5074188800438617280

/-! ## A228736.P12806726105607236314

`A228740(A055998(n+2))%A228737(n+1)`
-/

namespace A228736.P12806726105607236314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228740 (A055998 (n + 2)).toNat) (A228737 (n + 1))

end

end A228736.P12806726105607236314

/-! ## A228736.P1324812359781101119

`A000010(gcd(n, n+1))*A228740(A055998(n+2))`
-/

namespace A228736.P1324812359781101119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A228740 (A055998 (n + 2)).toNat

end

end A228736.P1324812359781101119

/-! ## A228736.P13349180623474531774

`A228740(A055998(n+2))+2-A000032(C(n, n+1))`
-/

namespace A228736.P13349180623474531774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A055998 (n + 2)).toNat + (2 - A000032 (Nat.choose n (n + 1)))

end

end A228736.P13349180623474531774

/-!
# A228737: Number of arrays of the median of three adjacent elements of some length n+2 0..5 array.

The programs for A228737, there is no canonical definition to state claims against.
-/

/-! ## A228737.P8966229837189863598

`A228740(A046691(n+3))`
-/

namespace A228737.P8966229837189863598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A046691 (n + 3)).toNat

end

end A228737.P8966229837189863598

/-! ## A228737.P7870024013530499659

`A228740(Δ[A023545(n+1)])`
-/

namespace A228737.P7870024013530499659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (f1 (n + 1) - f1 n).toNat

end

end A228737.P7870024013530499659

/-! ## A228737.P3402230969138161344

`A228740(A000217(n+5)-4)`
-/

namespace A228737.P3402230969138161344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000217 (n + 5) - 4).toNat

end

end A228737.P3402230969138161344

/-! ## A228737.P7167631131856654337

`A228740(A000124(n+5)-5)`
-/

namespace A228737.P7167631131856654337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000124 (n + 5) - 5).toNat

end

end A228737.P7167631131856654337

/-! ## A228737.P327521733378976455

`A228740(A161680(n+6)-4)`
-/

namespace A228737.P327521733378976455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A161680 (n + 6) - 4).toNat

end

end A228737.P327521733378976455

/-!
# A228738: Number of arrays of the median of three adjacent elements of some length n+2 0..6 array.

The programs for A228738, there is no canonical definition to state claims against.
-/

/-! ## A228738.P10626192472158921182

`A228740(A052905(n+3))`
-/

namespace A228738.P10626192472158921182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A052905 (n + 3)).toNat

end

end A228738.P10626192472158921182

/-! ## A228738.P7435043775789901213

`A228740(A133263(n+6)-7)`
-/

namespace A228738.P7435043775789901213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A133263 (n + 6) - 7).toNat

end

end A228738.P7435043775789901213

/-! ## A228738.P10484766434316643468

`A228740(Δ[A023551(n+1)]+1)`
-/

namespace A228738.P10484766434316643468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (f1 (n + 1) - f1 n + 1).toNat

end

end A228738.P10484766434316643468

/-! ## A228738.P10864994346371475145

`A228740(Δ[A023545(n+2)]-1)`
-/

namespace A228738.P10864994346371475145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (f1 (n + 1) - f1 n - 1).toNat

end

end A228738.P10864994346371475145

/-! ## A228738.P498529987161962920

`A228740(A000217(n+5)+n+1)`
-/

namespace A228738.P498529987161962920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A228738.P498529987161962920

/-!
# A228739: Number of arrays of the median of three adjacent elements of some length n+2 0..7 array.

The programs for A228739, there is no canonical definition to state claims against.
-/

/-! ## A228739.P6814169316094661327

`A228740(A055999(n+4))`
-/

namespace A228739.P6814169316094661327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A055999 (n + 4)).toNat

end

end A228739.P6814169316094661327

/-! ## A228739.P18336779795341714830

`A228740(Δ[A023551(n+2)])`
-/

namespace A228739.P18336779795341714830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (f1 (n + 1) - f1 n).toNat

end

end A228739.P18336779795341714830

/-! ## A228739.P16495694380274611592

`A228740(A000124(n+7)-7)`
-/

namespace A228739.P16495694380274611592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000124 (n + 7) - 7).toNat

end

end A228739.P16495694380274611592

/-! ## A228739.P6383547981936661779

`A228740(A133263(n+6)+n-1)`
-/

namespace A228739.P6383547981936661779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A228739.P6383547981936661779

/-! ## A228739.P11457324387380646241

`A228740(A061579(A167499(n+5)))`
-/

namespace A228739.P11457324387380646241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A061579 (A167499 (n + 5)).toNat).toNat

end

end A228739.P11457324387380646241

/-!
# A228740: T(n,k) = number of arrays of the median of three adjacent elements of some length n+2 0..k array.

The programs for A228740, there is no canonical definition to state claims against.
-/

/-! ## A228740.P2132855222636431480

`A269690(n+1)+2*A184159(A091977(n))`
-/

namespace A228740.P2132855222636431480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (n + 1) + 2 * A184159 (A091977 n).toNat

end

end A228740.P2132855222636431480

/-! ## A228740.P4170722667845187194

`A269583(n+1)-A337541(A282913(n))`
-/

namespace A228740.P4170722667845187194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (n + 1) - A337541 (A282913 n).toNat

end

end A228740.P4170722667845187194

/-! ## A228740.P12918436002192928074

`A269494(n+1)+A067898(A077168(n))`
-/

namespace A228740.P12918436002192928074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (n + 1) + A067898 (A077168 n).toNat

end

end A228740.P12918436002192928074

/-! ## A228740.P17907912177157923510

`A269583(n+1)-A002266(A185213(n))`
-/

namespace A228740.P17907912177157923510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (n + 1) - A002266 (A185213 n).toNat

end

end A228740.P17907912177157923510

/-! ## A228740.P3742677044397983176

`A004438(A223949(n+1))`
-/

namespace A228740.P3742677044397983176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A223949 (n + 1)).toNat

end

end A228740.P3742677044397983176

/-!
# A228741: Number of arrays of the median of three adjacent elements of some length-6 0..n array.

The programs for A228741, the canonical program `A228741.P23079829013154655` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228741 has offset 1).

The definition of A228741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228741.P23079829013154655

`(n+2)^4-∑[∑[(2*n)²]]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228741

/-- `(n+2)^4-∑[∑[(2*n)²]]` -/
def P23079829013154655.Spec : Prop :=
  ∀ n, P23079829013154655.a n = A228741 (n + 1)

theorem P23079829013154655.correct : P23079829013154655.Spec := by
  intro n
  simp only [A228741, Nat.add_sub_cancel]

end A228741

/-! ## A228741.P18289940501307307407

`floor(C(n+4, 4)/(1/4)²-A005563(n))`
-/

namespace A228741.P18289940501307307407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 4) 4 : ℚ) / ((1 : ℚ) / 4) ^ 2 - (A005563 n : ℚ)⌋

end

end A228741.P18289940501307307407

namespace A228741

/-- `floor(C(n+4, 4)/(1/4)²-A005563(n))` -/
def P18289940501307307407.Spec : Prop :=
  ∀ n, P18289940501307307407.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P12546649477870806363

`abs(A130810(n+4)-A005563(n))`
-/

namespace A228741.P12546649477870806363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130810 (n + 4) - A005563 n|

end

end A228741.P12546649477870806363

namespace A228741

/-- `abs(A130810(n+4)-A005563(n))` -/
def P12546649477870806363.Spec : Prop :=
  ∀ n, P12546649477870806363.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P10140177085871915884

`floor(4/3*A112415(n)-A005563(n))`
-/

namespace A228741.P10140177085871915884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (A112415 n : ℚ) - (A005563 n : ℚ)⌋

end

end A228741.P10140177085871915884

namespace A228741

/-- `floor(4/3*A112415(n)-A005563(n))` -/
def P10140177085871915884.Spec : Prop :=
  ∀ n, P10140177085871915884.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P16129280108848990977

`floor(A120054(n+1)/(8/2)²-A005563(n))`
-/

namespace A228741.P16129280108848990977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120054 (n + 1) : ℚ) / ((8 : ℚ) / 2) ^ 2 - (A005563 n : ℚ)⌋

end

end A228741.P16129280108848990977

namespace A228741

/-- `floor(A120054(n+1)/(8/2)²-A005563(n))` -/
def P16129280108848990977.Spec : Prop :=
  ∀ n, P16129280108848990977.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P6970577233682810830

`(A130810(n+4)-A005563(n))*A007318(C(2, n))`
-/

namespace A228741.P6970577233682810830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130810 (n + 4) - A005563 n) * A007318 (Nat.choose 2 n)

end

end A228741.P6970577233682810830

namespace A228741

/-- `(A130810(n+4)-A005563(n))*A007318(C(2, n))` -/
def P6970577233682810830.Spec : Prop :=
  ∀ n, P6970577233682810830.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P13727217066304852753

`(A130810(n+4)-A005563(n))*A000041(and(1, n-1))`
-/

namespace A228741.P13727217066304852753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130810 (n + 4) - A005563 n) * A000041 (Int.land 1 ((n : ℤ) - 1)).toNat

end

end A228741.P13727217066304852753

namespace A228741

/-- `(A130810(n+4)-A005563(n))*A000041(and(1, n-1))` -/
def P13727217066304852753.Spec : Prop :=
  ∀ n, P13727217066304852753.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P14410561240394164027

`(A130810(n+4)-A005563(n))*A000041(C(2, n+2))`
-/

namespace A228741.P14410561240394164027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130810 (n + 4) - A005563 n) * A000041 (Nat.choose 2 (n + 2))

end

end A228741.P14410561240394164027

namespace A228741

/-- `(A130810(n+4)-A005563(n))*A000041(C(2, n+2))` -/
def P14410561240394164027.Spec : Prop :=
  ∀ n, P14410561240394164027.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P9171149301925882307

`(A130810(n+4)-A005563(n))*A000041(gcd(n, n+1))`
-/

namespace A228741.P9171149301925882307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130810 (n + 4) - A005563 n) * A000041 (Nat.gcd n (n + 1))

end

end A228741.P9171149301925882307

namespace A228741

/-- `(A130810(n+4)-A005563(n))*A000041(gcd(n, n+1))` -/
def P9171149301925882307.Spec : Prop :=
  ∀ n, P9171149301925882307.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P15402808116534669506

`(A130810(n+4)-A005563(n))*A006530(C(n, n²)!)`
-/

namespace A228741.P15402808116534669506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130810 (n + 4) - A005563 n) * A006530 (Nat.factorial (Nat.choose n (n ^ 2)))

end

end A228741.P15402808116534669506

namespace A228741

/-- `(A130810(n+4)-A005563(n))*A006530(C(n, n²)!)` -/
def P15402808116534669506.Spec : Prop :=
  ∀ n, P15402808116534669506.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P17553684972549546415

`(A130810(n+4)-A005563(n))*A007318(ceil(n/(n+1)))`
-/

namespace A228741.P17553684972549546415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130810 (n + 4) - A005563 n) * A007318 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A228741.P17553684972549546415

namespace A228741

/-- `(A130810(n+4)-A005563(n))*A007318(ceil(n/(n+1)))` -/
def P17553684972549546415.Spec : Prop :=
  ∀ n, P17553684972549546415.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P644700202517381449

`Δ[∑[n*A005900(n)]+(n+1)²²]`
-/

namespace A228741.P644700202517381449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (((n + 1) ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228741.P644700202517381449

namespace A228741

/-- `Δ[∑[n*A005900(n)]+(n+1)²²]` -/
def P644700202517381449.Spec : Prop :=
  ∀ n, P644700202517381449.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P9732994846515039245

`(A130810(n+4)-A005563(n))*A001221(A045409(n+1))`
-/

namespace A228741.P9732994846515039245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130810 (n + 4) - A005563 n) * A001221 (A045409 (n + 1)).toNat

end

end A228741.P9732994846515039245

namespace A228741

/-- `(A130810(n+4)-A005563(n))*A001221(A045409(n+1))` -/
def P9732994846515039245.Spec : Prop :=
  ∀ n, P9732994846515039245.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P9040461030994682405

`(A130810(n+4)-A005563(n))*A001221(A240108(n+1))`
-/

namespace A228741.P9040461030994682405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130810 (n + 4) - A005563 n) * A001221 (A240108 (n + 1)).toNat

end

end A228741.P9040461030994682405

namespace A228741

/-- `(A130810(n+4)-A005563(n))*A001221(A240108(n+1))` -/
def P9040461030994682405.Spec : Prop :=
  ∀ n, P9040461030994682405.a n = A228741 (n + 1)

end A228741

/-! ## A228741.P11753565895290460479

`lcm(A130810(n+4)-A005563(n), A111621(n+2))`
-/

namespace A228741.P11753565895290460479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130810 (n + 4) - A005563 n) (A111621 (n + 2))

end

end A228741.P11753565895290460479

namespace A228741

/-- `lcm(A130810(n+4)-A005563(n), A111621(n+2))` -/
def P11753565895290460479.Spec : Prop :=
  ∀ n, (P11753565895290460479.a n : ℤ) = A228741 (n + 1)

end A228741

/-!
# A228742: Number of arrays of the median of three adjacent elements of some length 7 0..n array.

The programs for A228742, the canonical program `A228742.P8566123706562027853` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228742 has offset 1).

The definition of A228742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228742.P8566123706562027853

`(n+2)*(19*(n+1)^4+186*(n+1)^3+349*(n+1)²+226*(n+1)+60)/60`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228742

/-- `(n+2)*(19*(n+1)^4+186*(n+1)^3+349*(n+1)²+226*(n+1)+60)/60` -/
def P8566123706562027853.Spec : Prop :=
  ∀ n, P8566123706562027853.a n = (A228742 (n + 1) : ℚ)

end A228742

/-! ## A228742.P16688178622958068594

`A228740(∑[n+4]+11)`
-/

namespace A228742.P16688178622958068594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A228742.P16688178622958068594

namespace A228742

/-- `A228740(∑[n+4]+11)` -/
def P16688178622958068594.Spec : Prop :=
  ∀ n, P16688178622958068594.a n = A228742 (n + 1)

end A228742

/-! ## A228742.P12441482800626957234

`A228740(A056000(n)+15)%A002046(n+1)²`
-/

namespace A228742.P12441482800626957234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228740 (A056000 n + 15).toNat) (A002046 (n + 1) ^ 2)

end

end A228742.P12441482800626957234

namespace A228742

/-- `A228740(A056000(n)+15)%A002046(n+1)²` -/
def P12441482800626957234.Spec : Prop :=
  ∀ n, P12441482800626957234.a n = A228742 (n + 1)

end A228742

/-!
# A228743: Number of arrays of the median of three adjacent elements of some length 8 0..n array.

The programs for A228743, there is no canonical definition to state claims against.
-/

/-! ## A228743.P2444185839033082795

`A228740(A167499(n+4)+1)`
-/

namespace A228743.P2444185839033082795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A167499 (n + 4) + 1).toNat

end

end A228743.P2444185839033082795

/-! ## A228743.P5002538612263272192

`A228740(A000124(n+5)+5)`
-/

namespace A228743.P5002538612263272192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000124 (n + 5) + 5).toNat

end

end A228743.P5002538612263272192

/-! ## A228743.P5731738918187572783

`A228740(A000217(n+5)+6)`
-/

namespace A228743.P5731738918187572783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000217 (n + 5) + 6).toNat

end

end A228743.P5731738918187572783

/-! ## A228743.P17996458650339766779

`A228740(A087811(n+1)+A087811(n+8))`
-/

namespace A228743.P17996458650339766779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A087811 (n + 1) + A087811 (n + 8)).toNat

end

end A228743.P17996458650339766779

/-! ## A228743.P16678745946419103897

`A228740(A055999(n+4)+A024000(2*(n+1)))`
-/

namespace A228743.P16678745946419103897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A055999 (n + 4) + A024000 (2 * (n + 1))).toNat

end

end A228743.P16678745946419103897

/-!
# A228744: Number of arrays of the median of three adjacent elements of some length 9 0..n array.

The programs for A228744, there is no canonical definition to state claims against.
-/

/-! ## A228744.P13062807518894166974

`A228740(A167487(n+5))`
-/

namespace A228744.P13062807518894166974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A167487 (n + 5)).toNat

end

end A228744.P13062807518894166974

/-! ## A228744.P4956859023721503378

`A228740(A000124(n+6)+6)`
-/

namespace A228744.P4956859023721503378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000124 (n + 6) + 6).toNat

end

end A228744.P4956859023721503378

/-! ## A228744.P17818796497474911604

`A228740(A000096(n+5)+8)`
-/

namespace A228744.P17818796497474911604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000096 (n + 5) + 8).toNat

end

end A228744.P17818796497474911604

/-! ## A228744.P10781658027017091825

`A228740(A000217(n+6)+7)`
-/

namespace A228744.P10781658027017091825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (A000217 (n + 6) + 7).toNat

end

end A228744.P10781658027017091825

/-! ## A228744.P10884579591600113372

`A228740(Δ[(n+8)²+A000125(n+4)])`
-/

namespace A228744.P10884579591600113372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 8) ^ 2 : ℤ) + A000125 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228740 (f1 (n + 1) - f1 n).toNat

end

end A228744.P10884579591600113372

/-!
# A228745: Expansion of (phi(q)^4 + 7 * phi(-q)^4) / 8 in powers of q where phi() is a Ramanujan theta function.

The programs for A228745, there is no canonical definition to state claims against.
-/

/-! ## A228745.P1087084034818712920

`A103640(n)/gcd(2, n+1)²`
-/

namespace A228745.P1087084034818712920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n : ℚ) / (Nat.gcd 2 (n + 1) ^ 2 : ℚ)

end

end A228745.P1087084034818712920

/-! ## A228745.P17519093214648425335

`A103640(n)/A010685(n)`
-/

namespace A228745.P17519093214648425335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n : ℚ) / (A010685 n : ℚ)

end

end A228745.P17519093214648425335

/-! ## A228745.P12757865364068477097

`A103640(n)/A000034(n)²`
-/

namespace A228745.P12757865364068477097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A228745.P12757865364068477097

/-! ## A228745.P12370864008032804017

`A103640(n)/(A000035(n)+1)²`
-/

namespace A228745.P12370864008032804017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n : ℚ) / ((A000035 n + 1) ^ 2 : ℚ)

end

end A228745.P12370864008032804017

/-! ## A228745.P3523499257895869021

`A103640(n)/Δ[A047221(n+1)]`
-/

namespace A228745.P3523499257895869021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A228745.P3523499257895869021

/-! ## A228745.P4633628329501038093

`A103640(n)/gcd(4, A087321(n+1))`
-/

namespace A228745.P4633628329501038093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n : ℚ) / (Int.gcd 4 (A087321 (n + 1)) : ℚ)

end

end A228745.P4633628329501038093

/-! ## A228745.P10162774581331091297

`A103640(n)/A010875(A056107(n))`
-/

namespace A228745.P10162774581331091297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n : ℚ) / (A010875 (A056107 n).toNat : ℚ)

end

end A228745.P10162774581331091297

/-! ## A228745.P10207520602720122094

`A103640(n)/A119953(A058306((n+1)*(n+1)))`
-/

namespace A228745.P10207520602720122094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n : ℚ) / (A119953 (A058306 ((n + 1) * (n + 1))).toNat : ℚ)

end

end A228745.P10207520602720122094

/-!
# A228746: Expansion of 8 * phi(q)^4 - 7 * phi(-q)^4 in powers of q where phi() is a Ramanujan theta function.

The programs for A228746, there is no canonical definition to state claims against.
-/

/-! ## A228746.P7792993465708744854

`A004011(n)*A010686(n)`
-/

namespace A228746.P7792993465708744854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 n * A010686 n

end

end A228746.P7792993465708744854

/-! ## A228746.P15244140447176778595

`(A010696(n)-1)*A004011(n)`
-/

namespace A228746.P15244140447176778595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010696 n - 1) * A004011 n

end

end A228746.P15244140447176778595

/-! ## A228746.P11826498467620215621

`gcd(5, A036283(n+1))*A004011(n)`
-/

namespace A228746.P11826498467620215621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A036283 (n + 1)) : ℤ) * A004011 n

end

end A228746.P11826498467620215621

/-! ## A228746.P10354379949533503057

`A004011(n)*A271202((n%2)^(n+1))`
-/

namespace A228746.P10354379949533503057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 n * A271202 ((n % 2) ^ (n + 1))

end

end A228746.P10354379949533503057

/-! ## A228746.P5121074629488051114

`A000118(n)*A010004(Δ[A004526(n)])`
-/

namespace A228746.P5121074629488051114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n * A010004 (f1 (n + 1) - f1 n).toNat

end

end A228746.P5121074629488051114

/-! ## A228746.P10931276060216859455

`A004011(n)*A042948(Δ[A042948(n)])`
-/

namespace A228746.P10931276060216859455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 n * A042948 (f1 (n + 1) - f1 n).toNat

end

end A228746.P10931276060216859455

/-! ## A228746.P2776529169240566429

`A004011(n)*A093562(Δ[A008619(n)])`
-/

namespace A228746.P2776529169240566429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 n * A093562 (f1 (n + 1) - f1 n).toNat

end

end A228746.P2776529169240566429

/-! ## A228746.P9554965385182852766

`A000108(A046897(A006519(n+1)))*A004011(n)`
-/

namespace A228746.P9554965385182852766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A046897 (A006519 (n + 1)).toNat).toNat * A004011 n

end

end A228746.P9554965385182852766

/-! ## A228746.P2577053863771056066

`A000265(A006519(n²+3)+1)*A004011(n)`
-/

namespace A228746.P2577053863771056066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006519 (n ^ 2 + 3) + 1).toNat * A004011 n

end

end A228746.P2577053863771056066

/-!
# A228747: Number T(n,k,r,c) of partitions of an n X k X r rectangular cuboid into c integer-sided cubes, considering only the list of parts; irregular triangle T(n,k,r,c), n >= k >= r >= 1, s >= 1, read by rows.

The programs for A228747, there is no canonical definition to state claims against.
-/

/-! ## A228747.P1444452645433684265

`val(A011972(A108087(n+1)), A003057(n+2))`
-/

namespace A228747.P1444452645433684265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A011972 (A108087 (n + 1)).toNat).toNat (A003057 (n + 2)).toNat

end

end A228747.P1444452645433684265

/-! ## A228747.P10011594115103950204

`A010051(A285436(n)+A168356(n+1))`
-/

namespace A228747.P10011594115103950204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A285436 n + A168356 (n + 1)).toNat

end

end A228747.P10011594115103950204

/-! ## A228747.P1891264774724640473

`and(A213719(A029579(n)²), A316669(n+1))`
-/

namespace A228747.P1891264774724640473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A213719 (A029579 n ^ 2).toNat) (A316669 (n + 1))

end

end A228747.P1891264774724640473

/-! ## A228747.P11482731781864264071

`A116865(A036796(n+1))`
-/

namespace A228747.P11482731781864264071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116865 (A036796 (n + 1)).toNat

end

end A228747.P11482731781864264071

/-! ## A228747.P16063157738123615520

`A117054(A141656(n+1))`
-/

namespace A228747.P16063157738123615520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117054 (A141656 (n + 1)).toNat

end

end A228747.P16063157738123615520

/-!
# A228748: Pell numbers (A000129) minus Lucas numbers beginning at 2 (A000032).

The programs for A228748, the canonical program `A228748.P8566336891877325496` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228748 has offset 0).

The definition of A228748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228748.P8566336891877325496

`A000129(n)-A000032(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A228748

/-- `A000129(n)-A000032(n)` -/
def P8566336891877325496.Spec : Prop :=
  ∀ n, P8566336891877325496.a n = A228748 n

theorem P8566336891877325496.correct : P8566336891877325496.Spec := by
  intro n
  simp only [A228748]

end A228748

/-! ## A228748.P3322939011601379062

`A006684(n)-A118658(n)`
-/

namespace A228748.P3322939011601379062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006684 n - A118658 n

end

end A228748.P3322939011601379062

namespace A228748

/-- `A006684(n)-A118658(n)` -/
def P3322939011601379062.Spec : Prop :=
  ∀ n, P3322939011601379062.a n = A228748 n

end A228748

/-! ## A228748.P3603160835686866018

`A174191(n)-A001612(n)`
-/

namespace A228748.P3603160835686866018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n - A001612 n

end

end A228748.P3603160835686866018

namespace A228748

/-- `A174191(n)-A001612(n)` -/
def P3603160835686866018.Spec : Prop :=
  ∀ n, P3603160835686866018.a n = A228748 n

end A228748

/-! ## A228748.P17361786911188193617

`A111954(n)-A099925(n)`
-/

namespace A228748.P17361786911188193617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n - A099925 n

end

end A228748.P17361786911188193617

namespace A228748

/-- `A111954(n)-A099925(n)` -/
def P17361786911188193617.Spec : Prop :=
  ∀ n, P17361786911188193617.a n = A228748 n

end A228748

/-! ## A228748.P13693282538274176160

`A000129(n)-Δ[A001610(n)]`
-/

namespace A228748.P13693282538274176160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - (f1 (n + 1) - f1 n)

end

end A228748.P13693282538274176160

namespace A228748

/-- `A000129(n)-Δ[A001610(n)]` -/
def P13693282538274176160.Spec : Prop :=
  ∀ n, P13693282538274176160.a n = A228748 n

end A228748

/-! ## A228748.P17527367406353801567

`A174191(n)-(A000032(n)+1)`
-/

namespace A228748.P17527367406353801567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n - (A000032 n + 1)

end

end A228748.P17527367406353801567

namespace A228748

/-- `A174191(n)-(A000032(n)+1)` -/
def P17527367406353801567.Spec : Prop :=
  ∀ n, P17527367406353801567.a n = A228748 n

end A228748

/-! ## A228748.P17345082090739660340

`A001932(n)-A118658(n+2)`
-/

namespace A228748.P17345082090739660340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001932 n - A118658 (n + 2)

end

end A228748.P17345082090739660340

namespace A228748

/-- `A001932(n)-A118658(n+2)` -/
def P17345082090739660340.Spec : Prop :=
  ∀ n, P17345082090739660340.a n = A228748 n

end A228748

/-! ## A228748.P11338625965233693424

`A002965(2*n)-A000032(n)`
-/

namespace A228748.P11338625965233693424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) - A000032 n

end

end A228748.P11338625965233693424

namespace A228748

/-- `A002965(2*n)-A000032(n)` -/
def P11338625965233693424.Spec : Prop :=
  ∀ n, P11338625965233693424.a n = A228748 n

end A228748

/-! ## A228748.P12807002088925453767

`A060405(n)-2*A000032(n)`
-/

namespace A228748.P12807002088925453767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060405 n - 2 * A000032 n

end

end A228748.P12807002088925453767

namespace A228748

/-- `A060405(n)-2*A000032(n)` -/
def P12807002088925453767.Spec : Prop :=
  ∀ n, P12807002088925453767.a n = A228748 n

end A228748

/-! ## A228748.P12788890333872555450

`A135153(2*n)-A000032(n)`
-/

namespace A228748.P12788890333872555450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * n) - A000032 n

end

end A228748.P12788890333872555450

namespace A228748

/-- `A135153(2*n)-A000032(n)` -/
def P12788890333872555450.Spec : Prop :=
  ∀ n, P12788890333872555450.a n = A228748 n

end A228748

/-! ## A228748.P16408448416192059492

`A249576(3*n)-A000032(n)`
-/

namespace A228748.P16408448416192059492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n) - A000032 n

end

end A228748.P16408448416192059492

namespace A228748

/-- `A249576(3*n)-A000032(n)` -/
def P16408448416192059492.Spec : Prop :=
  ∀ n, P16408448416192059492.a n = A228748 n

end A228748

/-! ## A228748.P16118289554111418016

`A116560(6*n)-A000032(n)`
-/

namespace A228748.P16118289554111418016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (6 * n) - A000032 n

end

end A228748.P16118289554111418016

namespace A228748

/-- `A116560(6*n)-A000032(n)` -/
def P16118289554111418016.Spec : Prop :=
  ∀ n, P16118289554111418016.a n = A228748 n

end A228748

/-! ## A228748.P1980706615755795956

`xor(1, A111954(n))-A000032(n)`
-/

namespace A228748.P1980706615755795956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111954 n) - A000032 n

end

end A228748.P1980706615755795956

namespace A228748

/-- `xor(1, A111954(n))-A000032(n)` -/
def P1980706615755795956.Spec : Prop :=
  ∀ n, P1980706615755795956.a n = A228748 n

end A228748

/-! ## A228748.P11978859636572846626

`abs(A176981(n+1))-A000032(n)`
-/

namespace A228748.P11978859636572846626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 1)| - A000032 n

end

end A228748.P11978859636572846626

namespace A228748

/-- `abs(A176981(n+1))-A000032(n)` -/
def P11978859636572846626.Spec : Prop :=
  ∀ n, P11978859636572846626.a n = A228748 n

end A228748

/-! ## A228748.P14992754562012121763

`A000129(n)-Δ[A000204(n+1)]`
-/

namespace A228748.P14992754562012121763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - (f1 (n + 1) - f1 n)

end

end A228748.P14992754562012121763

namespace A228748

/-- `A000129(n)-Δ[A000204(n+1)]` -/
def P14992754562012121763.Spec : Prop :=
  ∀ n, P14992754562012121763.a n = A228748 n

end A228748

/-! ## A228748.P227110000288783848

`A006684(n)-Δ[2*A000045(n)]`
-/

namespace A228748.P227110000288783848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006684 n - (f1 (n + 1) - f1 n)

end

end A228748.P227110000288783848

namespace A228748

/-- `A006684(n)-Δ[2*A000045(n)]` -/
def P227110000288783848.Spec : Prop :=
  ∀ n, P227110000288783848.a n = A228748 n

end A228748

/-! ## A228748.P8501636457594690871

`A000129(n)-Δ[A022112(n)/2]`
-/

namespace A228748.P8501636457594690871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022112 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A228748.P8501636457594690871

namespace A228748

/-- `A000129(n)-Δ[A022112(n)/2]` -/
def P8501636457594690871.Spec : Prop :=
  ∀ n, P8501636457594690871.a n = (A228748 n : ℚ)

end A228748

/-! ## A228748.P8734888809062682054

`A001932(n)-(A000032(n)+A000045(n))`
-/

namespace A228748.P8734888809062682054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001932 n - (A000032 n + A000045 n)

end

end A228748.P8734888809062682054

namespace A228748

/-- `A001932(n)-(A000032(n)+A000045(n))` -/
def P8734888809062682054.Spec : Prop :=
  ∀ n, P8734888809062682054.a n = A228748 n

end A228748

/-! ## A228748.P2205407008076471204

`A000045(n)+A006684(n)-A000032(n)`
-/

namespace A228748.P2205407008076471204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A006684 n - A000032 n)

end

end A228748.P2205407008076471204

namespace A228748

/-- `A000045(n)+A006684(n)-A000032(n)` -/
def P2205407008076471204.Spec : Prop :=
  ∀ n, P2205407008076471204.a n = A228748 n

end A228748

/-! ## A228748.P6552955528296508250

`A000129(n)+A000129(n)-A060405(n)`
-/

namespace A228748.P6552955528296508250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A000129 n - A060405 n)

end

end A228748.P6552955528296508250

namespace A228748

/-- `A000129(n)+A000129(n)-A060405(n)` -/
def P6552955528296508250.Spec : Prop :=
  ∀ n, P6552955528296508250.a n = A228748 n

end A228748

/-!
# A228749: Number of n X n binary arrays with top left element equal to 1 and no two ones adjacent horizontally or antidiagonally.

The programs for A228749, there is no canonical definition to state claims against.
-/

/-! ## A228749.P7459794372163597083

`A228754((n+1)²+n²)`
-/

namespace A228749.P7459794372163597083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 ((n + 1) ^ 2 + n ^ 2)

end

end A228749.P7459794372163597083

/-! ## A228749.P4863661663087726125

`record[A003982(n)*A228754(n+1)]`
-/

namespace A228749.P4863661663087726125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A228754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228749.P4863661663087726125

/-! ## A228749.P7848483105681668863

`record[gcd(A037012(n), A228754(n+1))]`
-/

namespace A228749.P7848483105681668863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A228754 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228749.P7848483105681668863

/-! ## A228749.P12723491825850875429

`record[A203994(n+1)*A228754(n+1)]`
-/

namespace A228749.P12723491825850875429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A228754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228749.P12723491825850875429

/-! ## A228749.P16606841774376031953

`A228754(A001844(n))+A025469(n)`
-/

namespace A228749.P16606841774376031953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A001844 n).toNat + A025469 n

end

end A228749.P16606841774376031953

/-!
# A228750: Number of n X 4 binary arrays with top left element equal to 1 and no two ones adjacent horizontally or antidiagonally.

The programs for A228750, the canonical program `A228750.P2960156150928213809` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228750 has offset 1).

The definition of A228750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228750.P1629409348856326109

`record[Δ[A110158(n)-A077981(n)]]`
-/

namespace A228750.P1629409348856326109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110158 n - A077981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228750.P1629409348856326109

namespace A228750

/-- `record[Δ[A110158(n)-A077981(n)]]` -/
def P1629409348856326109.Spec : Prop :=
  ∀ n, P1629409348856326109.a n = A228750 (n + 1)

end A228750

/-! ## A228750.P2960156150928213809

`A052970(2*n+3)+A052528(2*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A228750

/-- `A052970(2*n+3)+A052528(2*n)` -/
def P2960156150928213809.Spec : Prop :=
  ∀ n, P2960156150928213809.a n = A228750 (n + 1)

theorem P2960156150928213809.correct : P2960156150928213809.Spec := by
  intro n
  simp only [A228750, Nat.add_sub_cancel]

end A228750

/-! ## A228750.P6306937673741927042

`A052528(2*n)+2*A052528(2*n+1)`
-/

namespace A228750.P6306937673741927042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 (2 * n) + 2 * A052528 (2 * n + 1)

end

end A228750.P6306937673741927042

namespace A228750

/-- `A052528(2*n)+2*A052528(2*n+1)` -/
def P6306937673741927042.Spec : Prop :=
  ∀ n, P6306937673741927042.a n = A228750 (n + 1)

end A228750

/-! ## A228750.P2687556296040716212

`8*a(n-1)-12*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=20, a(2)=126`
-/

namespace A228750.P2687556296040716212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 20, 126] fun n a =>
  8 * a (n - 1) - 12 * a (n - 2) + 4 * a (n - 3)

end

end A228750.P2687556296040716212

namespace A228750

/-- `8*a(n-1)-12*a(n-2)+4*a(n-3)` -/
def P2687556296040716212.Spec : Prop :=
  ∀ n, P2687556296040716212.a n = A228750 (n + 1)

end A228750

/-! ## A228750.P3852669445386011964

`Δ[A106666(2*n)]-A052528(2*n)`
-/

namespace A228750.P3852669445386011964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106666 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052528 (2 * n)

end

end A228750.P3852669445386011964

namespace A228750

/-- `Δ[A106666(2*n)]-A052528(2*n)` -/
def P3852669445386011964.Spec : Prop :=
  ∀ n, P3852669445386011964.a n = A228750 (n + 1)

end A228750

/-! ## A228750.P3791928617312983301

`A052987(2*(n+1))-A052528(2*n)`
-/

namespace A228750.P3791928617312983301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052987 (2 * (n + 1)) - A052528 (2 * n)

end

end A228750.P3791928617312983301

namespace A228750

/-- `A052987(2*(n+1))-A052528(2*n)` -/
def P3791928617312983301.Spec : Prop :=
  ∀ n, P3791928617312983301.a n = A228750 (n + 1)

end A228750

/-!
# A228751: Number of n X 5 binary arrays with top left element equal to 1 and no two ones adjacent horizontally or antidiagonally.

The programs for A228751, there is no canonical definition to state claims against.
-/

/-! ## A228751.P558374649765307410

`A228754(A056115(n)+11)`
-/

namespace A228751.P558374649765307410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A056115 n + 11).toNat

end

end A228751.P558374649765307410

/-! ## A228751.P5881104979145664240

`A228754(eq[4, A193592(n)])`
-/

namespace A228751.P5881104979145664240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228751.P5881104979145664240

/-! ## A228751.P17172165466428391961

`A228754(Δ[A023545(n+1)])`
-/

namespace A228751.P17172165466428391961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (f1 (n + 1) - f1 n).toNat

end

end A228751.P17172165466428391961

/-! ## A228751.P1353247566226797553

`A228754(A052905(n+2)+1)`
-/

namespace A228751.P1353247566226797553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A052905 (n + 2) + 1).toNat

end

end A228751.P1353247566226797553

/-!
# A228752: Number of n X 6 binary arrays with top left element equal to 1 and no two ones adjacent horizontally or antidiagonally.

The programs for A228752, there is no canonical definition to state claims against.
-/

/-! ## A228752.P14994479792936263971

`A228754(A052905(n+3))`
-/

namespace A228752.P14994479792936263971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A052905 (n + 3)).toNat

end

end A228752.P14994479792936263971

/-! ## A228752.P6875378568033326373

`A228754(eq[5, A193592(n)])`
-/

namespace A228752.P6875378568033326373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228752.P6875378568033326373

/-! ## A228752.P12985790628958153394

`A228754(A000124(n+6)-6)`
-/

namespace A228752.P12985790628958153394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A000124 (n + 6) - 6).toNat

end

end A228752.P12985790628958153394

/-! ## A228752.P10093369882511433381

`A228754(Δ[A023551(n+1)]+1)`
-/

namespace A228752.P10093369882511433381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (f1 (n + 1) - f1 n + 1).toNat

end

end A228752.P10093369882511433381

/-! ## A228752.P1936908862998060894

`A228754(Δ[A023545(n+2)]-1)`
-/

namespace A228752.P1936908862998060894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (f1 (n + 1) - f1 n - 1).toNat

end

end A228752.P1936908862998060894

/-!
# A228753: Number of nX7 binary arrays with top left element equal to 1 and no two ones adjacent horizontally or antidiagonally.

The programs for A228753, there is no canonical definition to state claims against.
-/

/-! ## A228753.P15085904472750569547

`A228754(A055999(n+4))`
-/

namespace A228753.P15085904472750569547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A055999 (n + 4)).toNat

end

end A228753.P15085904472750569547

/-! ## A228753.P9535959975448268926

`A228754(eq[6, A193592(n)])`
-/

namespace A228753.P9535959975448268926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228753.P9535959975448268926

/-! ## A228753.P7413895620244719949

`A228754(Δ[A023551(n+2)])`
-/

namespace A228753.P7413895620244719949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (f1 (n + 1) - f1 n).toNat

end

end A228753.P7413895620244719949

/-! ## A228753.P1140517996377680167

`A228754(∑[A020719(n)]+15)`
-/

namespace A228753.P1140517996377680167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (∑ j ∈ Finset.range (n + 1), f1 j + 15).toNat

end

end A228753.P1140517996377680167

/-! ## A228753.P9752697786915013565

`A228754(A000124(n+7)-7)`
-/

namespace A228753.P9752697786915013565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A000124 (n + 7) - 7).toNat

end

end A228753.P9752697786915013565

/-!
# A228755: Number of 3 X n binary arrays with top left element equal to 1 and no two ones adjacent horizontally or antidiagonally.

The programs for A228755, the canonical program `A228755.P10668043851392949698` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228755 has offset 1).

The definition of A228755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228755.P17782610379502656588

`ogf((4-x^2)/(1-2x-6x^2+x^4))`
-/

namespace A228755.P17782610379502656588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, -1] [1, -2, -6, 0, 1] n

end

end A228755.P17782610379502656588

namespace A228755

/-- `ogf((4-x^2)/(1-2x-6x^2+x^4))` -/
def P17782610379502656588.Spec : Prop :=
  ∀ n, P17782610379502656588.a n = A228755 (n + 1)

end A228755

/-! ## A228755.P10668043851392949698

`2*a(n-1)+6*a(n-2)-a(n-4)` with `a(0)=4, a(1)=8, a(2)=39, a(3)=126`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228755

/-- `2*a(n-1)+6*a(n-2)-a(n-4)` -/
def P10668043851392949698.Spec : Prop :=
  ∀ n, P10668043851392949698.a n = A228755 (n + 1)

theorem P10668043851392949698.correct : P10668043851392949698.Spec := by
  intro n
  simp only [A228755, Nat.add_sub_cancel]

end A228755

/-! ## A228755.P13800619095139361331

`A228754(∑[n+2]+4)`
-/

namespace A228755.P13800619095139361331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228755.P13800619095139361331

namespace A228755

/-- `A228754(∑[n+2]+4)` -/
def P13800619095139361331.Spec : Prop :=
  ∀ n, P13800619095139361331.a n = A228755 (n + 1)

end A228755

/-! ## A228755.P7996439573485078839

`A020639(gcd(n, n+1))*A228754(A167614(n+1))`
-/

namespace A228755.P7996439573485078839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd n (n + 1)) * A228754 (A167614 (n + 1)).toNat

end

end A228755.P7996439573485078839

namespace A228755

/-- `A020639(gcd(n, n+1))*A228754(A167614(n+1))` -/
def P7996439573485078839.Spec : Prop :=
  ∀ n, P7996439573485078839.a n = A228755 (n + 1)

end A228755

/-! ## A228755.P13655314456717830170

`∏{e}[A000040(n+1), #]*A228754(A167614(n+1))`
-/

namespace A228755.P13655314456717830170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A228754 (A167614 (n + 1)).toNat

end

end A228755.P13655314456717830170

namespace A228755

/-- `∏{e}[A000040(n+1), #]*A228754(A167614(n+1))` -/
def P13655314456717830170.Spec : Prop :=
  ∀ n, P13655314456717830170.a n = A228755 (n + 1)

end A228755

/-!
# A228756: Number of 4 X n binary arrays with top left element equal to 1 and no two ones adjacent horizontally or antidiagonally.

The programs for A228756, there is no canonical definition to state claims against.
-/

/-! ## A228756.P10779423210434966387

`A228754(A052905(n)+9)`
-/

namespace A228756.P10779423210434966387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A052905 n + 9).toNat

end

end A228756.P10779423210434966387

/-! ## A228756.P16278210225946253786

`A228754(A055999(n)+10)`
-/

namespace A228756.P16278210225946253786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A055999 n + 10).toNat

end

end A228756.P16278210225946253786

/-! ## A228756.P12848380201541943365

`A228754(A167614(n+2)+1)`
-/

namespace A228756.P12848380201541943365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A167614 (n + 2) + 1).toNat

end

end A228756.P12848380201541943365

/-! ## A228756.P13393297407026914683

`A228754(A166136(n+2)-2)`
-/

namespace A228756.P13393297407026914683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A166136 (n + 2) - 2).toNat

end

end A228756.P13393297407026914683

/-! ## A228756.P9274557069853727287

`A228754(A000217(n+3)+4)`
-/

namespace A228756.P9274557069853727287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A000217 (n + 3) + 4).toNat

end

end A228756.P9274557069853727287

/-!
# A228757: Number of 5Xn binary arrays with top left element equal to 1 and no two ones adjacent horizontally or antidiagonally.

The programs for A228757, there is no canonical definition to state claims against.
-/

/-! ## A228757.P4218556709577183192

`A228754(A167499(n+3))`
-/

namespace A228757.P4218556709577183192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A167499 (n + 3)).toNat

end

end A228757.P4218556709577183192

/-! ## A228757.P11613626489175043134

`A228754(A155212(n)+13)`
-/

namespace A228757.P11613626489175043134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A155212 n + 13).toNat

end

end A228757.P11613626489175043134

/-! ## A228757.P13962713339212597260

`A228754(A056000(n)+15)`
-/

namespace A228757.P13962713339212597260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A056000 n + 15).toNat

end

end A228757.P13962713339212597260

/-! ## A228757.P218000665916317386

`A228754(A000217(n+4)+5)`
-/

namespace A228757.P218000665916317386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A000217 (n + 4) + 5).toNat

end

end A228757.P218000665916317386

/-! ## A228757.P3936859890503757163

`A228754(eq[6, A131818(n+1)])`
-/

namespace A228757.P3936859890503757163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228757.P3936859890503757163

/-!
# A228758: Number of 6Xn binary arrays with top left element equal to 1 and no two ones adjacent horizontally or antidiagonally.

The programs for A228758, there is no canonical definition to state claims against.
-/

/-! ## A228758.P15164695680545982313

`A228754(A166136(n+4))`
-/

namespace A228758.P15164695680545982313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A166136 (n + 4)).toNat

end

end A228758.P15164695680545982313

/-! ## A228758.P15186694011459057391

`A228754(A167499(n+4)+1)`
-/

namespace A228758.P15186694011459057391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A167499 (n + 4) + 1).toNat

end

end A228758.P15186694011459057391

/-! ## A228758.P3000576209896297375

`A228754(A167614(n+4)+3)`
-/

namespace A228758.P3000576209896297375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A167614 (n + 4) + 3).toNat

end

end A228758.P3000576209896297375

/-! ## A228758.P4443584030483320647

`A228754(eq[7, A131818(n+1)])`
-/

namespace A228758.P4443584030483320647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228758.P4443584030483320647

/-! ## A228758.P11351180786834185442

`A228754(A000124(n+6)-(n+1))`
-/

namespace A228758.P11351180786834185442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A228758.P11351180786834185442

/-!
# A228759: Number of 7Xn binary arrays with top left element equal to 1 and no two ones adjacent horizontally or antidiagonally.

The programs for A228759, there is no canonical definition to state claims against.
-/

/-! ## A228759.P10592375189346732984

`A228754(A056119(n)+28)`
-/

namespace A228759.P10592375189346732984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A056119 n + 28).toNat

end

end A228759.P10592375189346732984

/-! ## A228759.P8364206970364805062

`A228754(eq[11, A066657(n)])`
-/

namespace A228759.P8364206970364805062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228759.P8364206970364805062

/-! ## A228759.P11940039637272479545

`A228754(A000124(n+6)+6)`
-/

namespace A228759.P11940039637272479545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (A000124 (n + 6) + 6).toNat

end

end A228759.P11940039637272479545

/-! ## A228759.P9914126855435986945

`A228754(eq[8, A131818(n+1)])`
-/

namespace A228759.P9914126855435986945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228759.P9914126855435986945

/-! ## A228759.P11765511818135512467

`A228754(eq[6, A144328(n+1)]+1)`
-/

namespace A228759.P11765511818135512467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A228759.P11765511818135512467

/-!
# A228763: a(n) = 2^L(n) - 1, where L(n) is the n-th Lucas number (A000032).

The programs for A228763, the canonical program `A228763.P13442148065278640899` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228763 has offset 0).

The definition of A228763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228763.P13442148065278640899

`a(n-1)+a(n-2)+a(n-1)*a(n-2)` with `a(0)=3, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228763

/-- `a(n-1)+a(n-2)+a(n-1)*a(n-2)` -/
def P13442148065278640899.Spec : Prop :=
  ∀ n, (P13442148065278640899.a n : ℤ) = A228763 n

theorem P13442148065278640899.correct : P13442148065278640899.Spec := by
  intro n
  simp only [A228763]

end A228763

/-! ## A228763.P5095214388455848810

`(a(n-1)+1)*(a(n-2)+1)-1` with `a(0)=3, a(1)=1`
-/

namespace A228763.P5095214388455848810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  (a (n - 1) + 1) * (a (n - 2) + 1) - 1

end

end A228763.P5095214388455848810

namespace A228763

/-- `(a(n-1)+1)*(a(n-2)+1)-1` -/
def P5095214388455848810.Spec : Prop :=
  ∀ n, P5095214388455848810.a n = A228763 n

end A228763

/-! ## A228763.P10230913829321001731

`a(n-1)+lcm(a(n-1)+1, a(n-2))` with `a(0)=3, a(1)=1`
-/

namespace A228763.P10230913829321001731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 1) + Nat.lcm (a (n - 1) + 1) (a (n - 2))

end

end A228763.P10230913829321001731

namespace A228763

/-- `a(n-1)+lcm(a(n-1)+1, a(n-2))` -/
def P10230913829321001731.Spec : Prop :=
  ∀ n, (P10230913829321001731.a n : ℤ) = A228763 n

end A228763

/-! ## A228763.P3375916596058264579

`A230900(n)-1`
-/

namespace A228763.P3375916596058264579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230900 n - 1

end

end A228763.P3375916596058264579

namespace A228763

/-- `A230900(n)-1` -/
def P3375916596058264579.Spec : Prop :=
  ∀ n, P3375916596058264579.a n = A228763 n

end A228763

/-! ## A228763.P12505237797774506523

`A228789(n)-2`
-/

namespace A228763.P12505237797774506523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228789 n - 2

end

end A228763.P12505237797774506523

namespace A228763

/-- `A228789(n)-2` -/
def P12505237797774506523.Spec : Prop :=
  ∀ n, P12505237797774506523.a n = A228763 n

end A228763

/-!
# A228765: The curvature of circles (rounded to nearest integer), successively inscribed toward the 45-degree angle of a 45-45-90 triangle, starting with a unit circle.

The programs for A228765, there is no canonical definition to state claims against.
-/

/-! ## A228765.P8204590201749061478

`record[A144159(n+1)]-A171063(n+1)`
-/

namespace A228765.P8204590201749061478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A171063 (n + 1)

end

end A228765.P8204590201749061478

/-! ## A228765.P4678410800554299304

`A106805(n)-A014082(A181300(n))`
-/

namespace A228765.P4678410800554299304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 n - A014082 (A181300 n).toNat

end

end A228765.P4678410800554299304

/-! ## A228765.P1511520024713089342

`xor(A106805(n), A185246(A037952(n)))`
-/

namespace A228765.P1511520024713089342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106805 n) (A185246 (A037952 n).toNat)

end

end A228765.P1511520024713089342

/-! ## A228765.P17033448767125425740

`xor(A106805(n), A121308(A306852(n)))`
-/

namespace A228765.P17033448767125425740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106805 n) (A121308 (A306852 n).toNat)

end

end A228765.P17033448767125425740

/-!
# A228767: Second bisection of the inverse binomial transform of the rational sequence with e.g.f. (x/2)*(exp(-x)+1)/(exp(x)-1).

The programs for A228767, the canonical program `A228767.P5907647666278753180` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228767 has offset 1).

The definition of A228767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228767.P5907647666278753180

`-(Δ[n²]+2^n*ceil(2^(n-1)*Δ[n²]))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228767

/-- `-(Δ[n²]+2^n*ceil(2^(n-1)*Δ[n²]))` -/
def P5907647666278753180.Spec : Prop :=
  ∀ n, P5907647666278753180.a n = A228767 (n + 1)

theorem P5907647666278753180.correct : P5907647666278753180.Spec := by
  intro n
  simp only [A228767, Nat.add_sub_cancel]

end A228767

/-! ## A228767.P13090103742284809419

`xor(-1, A081294(n))*Δ[n²]`
-/

namespace A228767.P13090103742284809419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (A081294 n) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A228767.P13090103742284809419

namespace A228767

/-- `xor(-1, A081294(n))*Δ[n²]` -/
def P13090103742284809419.Spec : Prop :=
  ∀ n, P13090103742284809419.a n = A228767 (n + 1)

end A228767

/-! ## A228767.P15790925824191992877

`(ceil(4^n/2)+1)*A038608(2*n+1)`
-/

namespace A228767.P15790925824191992877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(4 ^ n : ℚ) / 2⌉ + 1) * A038608 (2 * n + 1)

end

end A228767.P15790925824191992877

namespace A228767

/-- `(ceil(4^n/2)+1)*A038608(2*n+1)` -/
def P15790925824191992877.Spec : Prop :=
  ∀ n, P15790925824191992877.a n = A228767 (n + 1)

end A228767

/-! ## A228767.P15471572750917168782

`or(-A227978(2*n+1), A010121(n))`
-/

namespace A228767.P15471572750917168782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A227978 (2 * n + 1)) (A010121 n)

end

end A228767.P15471572750917168782

namespace A228767

/-- `or(-A227978(2*n+1), A010121(n))` -/
def P15471572750917168782.Spec : Prop :=
  ∀ n, P15471572750917168782.a n = A228767 (n + 1)

end A228767

/-! ## A228767.P17894425694929317958

`A176327(2*n+1)-A227978(2*n+1)`
-/

namespace A228767.P17894425694929317958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 (2 * n + 1) - A227978 (2 * n + 1)

end

end A228767.P17894425694929317958

namespace A228767

/-- `A176327(2*n+1)-A227978(2*n+1)` -/
def P17894425694929317958.Spec : Prop :=
  ∀ n, P17894425694929317958.a n = A228767 (n + 1)

end A228767

/-!
# A228768: Smallest number that is an emirp in all bases from 2 through n.

The programs for A228768, there is no canonical definition to state claims against.
-/

/-! ## A228768.P16485019334366728562

`p?[xor(A168459(n+1), A252983(n+1))]`
-/

namespace A228768.P16485019334366728562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A168459 (n + 1)) (A252983 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228768.P16485019334366728562

/-!
# A228769: The number of skew sum decomposable permutations which avoid the patterns 3124 and 4312.

The programs for A228769, there is no canonical definition to state claims against.
-/

/-! ## A228769.P14965903213408618228

`A165534(n+1)-A228771(n+1)`
-/

namespace A228769.P14965903213408618228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165534 (n + 1) - A228771 (n + 1)

end

end A228769.P14965903213408618228

/-! ## A228769.P9402077628436573192

`A226434(n+1)+A228770(n+1)-A228771(n+1)`
-/

namespace A228769.P9402077628436573192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226434 (n + 1) + (A228770 (n + 1) - A228771 (n + 1))

end

end A228769.P9402077628436573192

/-! ## A228769.P936119097338537547

`A008647(A255491(4^n))`
-/

namespace A228769.P936119097338537547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A255491 (4 ^ n)).toNat

end

end A228769.P936119097338537547

/-!
# A228770: The number of sum indecomposable permutations which avoid the patterns 3124 and 4312.

The programs for A228770, there is no canonical definition to state claims against.
-/

/-! ## A228770.P6879758209185369888

`A165534(n+1)-A226434(n+1)`
-/

namespace A228770.P6879758209185369888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165534 (n + 1) - A226434 (n + 1)

end

end A228770.P6879758209185369888

/-! ## A228770.P14636140422157708162

`A228769(n+1)+A228771(n+1)-A226434(n+1)`
-/

namespace A228770.P14636140422157708162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228769 (n + 1) + (A228771 (n + 1) - A226434 (n + 1))

end

end A228770.P14636140422157708162

/-! ## A228770.P11410970767320814270

`A008615(A180140(n)+1-n)`
-/

namespace A228770.P11410970767320814270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A180140 n + (1 - (n : ℤ))).toNat

end

end A228770.P11410970767320814270

/-!
# A228771: The number of skew sum indecomposable permutations which avoid the patterns 3124 and 4312.

The programs for A228771, there is no canonical definition to state claims against.
-/

/-! ## A228771.P11815956481503045504

`A165534(n+1)-A228769(n+1)`
-/

namespace A228771.P11815956481503045504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165534 (n + 1) - A228769 (n + 1)

end

end A228771.P11815956481503045504

/-! ## A228771.P12487895973724677839

`A226434(n+1)+A228770(n+1)-A228769(n+1)`
-/

namespace A228771.P12487895973724677839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226434 (n + 1) + (A228770 (n + 1) - A228769 (n + 1))

end

end A228771.P12487895973724677839

/-! ## A228771.P9476176074216553188

`A165534(n+1)-A008647(A255491(4^n))`
-/

namespace A228771.P9476176074216553188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165534 (n + 1) - A008647 (A255491 (4 ^ n)).toNat

end

end A228771.P9476176074216553188

/-!
# A228772: Number of undirected circular permutations i_0,i_1,...,i_{n-1} of 0,1,...,n-1 such that i_0+i_1+i_2, i_1+i_2+i_3, ..., i_{n-3}+i_{n-2}+i_{n-1}, i_{n-2}+i_{n-1}+i_0, i_{n-1}+i_0+i_1 are pairwise distinct modulo n.

The programs for A228772, there is no canonical definition to state claims against.
-/

/-! ## A228772.P1503036545858625471

`A147795(A000051(n))*A163359(n)`
-/

namespace A228772.P1503036545858625471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147795 (A000051 n).toNat * A163359 n

end

end A228772.P1503036545858625471

/-! ## A228772.P14917347776125537003

`A147795(A000079(n))*A163359(n)`
-/

namespace A228772.P14917347776125537003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147795 (A000079 n).toNat * A163359 n

end

end A228772.P14917347776125537003

/-!
# A228774: Numbers n such that the digits of n, once written in base 16, are only the hexadecimal digits A to F.

The programs for A228774, there is no canonical definition to state claims against.
-/

/-! ## A228774.P11997556188795780915

`A022483(A022510(A022486(n+1)))+n`
-/

namespace A228774.P11997556188795780915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022483 (A022510 (A022486 (n + 1)).toNat).toNat + (n : ℤ)

end

end A228774.P11997556188795780915

/-! ## A228774.P3304183762825943209

`A014543(A202842(n))+n+10`
-/

namespace A228774.P3304183762825943209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014543 (A202842 n).toNat + (n + 10 : ℤ)

end

end A228774.P3304183762825943209

/-! ## A228774.P16557088879307253849

`A167241(n+1)%A309039(n+1)+9`
-/

namespace A228774.P16557088879307253849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167241 (n + 1)) (A309039 (n + 1)) + 9

end

end A228774.P16557088879307253849

/-!
# A228775: a(n) is the maximal k>=1 such that nextprime(j*n)<=(j+1)*n, j=1,...,k.

The programs for A228775, there is no canonical definition to state claims against.
-/

/-! ## A228775.P5885390164586886028

`(A110835(n+1)-1)%(n²+5)`
-/

namespace A228775.P5885390164586886028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110835 (n + 1) - 1) (n ^ 2 + 5 : ℤ)

end

end A228775.P5885390164586886028

/-! ## A228775.P6023054947236597253

`A110835(n%a(n-1)+1)-1` with `a(0)=2`
-/

namespace A228775.P6023054947236597253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A110835 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat - 1

end

end A228775.P6023054947236597253

/-! ## A228775.P889370159028427611

`abs((A110835(n+1)-1)%A268581(n))`
-/

namespace A228775.P889370159028427611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A110835 (n + 1) - 1) (A268581 n)|

end

end A228775.P889370159028427611

/-! ## A228775.P9325651000300519612

`A110835(n+1)%(A063258(n)+1)-1`
-/

namespace A228775.P9325651000300519612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110835 (n + 1)) (A063258 n + 1) - 1

end

end A228775.P9325651000300519612

/-! ## A228775.P11690862695029359459

`abs(A110835(n+1)-1)%Δ[A174002(n)]`
-/

namespace A228775.P11690862695029359459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A110835 (n + 1) - 1| (f1 (n + 1) - f1 n)

end

end A228775.P11690862695029359459

/-! ## A228775.P10382577350565470326

`A110835(n+1)-A000400(floor(1/(n+1)))`
-/

namespace A228775.P10382577350565470326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110835 (n + 1) - A000400 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A228775.P10382577350565470326

/-! ## A228775.P15436020611803406057

`A110835(n+1)-A027276(floor(1/(n+1)))`
-/

namespace A228775.P15436020611803406057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110835 (n + 1) - A027276 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A228775.P15436020611803406057

/-! ## A228775.P8578316684832779623

`A110835(n+1)-A038255(floor(1/(n+1)))`
-/

namespace A228775.P8578316684832779623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110835 (n + 1) - A038255 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A228775.P8578316684832779623

/-! ## A228775.P15419074785559256006

`A110835(n+1)-A010137(A004273(n))`
-/

namespace A228775.P15419074785559256006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110835 (n + 1) - A010137 (A004273 n).toNat

end

end A228775.P15419074785559256006

/-! ## A228775.P4785698955699835601

`A110835(n+1)-A010137(A006257(n))`
-/

namespace A228775.P4785698955699835601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110835 (n + 1) - A010137 (A006257 n).toNat

end

end A228775.P4785698955699835601

/-!
# A228776: Positions of even terms of A050376.

The programs for A228776, there is no canonical definition to state claims against.
-/

/-! ## A228776.P14527499570997854031

`∑[A153450(n)]`
-/

namespace A228776.P14527499570997854031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228776.P14527499570997854031

/-! ## A228776.P15003488844503947131

`∑[A007053(2^n)]`
-/

namespace A228776.P15003488844503947131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228776.P15003488844503947131

/-! ## A228776.P3986258013837359947

`∑{d}[A000079(n), A007053(#)]`
-/

namespace A228776.P3986258013837359947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007053 d

end

end A228776.P3986258013837359947

/-!
# A228778: a(n) = 2^Fibonacci(n) + 1.

The programs for A228778, the canonical program `A228778.P331990380005633324` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228778 has offset 0).

The definition of A228778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228778.P331990380005633324

`A000301(n)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A228778

/-- `A000301(n)+1` -/
def P331990380005633324.Spec : Prop :=
  ∀ n, P331990380005633324.a n = A228778 n

theorem P331990380005633324.correct : P331990380005633324.Spec := by
  intro n
  simp only [A228778]

end A228778

/-! ## A228778.P8916537666784404744

`A063896(n)+2`
-/

namespace A228778.P8916537666784404744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063896 n + 2

end

end A228778.P8916537666784404744

namespace A228778

/-- `A063896(n)+2` -/
def P8916537666784404744.Spec : Prop :=
  ∀ n, P8916537666784404744.a n = A228778 n

end A228778

/-! ## A228778.P8073228964415944193

`2^round(ϕ^n/sqrt(5))+1`
-/

namespace A228778.P8073228964415944193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℤ) + 1

end

end A228778.P8073228964415944193

namespace A228778

/-- `2^round(ϕ^n/sqrt(5))+1` -/
def P8073228964415944193.Spec : Prop :=
  ∀ n, P8073228964415944193.a n = (A228778 n : ℚ)

end A228778

/-! ## A228778.P15343334011937147821

`Δ[∑[a(n-1)*a(n-2)]+n]` with `a(0)=2, a(1)=1`
-/

namespace A228778.P15343334011937147821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228778.P15343334011937147821

namespace A228778

/-- `Δ[∑[a(n-1)*a(n-2)]+n]` -/
def P15343334011937147821.Spec : Prop :=
  ∀ n, P15343334011937147821.a n = A228778 n

end A228778

/-! ## A228778.P6374130674615868149

`A000051(A000045(n))`
-/

namespace A228778.P6374130674615868149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A000045 n).toNat

end

end A228778.P6374130674615868149

namespace A228778

/-- `A000051(A000045(n))` -/
def P6374130674615868149.Spec : Prop :=
  ∀ n, P6374130674615868149.a n = A228778 n

end A228778

/-!
# A228779: A sequence related to Le Corbusier's Modulor: round(phi^(-13 + n)*183).

The programs for A228779, there is no canonical definition to state claims against.
-/

/-! ## A228779.P11654203377599106275

`A004526(A316868(n+9)+A293643(n+2))`
-/

namespace A228779.P11654203377599106275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A316868 (n + 9) + A293643 (n + 2)).toNat

end

end A228779.P11654203377599106275

/-! ## A228779.P15338973184994709850

`A002265(A293679(n)+A287356(3*(n+1)))`
-/

namespace A228779.P15338973184994709850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A293679 n + A287356 (3 * (n + 1))).toNat

end

end A228779.P15338973184994709850

/-! ## A228779.P6561814404281409342

`A059995(or(2, A036999(n)))`
-/

namespace A228779.P6561814404281409342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.lor 2 (A036999 n)).toNat

end

end A228779.P6561814404281409342

/-! ## A228779.P12746806372902588799

`A059995(A036999(n)+1)+char[8]`
-/

namespace A228779.P12746806372902588799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A036999 n + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A228779.P12746806372902588799

/-!
# A228789: a(n) = 2^L(n) + 1, where L(n) is A000032(n).

The programs for A228789, there is no canonical definition to state claims against.
-/

/-! ## A228789.P6913618142065959774

`A230900(n)+1`
-/

namespace A228789.P6913618142065959774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230900 n + 1

end

end A228789.P6913618142065959774

/-! ## A228789.P12267665383786290696

`A228763(n)+2`
-/

namespace A228789.P12267665383786290696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228763 n + 2

end

end A228789.P12267665383786290696

/-! ## A228789.P7271820198735945283

`2^A000032(n)+1`
-/

namespace A228789.P7271820198735945283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000032 n : ℤ) + 1

end

end A228789.P7271820198735945283

/-! ## A228789.P8241724949561641866

`or(1, 2^A000032(2*n-n))`
-/

namespace A228789.P8241724949561641866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000032 (2 * n - n) : ℤ)))

end

end A228789.P8241724949561641866

/-!
# A228790: Number of n X n binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228790, there is no canonical definition to state claims against.
-/

/-! ## A228790.P17961893839378034918

`A228796(∑[4*n]+1)`
-/

namespace A228790.P17961893839378034918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228790.P17961893839378034918

/-! ## A228790.P10055874022564725645

`record[A077606(n+1)*A228796(n+1)]`
-/

namespace A228790.P10055874022564725645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A228796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228790.P10055874022564725645

/-! ## A228790.P9072667350731709691

`gcd(A000038(n), A228796(A001844(n)))`
-/

namespace A228790.P9072667350731709691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A228796 (A001844 n).toNat)

end

end A228790.P9072667350731709691

/-! ## A228790.P10194533012821975352

`lcm(A000034(n), A228796(A001844(n)))`
-/

namespace A228790.P10194533012821975352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A228796 (A001844 n).toNat)

end

end A228790.P10194533012821975352

/-! ## A228790.P10024472343505504973

`or(A000007(n), A228796(A001844(n)))`
-/

namespace A228790.P10024472343505504973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A228796 (A001844 n).toNat)

end

end A228790.P10024472343505504973

/-!
# A228791: Number of n X 3 binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228791, the canonical program `A228791.P173227971381520964` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228791 has offset 1).

The definition of A228791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228791.P757585733937644159

`ogf((2-2x+2x^2)/(1-5x+3x^2))`
-/

namespace A228791.P757585733937644159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 2] [1, -5, 3] n

end

end A228791.P757585733937644159

namespace A228791

/-- `ogf((2-2x+2x^2)/(1-5x+3x^2))` -/
def P757585733937644159.Spec : Prop :=
  ∀ n, P757585733937644159.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P173227971381520964

`5*a(n-1)-3*a(n-2)` with `a(0)=2, a(1)=8, a(2)=36`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228791

/-- `5*a(n-1)-3*a(n-2)` -/
def P173227971381520964.Spec : Prop :=
  ∀ n, P173227971381520964.a n = A228791 (n + 1)

theorem P173227971381520964.correct : P173227971381520964.Spec := by
  intro n
  simp only [A228791, Nat.add_sub_cancel]

end A228791

/-! ## A228791.P252499542270870815

`A109114(n)+A095939(n)`
-/

namespace A228791.P252499542270870815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109114 n + A095939 n

end

end A228791.P252499542270870815

namespace A228791

/-- `A109114(n)+A095939(n)` -/
def P252499542270870815.Spec : Prop :=
  ∀ n, P252499542270870815.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P204694046567383599

`A040002(n)*A095939(n)`
-/

namespace A228791.P204694046567383599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n * A095939 n

end

end A228791.P204694046567383599

namespace A228791

/-- `A040002(n)*A095939(n)` -/
def P204694046567383599.Spec : Prop :=
  ∀ n, P204694046567383599.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P14237352946146806651

`(A122553(n)+1)*A095939(n)`
-/

namespace A228791.P14237352946146806651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122553 n + 1) * A095939 n

end

end A228791.P14237352946146806651

namespace A228791

/-- `(A122553(n)+1)*A095939(n)` -/
def P14237352946146806651.Spec : Prop :=
  ∀ n, P14237352946146806651.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P18070104134532435923

`2*(A116415(n)-A095940(n))`
-/

namespace A228791.P18070104134532435923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A116415 n - A095940 n)

end

end A228791.P18070104134532435923

namespace A228791

/-- `2*(A116415(n)-A095940(n))` -/
def P18070104134532435923.Spec : Prop :=
  ∀ n, P18070104134532435923.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P11211641593654546066

`2*(A095934(n)+∑[A095940(n)])`
-/

namespace A228791.P11211641593654546066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A095934 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228791.P11211641593654546066

namespace A228791

/-- `2*(A095934(n)+∑[A095940(n)])` -/
def P11211641593654546066.Spec : Prop :=
  ∀ n, P11211641593654546066.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P15292545115120959303

`2*(∑[A018902(n)]-A095940(n))`
-/

namespace A228791.P15292545115120959303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A095940 n)

end

end A228791.P15292545115120959303

namespace A228791

/-- `2*(∑[A018902(n)]-A095940(n))` -/
def P15292545115120959303.Spec : Prop :=
  ∀ n, P15292545115120959303.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P264723198479657615

`A000010(A049110(n+1))*A095939(n)`
-/

namespace A228791.P264723198479657615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A049110 (n + 1)).toNat * A095939 n

end

end A228791.P264723198479657615

namespace A228791

/-- `A000010(A049110(n+1))*A095939(n)` -/
def P264723198479657615.Spec : Prop :=
  ∀ n, P264723198479657615.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P18264690441729143703

`(A014963(A048883(n))+1)*A095939(n)`
-/

namespace A228791.P18264690441729143703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014963 (A048883 n).toNat + 1) * A095939 n

end

end A228791.P18264690441729143703

namespace A228791

/-- `(A014963(A048883(n))+1)*A095939(n)` -/
def P18264690441729143703.Spec : Prop :=
  ∀ n, P18264690441729143703.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P8263787941449827097

`(A038573(A035019(n))+1)*A095939(n)`
-/

namespace A228791.P8263787941449827097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 (A035019 n).toNat + 1) * A095939 n

end

end A228791.P8263787941449827097

namespace A228791

/-- `(A038573(A035019(n))+1)*A095939(n)` -/
def P8263787941449827097.Spec : Prop :=
  ∀ n, P8263787941449827097.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P7666083228570407135

`A074473(A002313(n+1))*A095939(n)`
-/

namespace A228791.P7666083228570407135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A002313 (n + 1)).toNat * A095939 n

end

end A228791.P7666083228570407135

namespace A228791

/-- `A074473(A002313(n+1))*A095939(n)` -/
def P7666083228570407135.Spec : Prop :=
  ∀ n, P7666083228570407135.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P5892763366862547715

`(A115716(A008586(n))+1)*A095939(n)`
-/

namespace A228791.P5892763366862547715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115716 (A008586 n).toNat + 1) * A095939 n

end

end A228791.P5892763366862547715

namespace A228791

/-- `(A115716(A008586(n))+1)*A095939(n)` -/
def P5892763366862547715.Spec : Prop :=
  ∀ n, P5892763366862547715.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P8666357503542866338

`A109114(n)+A109114(n)/A122553(n)`
-/

namespace A228791.P8666357503542866338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109114 n : ℚ) + (A109114 n : ℚ) / (A122553 n : ℚ)

end

end A228791.P8666357503542866338

namespace A228791

/-- `A109114(n)+A109114(n)/A122553(n)` -/
def P8666357503542866338.Spec : Prop :=
  ∀ n, P8666357503542866338.a n = (A228791 (n + 1) : ℚ)

end A228791

/-! ## A228791.P14393699605352563014

`A095939(n+1)+A095939(n)-A081704(n)`
-/

namespace A228791.P14393699605352563014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 (n + 1) + (A095939 n - A081704 n)

end

end A228791.P14393699605352563014

namespace A228791

/-- `A095939(n+1)+A095939(n)-A081704(n)` -/
def P14393699605352563014.Spec : Prop :=
  ∀ n, P14393699605352563014.a n = A228791 (n + 1)

end A228791

/-! ## A228791.P15410998154832918685

`A095934(n+1)+A095939(n)-A052961(n+1)`
-/

namespace A228791.P15410998154832918685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 (n + 1) + (A095939 n - A052961 (n + 1))

end

end A228791.P15410998154832918685

namespace A228791

/-- `A095934(n+1)+A095939(n)-A052961(n+1)` -/
def P15410998154832918685.Spec : Prop :=
  ∀ n, P15410998154832918685.a n = A228791 (n + 1)

end A228791

/-!
# A228792: Number of n X 4 binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228792, the canonical program `A228792.P17413621173783694293` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228792 has offset 1).

The definition of A228792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228792.P17413621173783694293

`8*a(n-1)-12*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=16, a(2)=97, a(3)=586`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228792

/-- `8*a(n-1)-12*a(n-2)+4*a(n-3)` -/
def P17413621173783694293.Spec : Prop :=
  ∀ n, P17413621173783694293.a n = A228792 (n + 1)

theorem P17413621173783694293.correct : P17413621173783694293.Spec := by
  intro n
  simp only [A228792, Nat.add_sub_cancel]

end A228792

/-! ## A228792.P7145031346219855669

`A228796(A055998(n+2))`
-/

namespace A228792.P7145031346219855669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A055998 (n + 2)).toNat

end

end A228792.P7145031346219855669

namespace A228792

/-- `A228796(A055998(n+2))` -/
def P7145031346219855669.Spec : Prop :=
  ∀ n, P7145031346219855669.a n = A228792 (n + 1)

end A228792

/-! ## A228792.P9183688834093922592

`A228796(A155212(n)+5)`
-/

namespace A228792.P9183688834093922592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A155212 n + 5).toNat

end

end A228792.P9183688834093922592

namespace A228792

/-- `A228796(A155212(n)+5)` -/
def P9183688834093922592.Spec : Prop :=
  ∀ n, P9183688834093922592.a n = A228792 (n + 1)

end A228792

/-! ## A228792.P14582447671475321848

`A228796(A056000(n)+7)`
-/

namespace A228792.P14582447671475321848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A056000 n + 7).toNat

end

end A228792.P14582447671475321848

namespace A228792

/-- `A228796(A056000(n)+7)` -/
def P14582447671475321848.Spec : Prop :=
  ∀ n, P14582447671475321848.a n = A228792 (n + 1)

end A228792

/-! ## A228792.P7180481682407688573

`A228796(Δ[A034857(n+1)])`
-/

namespace A228792.P7180481682407688573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (f1 (n + 1) - f1 n).toNat

end

end A228792.P7180481682407688573

namespace A228792

/-- `A228796(Δ[A034857(n+1)])` -/
def P7180481682407688573.Spec : Prop :=
  ∀ n, P7180481682407688573.a n = A228792 (n + 1)

end A228792

/-!
# A228793: Number of n X 5 binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228793, there is no canonical definition to state claims against.
-/

/-! ## A228793.P8353713020756875944

`A228796(Δ[A264443(n)])`
-/

namespace A228793.P8353713020756875944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (f1 (n + 1) - f1 n).toNat

end

end A228793.P8353713020756875944

/-! ## A228793.P3511718910287915880

`A228796(A046691(n+3))`
-/

namespace A228793.P3511718910287915880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A046691 (n + 3)).toNat

end

end A228793.P3511718910287915880

/-! ## A228793.P15223095581705098528

`A228796(eq[2, A092921(n)])`
-/

namespace A228793.P15223095581705098528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228793.P15223095581705098528

/-! ## A228793.P8121839461913274596

`A228796(eq[4, A193592(n)])`
-/

namespace A228793.P8121839461913274596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228793.P8121839461913274596

/-! ## A228793.P17574107176445263420

`A228796(Δ[A023545(n+1)])`
-/

namespace A228793.P17574107176445263420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (f1 (n + 1) - f1 n).toNat

end

end A228793.P17574107176445263420

/-!
# A228794: Number of n X 6 binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228794, there is no canonical definition to state claims against.
-/

/-! ## A228794.P5128064172671869241

`A228796(A052905(n+3))`
-/

namespace A228794.P5128064172671869241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A052905 (n + 3)).toNat

end

end A228794.P5128064172671869241

/-! ## A228794.P11893508670140663875

`A228796(eq[3, A219347(n)])`
-/

namespace A228794.P11893508670140663875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228794.P11893508670140663875

/-! ## A228794.P15126127250632389685

`A228796(eq[5, A193592(n)])`
-/

namespace A228794.P15126127250632389685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228794.P15126127250632389685

/-! ## A228794.P13636334563170655519

`A228796(eq[8, A243070(n+1)])`
-/

namespace A228794.P13636334563170655519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228794.P13636334563170655519

/-! ## A228794.P17511777016153023661

`A228796(Δ[Δ[A006504(n+1)]])`
-/

namespace A228794.P17511777016153023661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (f1 (n + 1) - f1 n).toNat

end

end A228794.P17511777016153023661

/-!
# A228795: Number of nX7 binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228795, there is no canonical definition to state claims against.
-/

/-! ## A228795.P1136337637248007986

`A228796(eq[4, A219347(n)])`
-/

namespace A228795.P1136337637248007986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228795.P1136337637248007986

/-! ## A228795.P10472431580847042179

`A228796(eq[6, A193592(n)])`
-/

namespace A228795.P10472431580847042179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228795.P10472431580847042179

/-! ## A228795.P1715816175405029847

`A228796(A000124(n+7)-7)`
-/

namespace A228795.P1715816175405029847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A000124 (n + 7) - 7).toNat

end

end A228795.P1715816175405029847

/-! ## A228795.P10314505830010264063

`A228796(eq[10, A185782(n+1)])`
-/

namespace A228795.P10314505830010264063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228795.P10314505830010264063

/-! ## A228795.P15532181240011813410

`A228796(eq[7, A200370(n+1)])`
-/

namespace A228795.P15532181240011813410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228795.P15532181240011813410

/-!
# A228797: Number of 2 X n binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228797, the canonical program `A228797.P7229525731169083612` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228797 has offset 1).

The definition of A228797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228797.P1882616359598831303

`ogf(-2/(-1+x+3x^2+x^3))`
-/

namespace A228797.P1882616359598831303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -1, -3, -1] n

end

end A228797.P1882616359598831303

namespace A228797

/-- `ogf(-2/(-1+x+3x^2+x^3))` -/
def P1882616359598831303.Spec : Prop :=
  ∀ n, P1882616359598831303.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P7229525731169083612

`a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228797

/-- `a(n-1)+3*a(n-2)+a(n-3)` -/
def P7229525731169083612.Spec : Prop :=
  ∀ n, (P7229525731169083612.a n : ℤ) = A228797 (n + 1)

theorem P7229525731169083612.correct : P7229525731169083612.Spec := by
  intro n
  simp only [A228797, Nat.add_sub_cancel]

end A228797

/-! ## A228797.P141901919060695939

`abs(2*A077921(n))`
-/

namespace A228797.P141901919060695939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A077921 n|

end

end A228797.P141901919060695939

namespace A228797

/-- `abs(2*A077921(n))` -/
def P141901919060695939.Spec : Prop :=
  ∀ n, P141901919060695939.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P12203735932269048576

`∑[2*A111954(n)]`
-/

namespace A228797.P12203735932269048576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228797.P12203735932269048576

namespace A228797

/-- `∑[2*A111954(n)]` -/
def P12203735932269048576.Spec : Prop :=
  ∀ n, P12203735932269048576.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P7040667694231614597

`2*Δ[A105635(n)]`
-/

namespace A228797.P7040667694231614597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A228797.P7040667694231614597

namespace A228797

/-- `2*Δ[A105635(n)]` -/
def P7040667694231614597.Spec : Prop :=
  ∀ n, P7040667694231614597.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P3539319481408647795

`2*A097076(n+1)`
-/

namespace A228797.P3539319481408647795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097076 (n + 1)

end

end A228797.P3539319481408647795

namespace A228797

/-- `2*A097076(n+1)` -/
def P3539319481408647795.Spec : Prop :=
  ∀ n, P3539319481408647795.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P12144175603615613611

`2*abs(∑[A077985(n)])`
-/

namespace A228797.P12144175603615613611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A228797.P12144175603615613611

namespace A228797

/-- `2*abs(∑[A077985(n)])` -/
def P12144175603615613611.Spec : Prop :=
  ∀ n, P12144175603615613611.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P267834595677150919

`∑[xor(2, Δ[A001333(n)])]`
-/

namespace A228797.P267834595677150919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228797.P267834595677150919

namespace A228797

/-- `∑[xor(2, Δ[A001333(n)])]` -/
def P267834595677150919.Spec : Prop :=
  ∀ n, P267834595677150919.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P17893634872594035019

`abs(1-A123335(n+1))`
-/

namespace A228797.P17893634872594035019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A123335 (n + 1)|

end

end A228797.P17893634872594035019

namespace A228797

/-- `abs(1-A123335(n+1))` -/
def P17893634872594035019.Spec : Prop :=
  ∀ n, P17893634872594035019.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P10115371120410073274

`∑[xor(2, A163271(n+1))]`
-/

namespace A228797.P10115371120410073274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A163271 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228797.P10115371120410073274

namespace A228797

/-- `∑[xor(2, A163271(n+1))]` -/
def P10115371120410073274.Spec : Prop :=
  ∀ n, P10115371120410073274.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P1116274743368137280

`∑[2*xor(1, A000129(n))]`
-/

namespace A228797.P1116274743368137280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor 1 (A000129 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228797.P1116274743368137280

namespace A228797

/-- `∑[2*xor(1, A000129(n))]` -/
def P1116274743368137280.Spec : Prop :=
  ∀ n, P1116274743368137280.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P14051564227652018164

`∑[abs(∑[2*A123335(n)])]`
-/

namespace A228797.P14051564227652018164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228797.P14051564227652018164

namespace A228797

/-- `∑[abs(∑[2*A123335(n)])]` -/
def P14051564227652018164.Spec : Prop :=
  ∀ n, P14051564227652018164.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P2382439254459254437

`∑[xor(2, Δ[2*A171842(n)])]`
-/

namespace A228797.P2382439254459254437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228797.P2382439254459254437

namespace A228797

/-- `∑[xor(2, Δ[2*A171842(n)])]` -/
def P2382439254459254437.Spec : Prop :=
  ∀ n, P2382439254459254437.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P18437362383958249736

`A002203(n)+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A228797.P18437362383958249736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A002203 n + a (n - 2)

end

end A228797.P18437362383958249736

namespace A228797

/-- `A002203(n)+a(n-2)` -/
def P18437362383958249736.Spec : Prop :=
  ∀ n, P18437362383958249736.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P13948503757866816339

`A099425(n)+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A228797.P13948503757866816339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A099425 n + a (n - 2)

end

end A228797.P13948503757866816339

namespace A228797

/-- `A099425(n)+a(n-2)` -/
def P13948503757866816339.Spec : Prop :=
  ∀ n, P13948503757866816339.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P16120039682246505379

`A001333(n+1)+(-1)^n`
-/

namespace A228797.P16120039682246505379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (-1) ^ n

end

end A228797.P16120039682246505379

namespace A228797

/-- `A001333(n+1)+(-1)^n` -/
def P16120039682246505379.Spec : Prop :=
  ∀ n, P16120039682246505379.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P3999613122722721318

`2*(A171842(n+1)-and(1, n))`
-/

namespace A228797.P3999613122722721318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A171842 (n + 1) - (Nat.land 1 n : ℤ))

end

end A228797.P3999613122722721318

namespace A228797

/-- `2*(A171842(n+1)-and(1, n))` -/
def P3999613122722721318.Spec : Prop :=
  ∀ n, P3999613122722721318.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P13946331307520513004

`2*(A111352(n)+a(n-1))` with `a(0)=2`
-/

namespace A228797.P13946331307520513004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A111352 n + a (n - 1))

end

end A228797.P13946331307520513004

namespace A228797

/-- `2*(A111352(n)+a(n-1))` -/
def P13946331307520513004.Spec : Prop :=
  ∀ n, P13946331307520513004.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P11761458634004691434

`A078057(n)+A033999(n)`
-/

namespace A228797.P11761458634004691434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + A033999 n

end

end A228797.P11761458634004691434

namespace A228797

/-- `A078057(n)+A033999(n)` -/
def P11761458634004691434.Spec : Prop :=
  ∀ n, P11761458634004691434.a n = A228797 (n + 1)

end A228797

/-! ## A228797.P851627504186748712

`A106515(n)+A008346(n)`
-/

namespace A228797.P851627504186748712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106515 n + A008346 n

end

end A228797.P851627504186748712

namespace A228797

/-- `A106515(n)+A008346(n)` -/
def P851627504186748712.Spec : Prop :=
  ∀ n, P851627504186748712.a n = A228797 (n + 1)

end A228797

/-!
# A228798: Number of 3 X n binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228798, the canonical program `A228798.P12092016422752340754` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228798 has offset 1).

The definition of A228798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228798.P12092016422752340754

`a(n-1)+8*a(n-2)+6*a(n-3)-a(n-4)-a(n-5)` with `a(0)=4, a(1)=5, a(2)=36, a(3)=97, a(4)=411`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228798

/-- `a(n-1)+8*a(n-2)+6*a(n-3)-a(n-4)-a(n-5)` -/
def P12092016422752340754.Spec : Prop :=
  ∀ n, P12092016422752340754.a n = A228798 (n + 1)

theorem P12092016422752340754.correct : P12092016422752340754.Spec := by
  intro n
  simp only [A228798, Nat.add_sub_cancel]

end A228798

/-! ## A228798.P4921310927456782553

`A228796(∑[n+2]+4)`
-/

namespace A228798.P4921310927456782553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228798.P4921310927456782553

namespace A228798

/-- `A228796(∑[n+2]+4)` -/
def P4921310927456782553.Spec : Prop :=
  ∀ n, P4921310927456782553.a n = A228798 (n + 1)

end A228798

/-! ## A228798.P12357825598024834791

`A228796(A167614(n+1))+A025444(n)`
-/

namespace A228798.P12357825598024834791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A167614 (n + 1)).toNat + A025444 n

end

end A228798.P12357825598024834791

namespace A228798

/-- `A228796(A167614(n+1))+A025444(n)` -/
def P12357825598024834791.Spec : Prop :=
  ∀ n, P12357825598024834791.a n = A228798 (n + 1)

end A228798

/-! ## A228798.P3963150947056341901

`A063435(n)*A228796(A167614(n+1))`
-/

namespace A228798.P3963150947056341901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A228796 (A167614 (n + 1)).toNat

end

end A228798.P3963150947056341901

namespace A228798

/-- `A063435(n)*A228796(A167614(n+1))` -/
def P3963150947056341901.Spec : Prop :=
  ∀ n, P3963150947056341901.a n = A228798 (n + 1)

end A228798

/-! ## A228798.P13390838734944024892

`lcm(A020985(n), A228796(A167614(n+1)))`
-/

namespace A228798.P13390838734944024892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A228796 (A167614 (n + 1)).toNat)

end

end A228798.P13390838734944024892

namespace A228798

/-- `lcm(A020985(n), A228796(A167614(n+1)))` -/
def P13390838734944024892.Spec : Prop :=
  ∀ n, (P13390838734944024892.a n : ℤ) = A228798 (n + 1)

end A228798

/-!
# A228799: Number of 4 X n binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228799, there is no canonical definition to state claims against.
-/

/-! ## A228799.P5572310732736149250

`A228796(A055999(n)+10)`
-/

namespace A228799.P5572310732736149250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A055999 n + 10).toNat

end

end A228799.P5572310732736149250

/-! ## A228799.P998300181942618041

`A228796(A167614(n+2)+1)`
-/

namespace A228799.P998300181942618041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A167614 (n + 2) + 1).toNat

end

end A228799.P998300181942618041

/-! ## A228799.P9438780247801174107

`A228796(A167499(n+2)-1)`
-/

namespace A228799.P9438780247801174107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A167499 (n + 2) - 1).toNat

end

end A228799.P9438780247801174107

/-! ## A228799.P6221882096950503022

`A228796(A000124(n+3)+3)`
-/

namespace A228799.P6221882096950503022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A000124 (n + 3) + 3).toNat

end

end A228799.P6221882096950503022

/-! ## A228799.P1858532384679816174

`A228796(A000217(n+3)+4)`
-/

namespace A228799.P1858532384679816174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A000217 (n + 3) + 4).toNat

end

end A228799.P1858532384679816174

